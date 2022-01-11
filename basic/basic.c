#define DEBUG 0

#include <stdio.h>
#include <sprintf.h>
#include <string.h>
#include <consts.h>
#include <graphics.h>
#include <files.h>
#include <keyboard.h>
#include <spi.h>
#include <fat.h>
#include <tcpip.h>
#include <kernel.h>
#include <math.h>

#define kVersion "v0.52"

// size of our program ram
#define kRamSize   64*1024 
// stack is at the address of 465563
char *program = (char *)350000;
char *buffer = (char *)197632;

unsigned char *program_start;
unsigned char *program_end;
int linenum;

unsigned char jump_buff[8];

unsigned char* txtpos;
char expression_error;
unsigned char *list_line, *tmptxtpos;
unsigned char *current_line;
char *stack_limit;
char *stack; // Software stack for things that should go on the CPU stack
unsigned char *variables_begin;
char *bsp;
char *tempsp;
char table_index;

char drive = 0;
int eth = 1;

#define STACK_GOSUB_FLAG 'G'
#define STACK_FOR_FLAG 'F'

typedef unsigned LINENUM;
typedef float VAR;
struct stack_for_frame {
	char frame_type;
	char for_var;
	VAR terminal;
	VAR step;
	char *current_line;
	char *txtpos;
};

struct stack_gosub_frame {
	char frame_type;
	char *current_line;
	char *txtpos;
};

VAR expression(void);
int direct();
void init_K_API();

#define STACK_SIZE (sizeof(struct stack_for_frame)*10)
#define VAR_SIZE sizeof(VAR) // Size of variables in bytes
#define CR	'\r'
#define NL	'\n'
#define LF      0x0a
#define TAB	'\t'
#define BELL	'\b'
#define SPACE   ' '
#define SQUOTE  '\''
#define DQUOTE  '\"'
#define CTRLC	0x03
#define CTRLH	0x08
#define CTRLS	0x13
#define CTRLX	0x18

// Keyword table and constants - the last character has 0x80 added to it
const char keywords[] = {
  'M','E','M'             ,0x01,			// MEM
  'B','Y','E'             ,0x01,			// BYE
  'E','X','I','T'         ,0x01,			// EXIT
  'P','R','I','N','T'     ,0x01,			// PRINT
  '?'					  ,0x01,			// ?
  'L','I','S','T'         ,0x01,  			// LIST
  'R','U','N'             ,0x01,			// RUN
  'N','E','W'             ,0x01,			// NEW
  'L','E','T'             ,0x01,			// LET
  'I','F'                 ,0x01,			// IF
  'G','O','T','O'         ,0x01,			// GOTO
  'F','O','R'             ,0x01,			// FOR
  'N','E','X','T'         ,0x01,			// NEXT
  'R','E','T','U','R','N' ,0x01,			// RETURN
  'G','O','S','U','B'     ,0x01,			// GOSUB
  'E','N','D'             ,0x01,			// END
  'S','T','O','P'         ,0x01,			// STOP
  'I','N','P','U','T'     ,0x01,			// INPUT
  'C','L','S'             ,0x01,			// CLS
  'E','D','I', 'T'        ,0x01,			// EDIT
  'L','O','A','D'         ,0x01,			// LOAD
  'S','A','V','E'         ,0x01,			// SAVE
  'D','I','R'			  ,0x01,			// DIR
  'M','O','D','E'	      ,0x01,			// MODE
  'P','L','O','T'		  ,0x01,			// PLOT
  'L','I','N','E'		  ,0x01,			// LINE
  'C','I','R','C','L','E' ,0x01,			// CIRCLE
  'D','R','A','W'		  ,0x01,			// DRAW
  'H','E','L','P'     	  ,0x01,			// HELP
  'D','E','L','A','Y'     ,0x01,			// DELAY
  'C','U','R','S','O','R' ,0x01,			// CURSOR
  'P','O','K','E'         ,0x01,			// POKE
  'E','X','E','C'	      ,0x01,			// EXEC
  'S','Y','S'			  ,0x01,			// SYS
  'D','R','I','V','E'	  ,0x01, 			// DRIVE
  'T','I','M','E'		  ,0x01,			// TIME
  'R','E','M'             ,0x01,			// REM
  '\''                    ,0x01,			// '
  'E','T','H'             ,0x01,			// ETH
  'C','O','L','O','R'     ,0x01,			// COLOR
  0
};
// by moving the command list to an enum, we can easily remove sections 
// above and below simultaneously to selectively obliterate functionality.
enum {
	KW_MEM = 0,
	KW_BYE,
	KW_EXIT,
	KW_PRINT,
	KW_QMARK,
	KW_LIST,
	KW_RUN,
	KW_NEW,
	KW_LET,
	KW_IF,
	KW_GOTO,
	KW_FOR,
	KW_NEXT,
	KW_RETURN,
	KW_GOSUB,
	KW_END,
	KW_STOP,
	KW_INPUT,
	KW_CLS,
	KW_EDIT,
	KW_LOAD,
	KW_SAVE,
	KW_DIR,
	KW_MODE,
	KW_PLOT,
	KW_LINE,
	KW_CIRCLE,
	KW_DRAW,
	KW_HELP,
	KW_DELAY,
	KW_CURSOR,
	KW_POKE,
	KW_EXEC,
	KW_SYS,
	KW_DRIVE,
	KW_TIME,
	KW_REM,
	KW_QUOTE,
	KW_ETH,
	KW_COLOR,
	KW_DEFAULT /* always the final one*/
};

const unsigned char func_tab[] = {
  'P','E','E','K'				, 0x01,
  'A','B','S'					, 0x01,
  'A','R','E','A','D'			, 0x01,
  'D','R','E','A','D'			, 0x01,
  'R','N','D'					, 0x01,
  'K','E','Y'			     	, 0x01,
  'I','S','K','E','Y'   		, 0x01,
  'S','I','N' 			   		, 0x01,
  'C','O','S' 			   		, 0x01,
  'T','A','N' 			   		, 0x01,
  'E','X','P' 			   		, 0x01,
  'L','O','G' 			   		, 0x01,
  'S','Q','R','T' 		   		, 0x01,
  'P','O','W'	 		   		, 0x01,
  'P','I'		 		   		, 0x01,
  'E','X'		 		   		, 0x01,
  'A','T','A','N' 		   		, 0x01,
  'A','S','I','N' 		   		, 0x01,
  'A','C','O','S' 		   		, 0x01,
  0
};
#define FUNC_PEEK    0
#define FUNC_ABS     1
#define FUNC_AREAD   2
#define FUNC_DREAD   3
#define FUNC_RND     4
#define FUNC_KEY     5
#define FUNC_ISKEY	 6
#define FUNC_SIN	 7
#define FUNC_COS	 8
#define FUNC_TAN	 9
#define FUNC_EXP	 10
#define FUNC_LOG	 11
#define FUNC_SQRT	 12
#define FUNC_POW	 13
#define CONST_PI	 14
#define CONST_E		 15
#define FUNC_ATAN	 16
#define FUNC_ASIN	 17
#define FUNC_ACOS	 18
#define FUNC_UNKNOWN 20

const char to_tab[] = {
  'T','O', 0x01,
  0
};

const char step_tab[] = {
  'S','T','E','P', 0x01,
  0
};

const char relop_tab[] = {
  '>','='			,0x01,
  '<','>'			,0x01,
  '>'				,0x01,
  '='				,0x01,
  '<','='			,0x01,
  '<'				,0x01,
  '!','='			,0x01,
  'A','N','D' 		,0x01,
  'O','R'		  	,0x01,
  0
};

#define RELOP_GE		0
#define RELOP_NE		1
#define RELOP_GT		2
#define RELOP_EQ		3
#define RELOP_LE		4
#define RELOP_LT		5
#define RELOP_NE_BANG	6
#define RELOP_AND		7
#define RELOP_OR		8
#define RELOP_UNKNOWN	9


void getln(int prompt)
{
	int l;
	txtpos = program_end + sizeof(LINENUM);

	txtpos[0] = 0;

	put_char(prompt);
	gets(txtpos);

	l = strlen(txtpos);
	if (l % 2 == 0)
		strcat(txtpos, " ");

	strcat(txtpos, "\n");
}

void toUppercaseBuffer()
{
	char *c = txtpos;
	char quote = 0;

	while (*c != NL)
	{
		// Are we in a quoted string?
		if (*c == quote)
			quote = 0;
		else if (*c == '"' || *c == '\'')
			quote = *c;
		else if (quote == 0 && *c >= 'a' && *c <= 'z')
			*c = *c + 'A' - 'a';
		c++;
	}
}

