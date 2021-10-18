#include <stddef.h>

#ifdef KERNEL
int strlen(char *c) 
{
	int res = 0;
	while(*(c++))
	{
		res++;
	}
	return res;
}

int strcmp(char* s1, char* s2)
{
  char c1, c2;
  do
  {
      c1 = *s1++;
      c2 = *s2++;
      if (c1 == '\0')
        return c1 - c2;
  } while (c1 == c2);
  return c1 - c2;
}

int strncmp(char *s1, char *s2, int n)
{

	if (n == 0)
		return (0);
	do {
		if (*s1 != *s2++)
			return (*(char *)s1 - *(char *)--s2);
		if (*s1++ == 0)
			break;
	} while (--n != 0);
	return (0);
}

void* memcpy(void* dest, void* src, int len)
{
  char *d = dest;
  char *s = src;
  while (len--)
    *d++ = *s++;
  return dest;
}

void *memset(void *dst, int c, int n)
{
  if (n) {
      char *d = dst;

      do {
          *d++ = c;
      } while (--n);
  }
  return dst;
}

void *memmove (void *dest, void *src, int len)
{
  char *d = dest;
  char *s = src;
  if (d < s)
    while (len--)
      *d++ = *s++;
  else
    {
      char *lasts = s + (len-1);
      char *lastd = d + (len-1);
      while (len--)
        *lastd-- = *lasts--;
    }
  return dest;
}

char* strcpy (char* dest, char* src)
{
  return memcpy(dest, src, strlen (src) + 1);
}

char* strncpy(char *s1, char *s2, int n)
{
  return memcpy (s1, s2, n);
}

char* strstr(char* string, char* substring)
{
  char *a, *b;

  /* First scan quickly through the two strings looking for a
   * single-character match.  When it's found, then compare the
   * rest of the substring.
   */

  b = substring;
  if (*b == 0) 
  {
		return string;
  }
  for ( ; *string != 0; string += 1) 
  {
		if (*string != *b) {
    	continue;
		}
		a = string;
		while (1) 
		{
    	if (*b == 0) 
    	{
				return string;
    	}
    	if (*a++ != *b++) 
    	{
				break;
    	}
		}
		b = substring;
  }
  return (char *) 0;
}

char* strcat(char* dest, char* src)
{
  strcpy (dest + strlen (dest), src);
  return dest;
}

int tolower(int c)
{
    if (c >= 'A' && c <= 'Z')
        return c +'a'-'A';
    else
        return c;
}

int toupper(int c)
{
    if (c >= 'a' && c <= 'z')
        return c -'a'-'A';
    else
        return c;
}

char* str_toupper(char *str)
{
  int i = 0;

  while (str[i])
  {
    str[i] = toupper(str[i]);
    i++;
  }
  return str;
}

char* str_n_toupper(char *str, int n)
{
  int i = 0;

  while (i < n)
  {
    str[i] = toupper(str[i]);
    i++;
  }
  return str;
}

int isdigit(int c)
{
	return (c >= '0' && c <= '9' ? 1 : 0);
}

int islower(int c)
{
	return (c >= 'a' && c <= 'z');
}

int isupper(int c)
{
	return (c >= 'A' && c <= 'Z');
}

int isalpha(int c)
{
	return ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') ? 1 : 0);
}

int isalnum(int c)
{
	return (isalpha(c) || isdigit(c));
}

int isspace(int c)
{
	return (c == '\t' || c == '\n' || c == '\v' || c == '\f' || c == '\r' || c == ' ' ? 1 : 0);
}

int atoi(char *string)
{
  int result = 0;
  int digit;
  int sign;

  while (isspace(*string)) {
    string += 1;
  }

  if (*string == '-') {
    sign = 1;
    string += 1;
  } else {
    sign = 0;
    if (*string == '+') {
      string += 1;
    }
  }

  for ( ; *string != 0; string += 1) {
    digit = *string - '0';
    if ((digit < 0) || (digit > 9)) {
      break;
    }
    result = (10*result) + digit;
  }

  if (sign) {
    return -result;
  }
  return result;
}

int memcmp(void *s1, void *s2, int n)
{
	if (n != 0) {
		unsigned char *p1 = s1, *p2 = s2;

		do {
			if (*p1++ != *p2++)
				return (*--p1 - *--p2);
		} while (--n != 0);
	}
	return (0);
}

