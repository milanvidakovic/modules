#include <types.h>

typedef unsigned long long uint64_t;

#define FLT_DIG		6
#define FLT_EPSILON	1.19209289550781250000e-07
#define FLT_MANT_DIG	24
#define FLT_MAX		3.40282346638528860000e+38
#define FLT_MAX_10_EXP	38
#define FLT_MAX_EXP	128
#define FLT_MIN		1.17549435082228750000e-38
#define FLT_MIN_10_EXP	-37
#define FLT_MIN_EXP	-125 
#define INF 0x7f800000

typedef union
{
  float value;
  struct
  {
    unsigned int sign : 1;
    unsigned int exponent : 8;
    unsigned int mantissa : 23;
  } parts;
  uint32_t word;
} ieee_float_shape_type;

#define UINT32_C(x)     (x##U)

# define EXTRACT_WORDS32(i, f)                                     \
do {                                                              \
  ieee_float_shape_type gh_u;                                    \
  gh_u.value = (f);                                               \
  (i) = gh_u.word;                                                \
} while (0)


# define INSERT_WORDS32(f, i)                                        \
do {                                                                \
  ieee_float_shape_type iw_u;                                        \
  iw_u.word = (i);                                                \
  (f) = iw_u.value;                                                \
} while (0)

typedef uint32_t rep_t;
typedef int32_t srep_t;
typedef float fp_t;
typedef int32_t SItype;

#define REP_C UINT32_C
#define significandBits 23

#define typeWidth       (sizeof(rep_t)*8)
#define exponentBits    (typeWidth - significandBits - 1)
#define maxExponent     ((1 << exponentBits) - 1)
#define exponentBias    (maxExponent >> 1)

#define implicitBit     (REP_C(1) << significandBits)
#define significandMask (implicitBit - 1U)
#define signBit         (REP_C(1) << (significandBits + exponentBits))
#define absMask         (signBit - 1U)
#define exponentMask    (absMask ^ significandMask)
#define oneRep          ((rep_t)exponentBias << significandBits)
#define infRep          exponentMask
#define quietBit        (implicitBit >> 1)
#define qnanRep         (exponentMask | quietBit)

float __addsf3(float a, float b);
float __subsf3(float a, float b);
float __mulsf3(float a, float b);
float __divsf3(float a, float b);

int __lesf2(fp_t a, fp_t b);
int __gesf2(fp_t a, fp_t b);

/* Returns a nonzero value if either argument is NaN, otherwise 0.*/
int __unordsf2(fp_t a, fp_t b);

int __eqsf2(fp_t a, fp_t b);
int __nesf2(fp_t a, fp_t b);
int __ltsf2(float a, float b);
int __gtsf2(fp_t a, fp_t b);

/* Returns four bytes of the given floating point number. */
int __extendsfdf2(float f);
/* Converts int to float. */
fp_t __floatsisf(int a);
/* Returns decimal digits of a given float number. Second argument receives integer part of the float number. */
float __modf(float x, float *iptr);
/* Converts float to int. */
int __fixsfsi(float f);

rep_t toRep(fp_t x);

/* Returns float number from four bytes */
fp_t fromRep(rep_t x);

uint32_t __fixunssfsi(fp_t a);
fp_t __floatunsisf(unsigned int a);