void ignore_blanks()
{
	while (*txtpos == SPACE || *txtpos == TAB)
		txtpos++;
}

void skip_to_end()
{
	txtpos = program_end + sizeof(LINENUM);

	// Find the end of the freshly entered line
	while (*txtpos != NL)
		txtpos++;

	// Move it to the end of program_memory
	{
		unsigned char *dest;
		dest = variables_begin - 1;
		while (1)
		{
			*dest = *txtpos;
			if (txtpos == program_end + sizeof(LINENUM))
				break;
			dest--;
			txtpos--;
		}
		txtpos = dest;
	}
}

unsigned char *findline(void)
{
	unsigned char *line = program_start;
	while (1)
	{
		if (line == program_end)
			return line;

		if (((LINENUM *)line)[0] >= linenum)
			return line;

		// Add the line length onto the current address, to get to the next line;
		line += line[sizeof(LINENUM)];
	}
}

void printline()
{
	LINENUM line_num;

	line_num = *((LINENUM *)(list_line));
	list_line += sizeof(LINENUM) + sizeof(char);

	// Output the line */
	printf("%d ", line_num);
	while (*list_line != NL)
	{
		put_char(*list_line);
		list_line++;
	}
	list_line++;
	printf("\n");
}

VAR testnum()
{
	VAR num = 0;
	ignore_blanks(txtpos);

	while (*txtpos >= '0' && *txtpos <= '9')
	{
		// Trap overflows
		if (num >= 0xFFFFFFFF / 10)
		{
			num = 0xFFFFFFFF;
			break;
		}

		num = num * 10 + *txtpos - '0';
		txtpos++;
	}
	return	num;
}

void entered_with_line_num()
{
	unsigned char linelen;
	unsigned char *start;
	char *newEnd;
	int i, l, first_time;
	char k;
	char s[10];

	// Find the length of what is left, including the (yet-to-be-populated) line header
	linelen = 0;
	while (txtpos[linelen] != NL)
		linelen++;
	linelen++; // Include the NL in the line length
	linelen += sizeof(LINENUM) + sizeof(char); // Add space for the line number and line length

	// Now we have the number, add the line header.
	txtpos -= sizeof(LINENUM) + sizeof(char);
	
	// ugly odd address hack
	l = (int)txtpos;
	if (l % 2 == 1)
	{
		txtpos--;
		txtpos[sizeof(LINENUM) + sizeof(char)] = ' ';
		linelen++;
	}

	*((LINENUM *)txtpos) = linenum;
	txtpos[sizeof(LINENUM)] = linelen;


	// Merge it into the rest of the program
	start = findline();

	// If a line with that number exists, then remove it
	if (start != program_end && *((LINENUM *)start) == linenum)
	{
		unsigned char *dest, *from;
		unsigned tomove;

		from = start + start[sizeof(LINENUM)];
		dest = start;

		tomove = program_end - from;
		while (tomove > 0)
		{
			*dest = *from;
			from++;
			dest++;
			tomove--;
		}
		program_end = dest;
	}

	if (txtpos[sizeof(LINENUM) + sizeof(char)] == NL)
	{
		// If the line has no txt, it was just a delete
		return;
	}

	
	first_time = 1; // odd address hack
	// Make room for the new line, either all in one hit or lots of little shuffles
	while (linelen > 0)
	{
		unsigned int tomove;
		unsigned char *from, *dest;
		unsigned int space_to_make;

		space_to_make = txtpos - program_end;

		if (space_to_make > linelen)
			space_to_make = linelen;
		newEnd = program_end + space_to_make;
		tomove = program_end - start;


		// Source and destination - as these areas may overlap we need to move bottom up
		from = program_end;
		dest = newEnd;
		while (tomove > 0)
		{
			from--;
			dest--;
			*dest = *from;
			tomove--;
		}

		l = 0;
		if(first_time && (txtpos[sizeof(LINENUM) + sizeof(char)] == ' '))
		{
			// Ugly hack for the odd length, which is initially fixed by adding space at the
			// beginning of the line (just after the line number).
			// We need to move that space to the end of the line.
			k = txtpos[sizeof(LINENUM)];
			k -= sizeof(LINENUM) + sizeof(char); // actual length of line
			for (l = 0; l < k; l++)
			{
				txtpos[sizeof(LINENUM) + sizeof(char) + l] = txtpos[sizeof(LINENUM) + sizeof(char) + l + 1];
			}
			txtpos[k + sizeof(LINENUM) + sizeof(char) - 2] = 32;
			txtpos[k + sizeof(LINENUM) + sizeof(char) - 1] = NL;
		}

			
		// Copy over the bytes into the new space
		for (tomove = 0; tomove < space_to_make; tomove++)
		{
			*start = *txtpos;
				
			//printf("%d: %c (%d), ", tomove, *start, *start);
			txtpos++;
			start++;
			linelen--;
		}
		program_end = newEnd;
		first_time = 0;  // odd address hack
	}

}

void qhow()
{
	printf("how?\n");
}

void qwhat()
{
	printf("what?\n");
}

void qsorry()
{
	printf("sorry!\n");
}

void exec_mem() 
{
	printf("TinyBasic %s\n", kVersion);
	printf("%d bytes free\n", variables_begin - program_end);
}

void scantable(const char *table)
{
	int i = 0;
	table_index = 0;
	while (1)
	{
		// Run out of table entries?
		if (*table == 0)
		{
			return;
		}

		// Do we match this character?
		if (txtpos[i] == *table)
		{
#if DEBUG == 1
			printf("scantable: char at %d is %c, table_index is: %d\n", i, txtpos[i], table_index);
#endif
			i++;
			table++;
		}
		else
		{
			// do we match the last character of keyword (with 0x80 added)? If so, return
			if (*table == 0x01)
			{
				txtpos += i;  // Advance the pointer to following the keyword
				ignore_blanks(txtpos);
				return;
			}

			// Forward to the end of this keyword
			while (*table != 0x01)
			{
				table++;
			}

			// Now move on to the first character of the next word, and reset the position index
			table++;
			table_index++;
			ignore_blanks(txtpos);
			i = 0;
		}
	}
}


char print_quoted_string()
{
	int i = 0;
	char delim = *txtpos;
	if (delim != '"' && delim != '\'')
		return 0;
	txtpos++;

	// Check we have a closing delimiter
	while (txtpos[i] != delim)
	{
		if (txtpos[i] == NL)
			return 0;
		i++;
	}

	// Print the characters
	while (*txtpos != delim)
	{
		put_char(*txtpos);
		txtpos++;
	}
	txtpos++; // Skip over the last delimiter

	return 1;
}

int check_no_arg_func() 
{
	ignore_blanks();
	if (*txtpos != '(')
		return 1;
	txtpos++;
	ignore_blanks();
	if (*txtpos != ')')
		return 1;
	txtpos++;
	return 0;
}