char *strtok(char *s, char *delim)
{
	char *spanp;
	int c, sc;
	char *tok;
	char *last;


	if (s == NULL && (s = last) == NULL)
		return (NULL);

	/*
	 * Skip (span) leading delimiters (s += strspn(s, delim), sort of).
	 */
cont:
	c = *s++;
	for (spanp = (char *)delim; (sc = *spanp++) != 0;) {
		if (c == sc)
			goto cont;
	}

	if (c == 0) {		/* no non-delimiter characters */
		last = NULL;
		return (NULL);
	}
	tok = s - 1;

	/*
	 * Scan token (scan for delimiters: s += strcspn(s, delim), sort of).
	 * Note that delim must have one NUL; we stop if we see that, too.
	 */
	for (;;) {
		c = *s++;
		spanp = (char *)delim;
		do {
			if ((sc = *spanp++) == c) {
				if (c == 0)
					s = NULL;
				else
					s[-1] = 0;
				last = s;
				return (tok);
			}
		} while (sc != 0);
	}
	/* NOTREACHED */
}

char *strchr (char *s, int c)
{
  do {
    if (*s == c)
      {
        return (char*)s;
      }
  } while (*s++);
  return (0);
}

char *strrchr (char *s, int c)
{
  char *found, *p;
  c = (unsigned char) c;
  /* Since strchr is fast, we use it rather than the obvious loop.  */
  if (c == '\0')
    return strchr (s, '\0');
  found = 0;
  while ((p = strchr (s, c)) != 0)
    {
      found = p;
      s = p + 1;
    }
  return (char *) found;
}

int strncasecmp (char *s1, char *s2, int n)
{
  if (n == 0)
    return 0;

  while (n-- != 0 && tolower(*s1) == tolower(*s2))
    {
      if (n == 0 || *s1 == '\0' || *s2 == '\0')
    break;
      s1++;
      s2++;
    }

  return tolower(*(unsigned char *) s1) - tolower(*(unsigned char *) s2);
}
#else
int strlen(char *c) 
{
  asm("ld.w r0, [190100]\njr r0\n");
}

int strcmp(char* s1, char* s2)
{
  asm("ld.w r0, [190104]\njr r0\n");
}

int strncmp(char *s1, char *s2, int n)
{
	asm("ld.w r0, [190108]\njr r0\n");
}

void* memcpy(void* dest, void* src, int len)
{
	asm("ld.w r0, [190112]\njr r0\n");
}

void *memset(void *dst, int c, int n)
{
  asm("ld.w r0, [190116]\njr r0\n");
}

void *memmove (void *dest, void *src, int len)
{
  asm("ld.w r0, [190120]\njr r0\n");
}

char* strcpy (char* dest, char* src)
{
  asm("ld.w r0, [190124]\njr r0\n");
}

char* strncpy(char *s1, char *s2, int n)
{
  asm("ld.w r0, [190128]\njr r0\n");
}

char* strcat(char* dest, char* src)
{
  asm("ld.w r0, [190132]\njr r0\n");
}

char* strstr(char* string, char* substring)
{
  asm("ld.w r0, [190136]\njr r0\n");
}

int tolower(int c)
{
  asm("ld.w r0, [190140]\njr r0\n");
}

int toupper(int c)
{
  asm("ld.w r0, [190144]\njr r0\n");
}

char* str_toupper(char *str)
{
  asm("ld.w r0, [190148]\njr r0\n");
}

char* str_n_toupper(char *str, int n)
{
  asm("ld.w r0, [190152]\njr r0\n");
}

int isdigit(int c)
{
  asm("ld.w r0, [190156]\njr r0\n");
}

int islower(int c)
{
  asm("ld.w r0, [190160]\njr r0\n");
}

int isupper(int c)
{
  asm("ld.w r0, [190164]\njr r0\n");
}

int isalpha(int c)
{
  asm("ld.w r0, [190168]\njr r0\n");
}

int isalnum(int c)
{
  asm("ld.w r0, [190172]\njr r0\n");
}

int atoi(char *string)
{
  asm("ld.w r0, [190176]\njr r0\n");
}

int isspace(int c)
{
  asm("ld.w r0, [190180]\njr r0\n");
}

int memcmp(void *s1, void *s2, int n)
{
  asm("ld.w r0, [190184]\njr r0\n");
}

char *strtok(char *s, char *delim)
{
  asm("ld.w r0, [190188]\njr r0\n");
}

char *strchr (char *s, int c)
{
  asm("ld.w r0, [190192]\njr r0\n");
}

char *strrchr (char *s, int c)
{
  asm("ld.w r0, [190196]\njr r0\n");
}

int strncasecmp (char *s1, char *s2, int n)
{
  asm("ld.w r0, [190200]\njr r0\n");
}
#endif