VAR expr4(void)
{
	unsigned char f = table_index;
	// fix provided by Jurg Wullschleger wullschleger@gmail.com
	// fixes whitespace and unary operations
	ignore_blanks();

#if DEBUG == 1
	printf("expr4: txtpos: %s\n", txtpos);
#endif

	if (*txtpos == '-') {
		txtpos++;
		return -expr4();
	}
	// end fix

/*
	if (*txtpos == '0')
	{
		txtpos++;
		return 0;
	}
*/
	if (*txtpos >= '0' && *txtpos <= '9')
	{
		VAR a = 0;
		int decimals = 0;
		float dec = 0.1f;
		do {
			if (*txtpos == '.') 
			{
				decimals = 1;
			} 
			else 
			{
				if (decimals)
				{
					a = a + dec * (*txtpos - '0');
					dec = dec * 0.1f;
				} 
				else
					a = a * 10 + (*txtpos - '0');
			}
			txtpos++;
		} while ((*txtpos >= '0' && *txtpos <= '9') || (*txtpos == '.'));
#if DEBUG == 1
		printf("expr4, found value, and it is: %d\n", a);
#endif
		return a;
	}

#if DEBUG == 1
	printf("expr4, first char: %c\n", txtpos[0]);
#endif
	// Is it a function or variable reference?
	if (txtpos[0] >= 'A' && txtpos[0] <= 'Z')
	{
		VAR val;
		// Is it a variable reference (single alpha)
		if (txtpos[1] < 'A' || txtpos[1] > 'Z')
		{
			// val = (VAR *)variables_begin + *txtpos - 'A';
#if DEBUG == 1
			printf("expr4, var_begin: %d\n", variables_begin);
#endif
			val = ((VAR *)variables_begin)[*txtpos - 'A'];
			txtpos++;
			return val;
		}

		// Is it a function with no parameters, or with a single parameter, or constants
		scantable(func_tab);

#if DEBUG == 1
printf("expr4: table_index is: %d\n", table_index);
#endif

		if (table_index == FUNC_UNKNOWN)
			goto expr4_error;
		// functions with no parameters, or consts
		switch(table_index)
		{
		case FUNC_KEY:
			if (check_no_arg_func())
				goto expr4_error;
			return getc();
		case FUNC_ISKEY:
			if (check_no_arg_func())
				goto expr4_error;
			return is_key_pressed();
		case CONST_PI:
			return M_PI;
		case CONST_E:
			return M_E;
		}
		
		f = table_index;

		if (*txtpos != '(')
			goto expr4_error;

		txtpos++;
		expression_error = 0;
		val = expression();
		if (expression_error)
			goto expr4_error;

		ignore_blanks();
#if DEBUG == 2		
		printf("expr4: val is: %f\n", val);
		printf("expr4: txtpos is: %s\n", txtpos);
#endif
		VAR val2 = 0;
		if (*txtpos != ')')
		{
			if (*txtpos == ',') 
			{
				txtpos++;
				expression_error = 0;
				val2 = expression();
				if (expression_error)
					goto expr4_error;
			} else
				goto expr4_error;
		}

		txtpos++;

		switch (f)
		{
			case FUNC_PEEK:
				return buffer[(int)val];
			case FUNC_ABS:
				if (val < 0)
					return -val;
				return val;
			case FUNC_RND:
				return(rand() % (int)val);
			case FUNC_SIN:
				return(sinf(val));
			case FUNC_COS:
				return(cosf(val));
			case FUNC_TAN:
				return(tanf(val));
			case FUNC_EXP:
				return(expf(val));
			case FUNC_LOG:
				return(logf(val));
			case FUNC_SQRT:
				return(sqrtf(val));
			case FUNC_POW:
				return(powf(val, val2));
			case FUNC_ATAN:
				return(atanf(val));
			case FUNC_ASIN:
				return(asinf(val));
			case FUNC_ACOS:
				return(acosf(val));
		}
	}

	if (*txtpos == '(')
	{
		VAR a;
		txtpos++;
		a = expression();
		if (*txtpos != ')')
			goto expr4_error;

		txtpos++;
		return a;
	}

expr4_error:
	expression_error = 1;
	return 0;

}

/***************************************************************************/
VAR expr3(void)
{
	VAR a, b;

	a = expr4();

	ignore_blanks(); // fix for eg:  100 a = a + 1

	while (1)
	{
		if (*txtpos == '*')
		{
			txtpos++;
			b = expr4();
			a *= b;
		}
		else if (*txtpos == '/')
		{
			txtpos++;
			b = expr4();
			if (b != 0)
				a /= b;
			else
				expression_error = 1;
		}
		else if (*txtpos == '%')
		{
			txtpos++;
			b = expr4();
			if (b != 0)
			{
				int x = (int)a % (int)b;
				a = x;
			} else
				expression_error = 1;
		}
		else
			return a;
	}
}

/***************************************************************************/
VAR expr2(void)
{
	VAR a, b;

	if (*txtpos == '-' || *txtpos == '+')
		a = 0;
	else
		a = expr3();

	while (1)
	{
		if (*txtpos == '-')
		{
			txtpos++;
			b = expr3();
			a -= b;
		}
		else if (*txtpos == '+')
		{
			txtpos++;
			b = expr3();
			a += b;
		}
		else
			return a;
	}
}
/***************************************************************************/

VAR expression(void)
{
	VAR a, b;

	a = expr2();

#if DEBUG == 1
	printf("expression: found value is: %d, and expression_error is: %d\n", a, expression_error);
#endif

	// Check if we have an error
	if (expression_error)	return a;

	scantable(relop_tab);

#if DEBUG == 1
	printf("expression: table_index: %d\n", table_index);
#endif

	if (table_index == RELOP_UNKNOWN)
		return a;

	switch (table_index)
	{
	case RELOP_GE:
		b = expr2();
		if (a >= b) return 1;
		break;
	case RELOP_NE:
	case RELOP_NE_BANG:
		b = expr2();
		if (a != b) return 1;
		break;
	case RELOP_GT:
		b = expr2();
		if (a > b) return 1;
		break;
	case RELOP_EQ:
		b = expr2();
		if (a == b) return 1;
		break;
	case RELOP_LE:
		b = expr2();
		if (a <= b) return 1;
		break;
	case RELOP_LT:
		b = expr2();
		if (a < b) return 1;
		break;
	case RELOP_AND:
		b = expr2();
		if (a && b) return 1;
		break;
	case RELOP_OR:
		b = expr2();
		if (a || b) return 1;
		break;
	}
	return 0;
}
/***************************************************************************/
void assignment()
{
	VAR value;
	VAR *var;

	if (*txtpos < 'A' || *txtpos > 'Z')
	{
		qhow();
		return;
	}
#if DEBUG == 1
	printf("assignment, var_begin: %d\n", variables_begin);
#endif	
	var = (VAR *)variables_begin + *txtpos - 'A';

#if DEBUG == 1
	printf("assignment, current var value is %d\n", *var);
#endif

	txtpos++;

	ignore_blanks();

	if (*txtpos != '=')
	{
		qwhat();
		return;
	}
	txtpos++;
	ignore_blanks();
	expression_error = 0;
	value = expression();
	ignore_blanks();

#if DEBUG == 1
	printf("assignment, var value is %d, and expression_error is: %d\n", value, expression_error);
	printf("assignment, txtpos is: %s\n", txtpos);
#endif

	if (expression_error)
	{
		qwhat();
		return;
	}
	// Check that we are at the end of the statement
	if (*txtpos != NL && *txtpos != ':')
	{
		qwhat();
		return;
	}
	*var = value;

#if DEBUG == 1
	printf("assignment, returning var value is %d\n", *var);
#endif

}

void exec_print()
{
	if (*txtpos == NL)
	{
		return;
	}

	while (1)
	{
		ignore_blanks(txtpos);
		if (print_quoted_string())
		{
			ignore_blanks(txtpos);
		}
		else if (*txtpos == '"' || *txtpos == '\'')
		{
			qwhat();
			return;
		}
		else
		{
			VAR e;
			expression_error = 0;
			e = expression();
			if (expression_error)
			{
				qwhat();
				return;
			}
			printf("%f", roundf(e*10000.0f) / 10000.0f);
		}

		// At this point we have three options, a comma or a new line
		if (*txtpos == ',')
			txtpos++;	// Skip the comma and move onto the next
		else if (txtpos[0] == ';' && (txtpos[1] == NL || txtpos[1] == ':' || txtpos[1] == ' '))
		{
			txtpos++; // This has to be the end of the print - no newline
			break;
		}
		else if (*txtpos == NL || *txtpos == ':')
		{
			printf("\n");	// The end of the print statement
			break;
		}
		else
		{
			qwhat();
			return;
		}
	}
}

void exec_list()
{
	int i, j;
	
	linenum = testnum(); // Retuns 0 if no line found.

	// Should be EOL
	if (txtpos[0] != NL)
	{
		qwhat();
		return;
	}

	// Find the line
	list_line = findline();
	i = 0;
	while (list_line < program_end)
	{
		printline();
		i++;
		if (i == 29)
		{
			j = getc();
			i = 0;
			if (j == VK_ESC)
				break;
		}
	}
}

void exec_run()
{
	int res;

	while (current_line < program_end) // Out of lines to run
	{
		txtpos = current_line + sizeof(LINENUM) + sizeof(char);

		do {
			res = direct();
			if (res == 1)
				return;
			ignore_blanks();
			if (*txtpos == NL || *txtpos != ':')
				break;
			txtpos++;
			ignore_blanks();
		} while (1);

		if (res < 2)
			current_line += current_line[sizeof(LINENUM)];

#if DEBUG == 1		
		printf("current_line: %d\n", current_line);
#endif
	}
}

void exec_if()
{
	VAR condition;
	int res;

	expression_error = 0;
	condition = expression();
	if (expression_error || *txtpos == NL)
	{
		qhow();
		return;
	}
	if (condition != 0)
	{
		do {
			res = direct();
			if (res == 1)
				return;
			if (res == 2)
			{
				txtpos = current_line + sizeof(LINENUM) + sizeof(char);
				continue;
			}
			ignore_blanks();
			if (*txtpos == NL || *txtpos != ':')
				break;
			txtpos++;
			ignore_blanks();
		} while (1);
	}
	return;
}

void exec_for()
{
	unsigned char var;
	VAR initial, terminal;
	VAR step;
	ignore_blanks();
	if (*txtpos < 'A' || *txtpos > 'Z')
	{
		qwhat();
		return;
	}
	var = *txtpos;
	txtpos++;
	ignore_blanks();
	if (*txtpos != '=')
	{
		qwhat();
		return;
	}
	txtpos++;
	ignore_blanks();

	expression_error = 0;
	initial = expression();
	if (expression_error)
	{
		qwhat();
		return;
	}

	scantable(to_tab);
	if (table_index != 0)
	{
		qwhat();
		return;
	}

	terminal = expression();
	if (expression_error)
	{
		qwhat();
		return;
	}

	scantable(step_tab);
	if (table_index == 0)
	{
		step = expression();
		if (expression_error)
		{
			qwhat();
			return;
		}
	}
	else
		step = 1;

	ignore_blanks();
	if (*txtpos != NL && *txtpos != ':')
	{
		qwhat();
		return;
	}

	if (!expression_error && ((*txtpos == NL) || (*txtpos == ':')))
	{
		struct stack_for_frame *f;
		if (bsp + sizeof(struct stack_for_frame) < stack_limit)
		{
			qsorry();
			return;
		}

		bsp -= sizeof(struct stack_for_frame);
		f = (struct stack_for_frame *)bsp;
		((VAR *)variables_begin)[var - 'A'] = initial;
		f->frame_type = STACK_FOR_FLAG;
		f->for_var = var;
		f->terminal = terminal;
		f->step = step;
		f->txtpos = txtpos;
		f->current_line = current_line;

#if DEBUG == 3
		printf("inside for: bsp: %d\n", bsp);
#endif

		return;
	}
	qhow();
}

int exec_return()
{
	int i;
	char var;
#if DEBUG == 3
	printf("inside return: bsp: %d, limit: %d\n", bsp, program + kRamSize - 1);
#endif
	// Now walk up the stack frames and find the frame we want, if present
	tempsp = bsp;
	while (tempsp < program + kRamSize - 1)
	{

#if DEBUG == 3
		printf("return: tempsp: %d\n", tempsp[0]);
#endif
		switch (tempsp[0])
		{
		case STACK_GOSUB_FLAG:
			if (table_index == KW_RETURN)
			{
				struct stack_gosub_frame *f = (struct stack_gosub_frame *)tempsp;
				current_line = f->current_line;
				txtpos = f->txtpos;
				bsp += sizeof(struct stack_gosub_frame);
				return 0;
			}
			// This is not the loop you are looking for... so Walk back up the stack
			tempsp += sizeof(struct stack_gosub_frame);
			break;
		case STACK_FOR_FLAG:
			// Flag, Var, Final, Step
			if (table_index == KW_NEXT)
			{
				struct stack_for_frame *f = (struct stack_for_frame *)tempsp;
				// Is the the variable we are looking for?
				var = txtpos[-1];
				i = -2;
				while (var == ' ') 
				{
					var = txtpos[i];
					i--;
				}
				if (var == f->for_var)
				{
					VAR *varaddr = ((VAR *)variables_begin) + var - 'A';
					*varaddr = *varaddr + f->step;
					// Use a different test depending on the sign of the step increment
					if ((f->step > 0 && *varaddr <= f->terminal) || (f->step < 0 && *varaddr >= f->terminal))
					{
						// We have to loop so don't pop the stack
						txtpos = f->txtpos;
						current_line = f->current_line;
						return 0;
					}
					// We've run to the end of the loop. drop out of the loop, popping the stack
					bsp = tempsp + sizeof(struct stack_for_frame);
					return 0;
				}
			}
			// This is not the loop you are looking for... so Walk back up the stack
			tempsp += sizeof(struct stack_for_frame);
			break;
		default:
			printf("Stack is stuffed!\n");
			return 1;
		}
	}
	// Didn't find the variable we've been looking for
	qhow();
	return 1;
}

void exec_next()
{
	// Find the variable name
	ignore_blanks();
#if DEBUG == 3
	printf("next: txtpos: %c\n", *txtpos);
#endif
	if (*txtpos < 'A' || *txtpos > 'Z')
	{
#if DEBUG == 3
		printf("ERROR in next, txtpos is %c\n", *txtpos);
#endif
		qhow();
		return;
	}
	txtpos++;
	ignore_blanks();
	if (*txtpos != ':' && *txtpos != NL)
	{
		qwhat();
	}
	exec_return();
}

void exec_gosub()
{
	expression_error = 0;
	linenum = expression();
	if (!expression_error && *txtpos == NL)
	{
		struct stack_gosub_frame *f;
		if (bsp + sizeof(struct stack_gosub_frame) < stack_limit)
		{
			qsorry();
			return;
		}

		bsp -= sizeof(struct stack_gosub_frame);
		f = (struct stack_gosub_frame *)bsp;
		f->frame_type = STACK_GOSUB_FLAG;
		f->txtpos = txtpos;
		f->current_line = current_line;
		current_line = findline();
		exec_run();
		return;
	}
	qhow();

}

void exec_input()
{
	unsigned char var;
	VAR value;
	
	ignore_blanks();

	if (*txtpos < 'A' || *txtpos > 'Z')
	{
		qwhat();
		return;
	}
	
	var = *txtpos;
	txtpos++;
	ignore_blanks();

	if (*txtpos != NL && *txtpos != ':')
	{
		qwhat();
		return;
	}

	while (1)
	{
		tmptxtpos = txtpos;
		getln('?');
		toUppercaseBuffer();
		txtpos = program_end + sizeof(VAR);
		ignore_blanks();
		expression_error = 0;
		value = expression();
		if (!expression_error)
			break;
	}
	((VAR *)variables_begin)[var - 'A'] = value;
	txtpos = tmptxtpos;
}

int exec_edit()
{
	unsigned char *line;
	int i;
	int j;

	ignore_blanks();
	expression_error = 0;
	linenum = expression();
	if (expression_error)
	{
		qhow();
		return 0;
	}
	line = findline();
	if (line == program_end)
	{
		qhow();
		return 0;
	}
	
	txtpos = program_end + sizeof(LINENUM);
	txtpos[0] = 0;
	sprintf(txtpos, "%d ", linenum);
	j = strlen(txtpos);
	for (i = sizeof(VAR) + 1; i < line[sizeof(VAR)] - 1; i++)
	{
		//outchar(line[i] + 0xFF00);
		txtpos[j++] = line[i];
	}
	txtpos[j] = 0;
	put_char('#');
	gets(txtpos);

	i = strlen(txtpos);
	if (i % 2 == 0)
		strcat(txtpos, " ");

	strcat(txtpos, "\n");
	
	return 3;
}

int to_print_len;
uint8_t to_print_buff[4500];

// called when the client request is complete
void my_callback (uint8_t status, uint16_t off, uint16_t len) {
	memcpy(to_print_buff, eth_buffer+off, len);
	to_print_len = len;
	//printf("len: %d\n", len);
} 

int eth_read_file(char *buffer, char *file_name)
{
	int len = 0;
	int init_offset = 0;
	int size = 1000000;
	int fail_count = 0;
	printf("Loading file %s from the ethernet network drive\n", file_name);
	to_print_len = 0;
	asm ("irq 0\n"); // IRQ 0000, xxx0 <- turn off timer irq
	browseUrl("/load:", file_name, server_ip, 0, my_callback);
//	delay(100);
	while (len < size) {
		mainLoop(eth_buffer);
		//printf("<%d>[%d] %d %d %d %d\n", to_print_off, to_print_len, eth_buffer[to_print_off], eth_buffer[to_print_off + 1], eth_buffer[to_print_off + 2], eth_buffer[to_print_off + 3]);
		if (to_print_len > 0) {
			if (size == 1000000) {
				size = to_print_buff[3];
				size <<= 8;
				size |= to_print_buff[2];
				size <<= 8;
				size |= to_print_buff[1];
				size <<= 8;
				size |= to_print_buff[0];
				init_offset = 4;
				if (size == 0) {
					printf("File %s does not exist\n", file_name);
					break;
				}
				printf("size: %d\n", size);
			} else {
				init_offset = 0;
			}
			printf("#");
			fail_count = 0;
			to_print_buff[to_print_len] = 0;
			memcpy(buffer + len, to_print_buff + init_offset, to_print_len);
			len += to_print_len - init_offset;
			//printf("to_print_len: %d, len: %d\n", to_print_len ,len);
			to_print_len = 0;
		} else {
			//printf("@");
			delay(10);
			fail_count++;
			if (fail_count > 256) {
				printf("ETHERNET TIMEOUT\n");
				len = 0;
				break;
			}
		}
		//delay(100);
	}
	asm ("irq 1\n"); // IRQ 0000, xxx1 <- turn on timer irq
	return len;
}

short int *TIMER_HANDLER_INSTR 	= (short int *)8	; // address of the IRQ#0 handler address first instruction (TIMER handler)
int *TIMER_HANDLER_ADDR			= (int *)10	; // address of the IRQ#0 handler address (TIMER handler)
unsigned short int *PORT_TIMER 	= (unsigned short int *)(0x80000000 + 1290)	; // port which is used to set the timer timeout (in milliseconds)

void timer_irq_triggered() {
	asm ("irq 0\n"); // IRQ 0000, xxx0 <- turn off timer irq
asm(
	"push r0\npush r1\npush r2\npush r3\npush r4\npush r5\npush r6\npush r7\npush r8\npush r9\npush r10\npush r11\npush r12\npush r13\n"
);
	// prepare stack
	// params for functions invoked within this irq handler will run over the stack, so we put dummy data on the stack
	// for each param, you need to put one 32-bit value on the stack, with the initial one anyway
	asm("push r13\npush r13\n");

	if (eth)
		mainLoop(eth_buffer);

	// restore the stack before returning
	asm("pop r13\npop r13\n");
	//asm ("irq 1\n"); // IRQ 0000, xxx1 <- turn on timer irq
	// restore all registers
	asm 
	(
		"pop r13\npop r12\npop r11\npop r10\npop r9\npop r8\npop r7\npop r6\npop r5\npop r4\npop r3\npop r2\npop r1\npop r0\nmov.w sp,r13\npop r13\nirq 1\niret\n"
	);
}

void de_init_timer() {
	*TIMER_HANDLER_INSTR 	= 0;
	*TIMER_HANDLER_ADDR 	= 0;
	*PORT_TIMER = 0;
}

void init_timer()
{
	*TIMER_HANDLER_INSTR 	= 1;
	*TIMER_HANDLER_ADDR 	= (int)&timer_irq_triggered;
	*PORT_TIMER = 50;
}

void exec_load()
{
	char s[32];
	int i, j, k, l;
	
	ignore_blanks();
	if (*txtpos < 'A' || *txtpos > 'Z')
	{
		qwhat();
		return;
	}	
	
	//printf("address of txtpos: %d\n", txtpos);
	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB && i < 32; i++)
	{
		//printf("txtpos: %d ", txtpos[i]);
		s[i] = txtpos[i];
	}
	s[i] = 0;

	printf("Loading file: <%s>\n", s);
	if (drive == 2) {
		// DRIVE 2 - UART
		//asm ("irq 0\n"); // IRQ 0000, xxx0 <- turn off timer irq
		delay(100);
		i = uart_read_file(buffer, s);
		//asm ("irq 1\n");  // IRQ 0000, xxx1 <- turn on timer irq
	} else if (drive == 0)
	{
		// DRIVE 0 - SD card
		file_descriptor_t fd;
load_load_again:		
		if(file_open(s, &fd, O_READ))
		{
			int len = fd.dir_entry.filesize;
			int total = 0;
			int current;
			while(total < len)
			{	
				current = file_read(&fd, &buffer[total], 512);
				if (current > 0) {
					total += current;
					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
						printf("#");
				} else {
					printf("Error reading file!\n");
					return;
				}
			}

			buffer[len] = 0;
			i = len;

			// perform the checksum check
			char fileName[20];
			strcpy(fileName, s);
			int sum = 0;
			for (int j = 0; j < i; j++) {
				sum += buffer[j];
			}
			printf("\nSum: %d\n", sum);
		} else 
		{
			printf("SD card file open failed\n");
			return;
		}
	} else 
	{
		// DRIVE 1 - ethernet network drive
		i = eth_read_file(buffer, s);
	}
	
	if (i > 0)
	{
		printf("File size: %d\n", i);
		if (strstr(s, ".BIN") != (char *)0) 
		{
			printf("Loaded executable file. Run it using: SYS 0\n");
			return;
		} else if (strstr(s, ".BAS") == (char *)0) 
		{
			printf("Loaded successfuly at address 0 (reachable by PEEK and POKE).\n");
			return;
		}
		program_end = program_start;
		k = 0;
		for (j = 0; j <= i; j++)
		{
			if (buffer[j] == CR)
			{
				buffer[j] = NL;
			}
			if (buffer[j] == NL || buffer[j] == 0)
			{
				txtpos = program_end + sizeof(LINENUM);
				strncpy(txtpos, &buffer[k], j);
				txtpos[j - k] = NL;
				txtpos[j - k + 1] = 0;
				k = j + 1;
				l = strlen(txtpos);
				if (l % 2 == 0)
					strcat(txtpos, " ");
				toUppercaseBuffer();
				skip_to_end();
				linenum = testnum();
				if (linenum > 0)
				{
					//printf("[%s]", txtpos);
					//printf("linija: %d\n", linenum);
					ignore_blanks();
					entered_with_line_num();
				}
			}
		}
		printf("OK loading file %s\n", s);
	} 
	else 
	{
		printf("Error loading file %s\n", s);
	}
}

int sprintline(int i)
{
	LINENUM line_num;
	char s[10];

	line_num = *((LINENUM *)(list_line));
	list_line += sizeof(LINENUM) + sizeof(char);

	// Output the line */
	sprintf(s, "%d ", line_num);
	strcpy(&buffer[i], s);
	i += strlen(s);
	while (*list_line != NL)
	{
		buffer[i] = *list_line;
		list_line++;
		i++;
	}
	list_line++;
	buffer[i] = NL;
	i++;
	
	return i;
}

int sd_write_file(char *buff, int len, char *file_name)
{	
	file_descriptor_t fd;
	printf("\nSaving to SD card...\n");
	int res = file_open(file_name, &fd, O_WRITE);
	if (res)
	{
		int i, curr, total = 0, count = len /512 + 1;
		for (i = 0; i < count; i++)
		{
			curr = file_write(&fd, &buff[total], len > 512 ? 512 : len);
			if (curr > 0) {
				len -= curr;
				total += curr;
			}
			else 
				break;
			printf("#");
			//printf("curr: %d, len: %d, total: %d\n", curr, len, total);
		}
		printf("\n");
	} 
	else 
	{
		printf("Could not open file for save.\n");
	}
	return 1;	
}

int eth_write_file(char *buff, int len, char *file_name)
{	
	printf("Saving file %s of %d bytes to the ethernet network drive\n", file_name, len);
}

void exec_save()
{
	char s[32];
	int i, j, k, l;

	ignore_blanks();
	if (*txtpos < 'A' || *txtpos > 'Z')
	{
		qwhat();
		return;
	}	
	
	int spi = 0;
	for (i = 0; txtpos[i] != NL && txtpos[i] != SPACE && txtpos[i] != TAB; i++)
	{
		s[i] = txtpos[i];
	}
	s[i] = 0;
	printf("Filename: <%s>\n", s);

// Find the line
	list_line = findline();
	i = 0;
	while (list_line < program_end)
	{
		i = sprintline(i);
	}
	if (drive == 0) {
		// DRIVE 0 - SD card
		sd_write_file(buffer, i, s);
	} else if (drive == 2) {
		// DRIVE 2 - UART
		uart_write_file(buffer, i, s);
	} else 
	{
		// DRIVE 1 - ethernet network drive
		eth_write_file(buffer, i, s);
	}
	printf("OK saving file %s, length: %d\n", s, i);
}

void exec_dir()
{
	int i;

	if (drive == 2)
	{
		// DRIVE 2 - UART
		uart_ls_files(buffer);
		printf("%s\n", buffer);
	}
	else if (drive == 0)
	{
		// DRIVE 0 - SD card
		file_descriptor_t fd;
		int next = 0;
		while ((next = getDirEntry(&fd, next)) != 0)
		{
			printf("%s %d bytes, cluster: %d (%d)\n", fd.dir_entry.filename, fd.dir_entry.filesize, fd.curr_cluster, fd.dir_entry.first_cluster);
		}
	} else 
	{
		// DRIVE 1 - ETHERNET NETWORK DRIVE
		to_print_len = 0;
		browseUrl("/dir", "", server_ip, 0, my_callback);
		delay(100);
		for (i = 0; i < 1000; i++) {
			//packetLoop(enc28j60PacketReceive(4500, eth_buffer));
			//printf("<%d>[%d] %d %d %d %d\n", to_print_off, to_print_len, eth_buffer[to_print_off], eth_buffer[to_print_off + 1], eth_buffer[to_print_off + 2], eth_buffer[to_print_off + 3]);
			if (to_print_len > 0) {
				to_print_buff[to_print_len] = 0;
				printf("%s\n", to_print_buff);
				to_print_len = 0;
				return;
			} else 
			  delay(10);
		}
		printf("NETWORK TIMEOUT\n");
	}
}

void exec_mode()
{
	VAR value;
	
	ignore_blanks();
	expression_error = 0;
	value = expression();	
	if (expression_error)
	{
		qwhat();
		return;
	}
	
	switch ((int)value)
	{
		case 0:
			video_mode(0);
			//current_video_mode = 0;
			break;
		case 1:
			video_mode(1);
			//current_video_mode = 1;
			break;
		case 2:
			video_mode(2);
			//current_video_mode = 2;
			break;
		default:
			video_mode(0);
			//current_video_mode = 0;
			printf("Invalid video mode: %d\n", value);
	}
}

void exec_plot()
{
	VAR x, y, c;
	
	ignore_blanks();
	expression_error = 0;
	x = expression();	
	if (expression_error)
	{
		qwhat();
		return;
	}
	ignore_blanks();
	if (*txtpos != ',')
	{
		qwhat();
		return;
	}
	else 
	{
		txtpos++;
	}
	ignore_blanks();
	expression_error = 0;
	y = expression();	
	if (expression_error)
	{
		qwhat();
		return;
	}
	ignore_blanks();
	if (*txtpos != ',')
	{
		qwhat();
		return;
	}
	else 
	{
		txtpos++;
	}
	ignore_blanks();
	expression_error = 0;
	c = expression();	
	if (expression_error)
	{
		qwhat();
		return;
	}
	
	pixel((int)x, (int)y, (int)c);
}

void exec_line()
{
	VAR x1, y1, x2, y2, c;
	
	ignore_blanks();
	expression_error = 0;
	x1 = expression();	
	if (expression_error)
	{
		qwhat();
		return;
	}
	ignore_blanks();
	if (*txtpos != ',')
	{
		qwhat();
		return;
	}
	else 
	{
		txtpos++;
	}
	ignore_blanks();
	expression_error = 0;
	y1 = expression();	
	if (expression_error)
	{
		qwhat();
		return;
	}
	
	ignore_blanks();
	if (*txtpos != ',')
	{
		qwhat();
		return;
	}
	else 
	{
		txtpos++;
	}
	ignore_blanks();
	expression_error = 0;
	x2 = expression();	
	if (expression_error)
	{
		qwhat();
		return;
	}
	ignore_blanks();
	if (*txtpos != ',')
	{
		qwhat();
		return;
	}
	else 
	{
		txtpos++;
	}
	ignore_blanks();
	expression_error = 0;
	y2 = expression();	
	if (expression_error)
	{
		qwhat();
		return;
	}
	ignore_blanks();
	if (*txtpos != ',')
	{
		qwhat();
		return;
	}
	else 
	{
		txtpos++;
	}
		
	ignore_blanks();
	expression_error = 0;
	c = expression();	
	if (expression_error)
	{
		qwhat();
		return;
	}

	line((int)x1, (int)y1, (int)x2, (int)y2, (int)c);
}

void exec_circle()
{
	VAR x, y, r, c;
	int i;
	
	ignore_blanks();
	expression_error = 0;
	x = expression();	
	if (expression_error)
	{
		qwhat();
		return;
	}
	ignore_blanks();
	if (*txtpos != ',')
	{
		qwhat();
		return;
	}
	else 
	{
		txtpos++;
	}
	ignore_blanks();
	expression_error = 0;
	y = expression();	
	if (expression_error)
	{
		qwhat();
		return;
	}
	ignore_blanks();
	if (*txtpos != ',')
	{
		qwhat();
		return;
	}
	else 
	{
		txtpos++;
	}
	ignore_blanks();
	expression_error = 0;
	r = expression();	
	if (expression_error)
	{
		qwhat();
		return;
	}
	ignore_blanks();
	if (*txtpos != ',')
	{
		qwhat();
		return;
	}
	else 
	{
		txtpos++;
	}
	ignore_blanks();
	expression_error = 0;
	c = expression();	
	if (expression_error)
	{
		qwhat();
		return;
	}
	
	circle((int)x, (int)y, (int)r, (int)c);
}

void exec_draw()
{
	VAR x, y, c;
	int i;
	char s[100];
	
	ignore_blanks();
	expression_error = 0;
	x = expression();	
	if (expression_error)
	{
		qwhat();
		return;
	}
	ignore_blanks();
	if (*txtpos != ',')
	{
		qwhat();
		return;
	}
	else 
	{
		txtpos++;
	}
	ignore_blanks();
	expression_error = 0;
	y = expression();	
	if (expression_error)
	{
		qwhat();
		return;
	}
	ignore_blanks();
	if (*txtpos != ',')
	{
		qwhat();
		return;
	}
	else 
	{
		txtpos++;
	}
	ignore_blanks();
	expression_error = 0;
	c = expression();	
	if (expression_error)
	{
		qwhat();
		return;
	}
	ignore_blanks();
	if (*txtpos != ',')
	{
		qwhat();
		return;
	}
	else 
	{
		txtpos++;
	}
	ignore_blanks();
	if (*txtpos != '"' && *txtpos != '\'')
	{
		qwhat();
		return;
	}
	txtpos++;
	i = 0;
	while (*txtpos != NL && *txtpos != 0)
	{
		if (*txtpos == '"' || *txtpos == '\'')
		{
			s[i] = 0;
			break;
		}
		s[i] = *txtpos;
		i++;
		txtpos++;
	}
	draw((int)x, (int)y, (int)c, s);
}

void exec_help()
{
	printf("END\n");
	printf("MEM\n");
	printf("LET I = 5\n");
	printf("I = 5\n");
	printf("INPUT A\n");
	printf("PRINT A\n");
	printf("? A\n");
	printf("FOR I = 1 TO 10 STEP 2\n");
	printf("NEXT I\n");
	printf("IF I = 5 GOTO 100\n");
	printf("GOTO 100\n");
	printf("GOSUB 100\n");
	printf("RETURN\n");
	printf("LOAD P1.BAS\n");
	printf("SAVE P2.BAS\n");
	printf("MODE 0 (MODE 1, MODE 2)\n");
	printf("PLOT 100, 100, color\n");
	printf("LINE 100, 100, 200, 200, color\n");
	printf("CIRCLE 100, 100, 50, color\n");
	printf("DRAW 100, 100, color, 'TEXT'\n");
	printf("A = KEY()\n");
	printf("A = ISKEY()\n");
	printf("DELAY 1000\n");
	printf("CURSOR 10, 10\n");
	printf("EXEC TEST.BIN\n");
	printf("SYS 0\n");
	printf("DRIVE 0 (SD) or DRIVE 1 (ETHERNET) or DRIVE 2 (UART)\n");
	printf("TIME\n");
	printf("ETH 1 or ETH 0\n");
}

void exec_delay()
{
	VAR d;
	
	ignore_blanks();
	expression_error = 0;
	d = expression();	
	if (expression_error)
	{
		qwhat();
		return;
	}
	delay((int)d);
}

void exec_cursor()
{
	VAR x, y;
	
	ignore_blanks();
	expression_error = 0;
	x = expression();	
	if (expression_error)
	{
		qwhat();
		return;
	}
	ignore_blanks();
	if (*txtpos != ',')
	{
		qwhat();
		return;
	}
	else 
	{
		txtpos++;
	}
	ignore_blanks();
	expression_error = 0;
	y = expression();	
	if (expression_error)
	{
		qwhat();
		return;
	}
	
	xy((int)x, (int)y);
}

void exec_poke()
{
	VAR addr, value;
	
	ignore_blanks();
	expression_error = 0;
	addr = expression();	
	if (expression_error)
	{
		qwhat();
		return;
	}
	ignore_blanks();
	if (*txtpos != ',')
	{
		qwhat();
		return;
	}
	else 
	{
		txtpos++;
	}
	ignore_blanks();
	expression_error = 0;
	value = expression();	
	if (expression_error)
	{
		qwhat();
		return;
	}
	
	buffer[(int)addr] = (int)value & 0XFF;
}

void init_sd()
{
	if(!sdcard_init())
	{
		printf("SD card init failed!\n");
	}
	if (!volume_init(1))
	{
		printf("SD card volume failed!\n");
	}
}

void exec_exec()
{
	char s[32];
	int i;
	
	ignore_blanks();
	if (*txtpos < 'A' || *txtpos > 'Z')
	{
		qwhat();
		return;
	}	
	
	//printf("address of txtpos: %d\n", txtpos);
	for (i = 0; txtpos[i] != NL && txtpos[i] != CR && txtpos[i] != SPACE && txtpos[i] != TAB &&  i < 32; i++)
	{
		//printf("txtpos: %d ", txtpos[i]);
		s[i] = txtpos[i];
	}
	s[i] = 0;

	i = 0;
	printf("Loading program: [%s]\n", s);
	if (drive == 0)
	{
		// DRIVE 0 - SD card
		file_descriptor_t fd;
load_again:		
		if(file_open(s, &fd, O_READ))
		{
			int len = fd.dir_entry.filesize;
			int total = 0;
			int current;
			while(total < len)
			{	
				current = file_read(&fd, &buffer[total], 512);
				if (current > 0) {
					total += current;
					if ((total / fd.dir_entry.filesize * 100) % 10 == 0)
						printf("#");
				}
				else {
					printf("Error reading file!\n");
					return;
				}
			}

			buffer[len] = 0;
			i = len;

			// perform the checksum check
			char fileName[20];
			strcpy(fileName, s);
			int sum = 0;
			for (int j = 0; j < i; j++) {
				sum += buffer[j];
			}
			printf("\nSum: %d\n", sum);
		} 
		else 
		{
			printf("File open failed for file: [%s]\n", s);
			return;
		}
	}
	else if (drive == 2)
	{
		// DRIVE 2 - UART
		//asm ("irq\t0\n"); // IRQ 0000, xxx0 <- turn off timer irq
		delay(100);
		i = uart_read_file(buffer, s);
		//asm ("irq\t1\n"); // IRQ 0000, xxx0 <- turn on timer irq
	} else {
		// DRIVE 1 - ethernet network drive
		i = eth_read_file(buffer, s);
	}
	if (i > 0) 
	{

		int old_color = color;
		asm("mov.w r0, 197632\ncallr r0\n"); //asm("call 197632\n");
		init_stdio();
		video_mode(0);
		color = old_color;
		//cls(color);
		//current_video_mode = 0;
		uart_init_files();
		if (eth)
		{
			init_spi();
			init_tcpip();
			init_sd();
		}
	} 
	else 
	{
		printf("Error loading program %s\n", s);
	}
}

void exec_sys()
{
	int addr;
	char s[32];
	
	ignore_blanks();
	expression_error = 0;
	addr = (int)expression();	
	if (expression_error)
	{
		qwhat();
		return;
	}
	printf("call %d\n", addr);
	addr += 197632;
	int old_color = color;
	asm("ld.w r0, [r13 + (-4)]\ncallr r0\n");
	init_stdio();
	video_mode(0);
	color = old_color;
	//cls(color);
	//current_video_mode = 0;
	uart_init_files();
	if (eth)
	{
		init_spi();
		init_tcpip();
		init_sd();
	}
}

void exec_drive()
{
	ignore_blanks();
	if (*txtpos == NL)
	{
		printf("DRIVE: %d\n", drive);
		return;
	}
	if (*txtpos < '0' || *txtpos > '9')
	{
		qwhat();
		return;
	}	
	drive = *txtpos - '0';
	if (drive >= 0 && drive <= 2)
		printf("DRIVE: %d\n", drive);
	else
	{
		printf("Invalid drive number: %d. Can be from 0 to 2.\n", drive);
	}
	
}

void exec_eth()
{
	ignore_blanks();
	if (*txtpos == NL)
	{
		printf("ETHERNET: %d\n", eth);
		return;
	}
	if (*txtpos < '0' || *txtpos > '9')
	{
		qwhat();
		return;
	}	
	eth = *txtpos - '0';
	if (eth >= 0 && eth <= 1) 
	{
		printf("ETHERNET: %d\n", eth);
		// #######################################################################################
		if (eth == 1) 
		{
			asm ("irq 1\n"); // IRQ 0000, xxx1 <- turn ON timer irq
			init_tcpip();
		}
		else 
		{
			asm ("irq 0\n"); // IRQ 0000, xxx0 <- turn OFF timer irq
		}
		// #######################################################################################

	} 
	else
	{
		printf("Invalid ethernet value: %d. Can be 0 or 1.\n", eth);
	}
}

void exec_color() 
{
	char s[32];
	
	ignore_blanks();
	if (*txtpos == NL)
	{
		printf("COLOR: %d\n", color);
		return;
	}
	expression_error = 0;
	int c = (int)expression();	
	if (expression_error)
	{
		qwhat();
		return;
	}
	color = c;
	//printf("COLOR SET TO: %d\n", color);
}

// #################################################################################################################################################
int direct()
{
#if DEBUG == 1
	printf("Vratio: %s", txtpos);
#endif
	if (*txtpos == NL)
		return 0;

	scantable(keywords);

#if DEBUG == 1
	printf("interpreter: table_index is: %d\n", table_index);
#endif
	
	if (should_break())
	{
		return 0;
	}

	switch (table_index)
	{
	case KW_MEM:
	{
		exec_mem();
		return 0;
	}
	case KW_BYE:
	case KW_EXIT:
		printf("I cannot exit. I am the boss.\n");
		break;
	case KW_PRINT:
	case KW_QMARK:
		exec_print();
		break;
	case KW_LIST:
		exec_list();
		break;
	case KW_RUN:
		current_line = program_start;
		exec_run();
		break;
	case KW_NEW:
		program_end = program_start;
		break;
	case KW_LET:
		assignment();
		break;
	case KW_IF:
		exec_if();
		break;
	case KW_GOTO:
		expression_error = 0;
		linenum = expression();
		if (expression_error || *txtpos != NL)
			qhow();
		current_line = findline();
		return 2;
	case KW_FOR:
		exec_for();
		break;
	case KW_NEXT:
		exec_next();
		break;
	case KW_GOSUB:
		exec_gosub();
		break;
	case KW_RETURN:
		if (!exec_return())
			return 1;
		break;
	case KW_END:
	case KW_STOP:
		// This is the easy way to end - set the current line to the end of program attempt to run it
		if (txtpos[0] != NL)
		{
			qwhat();
		}
		else
			current_line = program_end;
		break;
	case KW_INPUT:
		exec_input();
		break;
	case KW_CLS:
		cls(color);
		break;
	case KW_EDIT:
		return exec_edit();
	case KW_LOAD:
		exec_load();
		break;
	case KW_SAVE:
		exec_save();
		break;
	case KW_DIR:
		exec_dir();
		break;
	case KW_MODE:
		exec_mode();
		break;
	case KW_PLOT:
		exec_plot();
		break;
	case KW_LINE:
		exec_line();
		break;
	case KW_CIRCLE:
		exec_circle();
		break;
	case KW_DRAW:
		exec_draw();
		break;
	case KW_HELP:
		exec_help();
		break;
	case KW_DELAY:
		exec_delay();
		break;
	case KW_CURSOR:
		exec_cursor();
		break;
	case KW_POKE:
		exec_poke();
		break;
	case KW_EXEC:
		exec_exec();
		break;
	case KW_SYS:
		exec_sys();
		break;
	case KW_DRIVE:
		exec_drive();
		break;
	case KW_TIME:
		printf("Current millis: %d\n", get_millis());
	break;
	case KW_REM:
	case KW_QUOTE:
		break;
	case KW_ETH:
		exec_eth();
		break;
	case KW_COLOR:
		exec_color();
		break;
	case KW_DEFAULT:
		assignment();
		break;
	default:
		return 0;
	}
	return 0;
}

void init_K_API() {
	K_API_STDIO[K_CLS] 				= ((int)cls) + 4;               // 190000 
	K_API_STDIO[K_PUT_CHAR] 		= ((int)put_char) + 4;          // 190004 
	K_API_STDIO[K_PRINTF] 			= ((int)printf) + 4;            // 190008 
	K_API_STDIO[K_PUTS] 			= ((int)puts) + 4;              // 190012 
	K_API_STDIO[K_RAND] 			= ((int)rand) + 4;              // 190016 
	K_API_STDIO[K_SHOULD_BREAK] 	= ((int)should_break) + 4;      // 190020 
	K_API_STDIO[K_GETC] 			= ((int)getc) + 4;              // 190024 
	K_API_STDIO[K_GETS] 			= ((int)gets) + 4;              // 190028 
	K_API_STDIO[K_INIT_STDIO] 		= ((int)init_stdio) + 4;        // 190032 
	K_API_STDIO[K_DELAY] 			= ((int)delay) + 4;             // 190036 
	K_API_STDIO[K_XY] 				= ((int)xy) + 4;                // 190040 
	K_API_STDIO[K_GET_MILLIS]		= ((int)get_millis) + 4;        // 190044 
	K_API_STDIO[K_IS_KEY_PRESSED]	= ((int)is_key_pressed) + 4;    // 190048 
	K_API_STDIO[K_IS_KEY_RELEASED]	= ((int)is_key_released) + 4;   // 190052 
	K_API_STDIO[K_TOGGLE_CURSOR] 	= ((int)toggle_cursor) + 4;     // 190056 
	K_API_STDIO[K_PUTCHAR]			= ((int)putchar) + 4;           // 190060 
	K_API_STDIO[K_VIDEO_MODE]		= ((int)video_mode) + 4;        // 190064 
	K_API_GRAPHICS[K_SCROLL_UP]	    = ((int)scroll_up) + 4;			// 190068

	K_API_STRING[K_STRLEN] =        ((int)strlen) + 4;				// 190100 
	K_API_STRING[K_STRCMP] =        ((int)strcmp) + 4;				// 190104 
	K_API_STRING[K_STRNCMP] =       ((int)strncmp) + 4;				// 190108 
	K_API_STRING[K_MEMCPY] =        ((int)memcpy) + 4; 				// 190112 
	K_API_STRING[K_MEMSET] =        ((int)memset) + 4; 				// 190116 
	K_API_STRING[K_MEMMOVE] =       ((int)memmove) + 4; 			// 190120 
	K_API_STRING[K_STRCPY] =        ((int)strcpy) + 4; 				// 190124 
	K_API_STRING[K_STRNCPY] =       ((int)strncpy) + 4; 			// 190128 
	K_API_STRING[K_STRCAT] =        ((int)strcat) + 4;				// 190132 
	K_API_STRING[K_STRSTR] =        ((int)strstr) + 4;				// 190136 
	K_API_STRING[K_TOLOWER] =       ((int)tolower) + 4;				// 190140 
	K_API_STRING[K_TOUPPER] =       ((int)toupper) + 4;				// 190144 
	K_API_STRING[K_STR_TOUPPER] =   ((int)str_toupper) + 4;			// 190148 
	K_API_STRING[K_STR_N_TOUPPER] = ((int)str_n_toupper) + 4;		// 190152 
	K_API_STRING[K_ISDIGIT] =       ((int)isdigit) + 4;				// 190156 
	K_API_STRING[K_ISLOWER] =       ((int)islower) + 4;				// 190160 
	K_API_STRING[K_ISUPPER] =       ((int)isupper) + 4;				// 190164 
	K_API_STRING[K_ISALPHA] =       ((int)isalpha) + 4;				// 190168 
	K_API_STRING[K_ISALNUM] =       ((int)isalnum) + 4;				// 190172 
	K_API_STRING[K_ATOI] =          ((int)atoi) + 4;				// 190176 
	K_API_STRING[K_ISSPACE] =       ((int)isspace) + 4;				// 190180 
	K_API_STRING[K_MEMCMP] =        ((int)memcmp) + 4;		 	 	// 190184 
	K_API_STRING[K_STRTOK] =        ((int)strtok) + 4;				// 190188 
	K_API_STRING[K_STRCHR] =        ((int)strchr) + 4; 				// 190192 
	K_API_STRING[K_STRRRCHR] =      ((int)strrchr) + 4; 			// 190196 
	K_API_STRING[K_STRNCASECMP] =   ((int)strncasecmp) + 4; 		// 190200 

	K_API_SPRINTF[K_SPRINTF]	= 	((int)sprintf) + 4;				// 190300
	K_API_SPRINTF[K_VSPRINTF]	= 	((int)vsprintf) + 4;			// 190304

	K_API_GRAPHICS[K_PIXEL]		=	((int)pixel) + 4;				// 190400
	K_API_GRAPHICS[K_LINE]		=	((int)line) + 4;				// 190404
	K_API_GRAPHICS[K_CIRCLE]	=	((int)circle) + 4;				// 190408
	K_API_GRAPHICS[K_DRAW]		=	((int)draw) + 4;				// 190412

	K_API_SPI[K_INIT_SPI]		=    ((int)init_spi) + 4; 			// 190500
	K_API_SPI[K_DEINIT_SPI]		=    ((int)deinit_spi) + 4; 		// 190504
	K_API_SPI[K_SEND_SPI]		=    ((int)send_spi) + 4; 			// 190508
	K_API_SPI[K_READ_SPI]		=    ((int)read_spi) + 4; 			// 190512
	K_API_SPI[K_SPI_BYTE]		=    ((int)SPI_Byte) + 4; 			// 190516

	K_API_TCPIP[K_INIT_TCPIP]	= 	 ((int)init_tcpip) + 4;			// 190600
	K_API_TCPIP[K_BROWSE_URL]	= 	 ((int)browseUrl) + 4;			// 190604
	K_API_TCPIP[K_HTTP_POST]	= 	 ((int)httpPost) + 4;			// 190608
	K_API_TCPIP[K_MAIN_LOOP]	= 	 ((int)mainLoop) + 4;			// 190612

	
	K_API_FAT[K_SDCARD_INIT]	= 	 ((int)sdcard_init) + 4;		// 190700
	K_API_FAT[K_VOLUME_INIT]	= 	 ((int)volume_init) + 4;		// 190704
	K_API_FAT[K_FILE_OPEN]		= 	 ((int)file_open) + 4;			// 190708
	K_API_FAT[K_FILE_READ]		= 	 ((int)file_read) + 4;			// 190712
	K_API_FAT[K_GET_DIR_ENTRY]	= 	 ((int)getDirEntry) + 4;		// 190716
	K_API_FAT[K_FILE_SEEK]		= 	 ((int)file_seek) + 4;			// 190720
	K_API_FAT[K_FILE_WRITE]		= 	 ((int)file_write) + 4;			// 190724
	K_API_FAT[K_FILE_DELETE]	= 	 ((int)file_delete) + 4;		// 190728
	
}

int main()
{
	int res, len, pos;

	program_start = program;
	program_end = program_start;
	bsp = program + kRamSize;  // Needed for printnum
	stack_limit = program + kRamSize - STACK_SIZE;
	variables_begin = stack_limit - 28 * VAR_SIZE;
	
	current_line = 0;

	init_K_API();

	init_stdio();
	//current_video_mode = 0;
	video_mode(0);
	color = 1;
	cls(color);
	uart_init_files();
	init_spi();
	init_sd();
	init_tcpip();

	exec_mem();

	init_timer();

	res = 0;
	while (1)
	{
		if (res != 3)
		{
			getln('>');
			toUppercaseBuffer();
			skip_to_end();
		}
		else
		{
			res = 0;
			toUppercaseBuffer();
		}
		// Now see if we have a line number
		linenum = testnum();

		ignore_blanks();

		if (linenum == 0)
		{
			do {
				res = direct();
				if (res == 1)
					return 0;
				if (res == 2)
				{
					txtpos = current_line + sizeof(LINENUM) + sizeof(char);
					continue;
				}
				ignore_blanks();
				if (*txtpos == NL || *txtpos != ':')
					break;
				txtpos++;
				ignore_blanks();
			} while (1);
		}
		else if (linenum == 0xFFFF)
		{
			qhow();
		}
		else
		{
			entered_with_line_num();
		}
	}
}
