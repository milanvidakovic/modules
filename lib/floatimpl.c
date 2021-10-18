#include <floatimpl.h>

int __clzsi2(unsigned x)
{
  // This uses a binary search (counting down) algorithm from Hacker's Delight.
   unsigned y;
   int n = 32;
   y = x >>16;  if (y != 0) {n = n -16;  x = y;}
   y = x >> 8;  if (y != 0) {n = n - 8;  x = y;}
   y = x >> 4;  if (y != 0) {n = n - 4;  x = y;}
   y = x >> 2;  if (y != 0) {n = n - 2;  x = y;}
   y = x >> 1;  if (y != 0) return n - 2;
   return n - x;
}

int rep_clz(rep_t a)
{
    return __clzsi2(a);
}

// 32x32 --> 64 bit multiply
// void wideMultiply(rep_t a, rep_t b, rep_t *hi, rep_t *lo)
// {
//     const uint64_t product = (uint64_t)a*b;
//     *hi = product >> 32;
//     *lo = product;
// }

rep_t toRep(fp_t x)
{
    const union { fp_t f; rep_t i; } rep = {.f = x};
    return rep.i;
}

fp_t fromRep(rep_t x)
{
    const union { fp_t f; rep_t i; } rep = {.i = x};
    return rep.f;
}

int normalize(rep_t *significand)
{
    const int shift = rep_clz(*significand) - rep_clz(implicitBit);
    *significand <<= shift;
    return 1 - shift;
}

void wideLeftShift(rep_t *hi, rep_t *lo, int count)
{
    *hi = *hi << count | *lo >> (typeWidth - count);
    *lo = *lo << count;
}

void wideRightShiftWithSticky(rep_t *hi, rep_t *lo, unsigned int count)
{
    if (count < typeWidth) {
        int sticky = (*lo << (typeWidth - count)) != 0;
        *lo = *hi << (typeWidth - count) | *lo >> count | sticky;
        *hi = *hi >> count;
    }
    else if (count < 2*typeWidth) {
        int sticky = (*hi << (2*typeWidth - count) | *lo) != 0;
        *lo = *hi >> (count - typeWidth) | sticky;
        *hi = 0;
    } else {
        int sticky = (*hi | *lo) != 0;
        *lo = sticky;
        *hi = 0;
    }
} 

float __addsf3(float a, float b) 
{
	asm(
		"ld.w r0, [r13 + (8)]\npush r1\nld.w r1, [r13 + (12)]\nfadd r0, r1\npop r1\n"
	);
}

float __subsf3(float a, float b) 
{
	asm(
		"ld.w r0, [r13 + (8)]\npush r1\nld.w r1, [r13 + (12)]\nfsub r0, r1\npop r1\n"
	);
}

float __mulsf3(float a, float b) 
{
	asm(
		"ld.w r0, [r13 + (8)]\npush r1\nld.w r1, [r13 + (12)]\nfmul r0, r1\npop r1\n"
	);
}

float __divsf3(float a, float b) 
{
	asm(
		"ld.w r0, [r13 + (8)]\npush r1\nld.w r1, [r13 + (12)]\nfdiv r0, r1\npop r1\n"
	);
}

enum LE_RESULT {
    LE_LESS      = -1,
    LE_EQUAL     =  0,
    LE_GREATER   =  1,
    LE_UNORDERED =  1
};

enum LE_RESULT
__lesf2(fp_t a, fp_t b)
{
    const srep_t aInt = toRep(a);
    const srep_t bInt = toRep(b);
    const rep_t aAbs = aInt & absMask;
    const rep_t bAbs = bInt & absMask;

    // If either a or b is NaN, they are unordered.
    if (aAbs > infRep || bAbs > infRep) return LE_UNORDERED;

    // If a and b are both zeros, they are equal.
    if ((aAbs | bAbs) == 0) return LE_EQUAL;

    // If at least one of a and b is positive, we get the same result comparing
    // a and b as signed integers as we would with a fp_ting-point compare.
    if ((aInt & bInt) >= 0) {
        if (aInt < bInt) return LE_LESS;
        else if (aInt == bInt) return LE_EQUAL;
        else return LE_GREATER;
    }

    // Otherwise, both are negative, so we need to flip the sense of the
    // comparison to get the correct result.  (This assumes a twos- or ones-
    // complement integer representation; if integers are represented in a
    // sign-magnitude representation, then this flip is incorrect).
    else {
        if (aInt > bInt) return LE_LESS;
        else if (aInt == bInt) return LE_EQUAL;
        else return LE_GREATER;
    }
}

enum GE_RESULT {
    GE_LESS      = -1,
    GE_EQUAL     =  0,
    GE_GREATER   =  1,
    GE_UNORDERED = -1   // Note: different from LE_UNORDERED
};

enum GE_RESULT
__gesf2(fp_t a, fp_t b)
{
    const srep_t aInt = toRep(a);
    const srep_t bInt = toRep(b);
    const rep_t aAbs = aInt & absMask;
    const rep_t bAbs = bInt & absMask;

    if (aAbs > infRep || bAbs > infRep) return GE_UNORDERED;
    if ((aAbs | bAbs) == 0) return GE_EQUAL;
    if ((aInt & bInt) >= 0) {
        if (aInt < bInt) return GE_LESS;
        else if (aInt == bInt) return GE_EQUAL;
        else return GE_GREATER;
    } else {
        if (aInt > bInt) return GE_LESS;
        else if (aInt == bInt) return GE_EQUAL;
        else return GE_GREATER;
    }
}

int
__unordsf2(fp_t a, fp_t b)
{
    const rep_t aAbs = toRep(a) & absMask;
    const rep_t bAbs = toRep(b) & absMask;
    return aAbs > infRep || bAbs > infRep;
}

// The following are alternative names for the preceeding routines.

enum LE_RESULT
__eqsf2(fp_t a, fp_t b)
{
    return __lesf2(a, b);
}

enum LE_RESULT
__ltsf2(fp_t a, fp_t b)
{
    return __lesf2(a, b);
}

enum LE_RESULT
__nesf2(fp_t a, fp_t b)
{
    return __lesf2(a, b);
}

enum GE_RESULT
__gtsf2(fp_t a, fp_t b)
{
    return __gesf2(a, b);
}

int __extendsfdf2(float f) 
{
	asm(
		"ld.w r0, [r13 + (8)]\n"
		"ld.w r1, [r13 + (8)]\n"
	);
}

fp_t __floatsisf(int a)
{
    const int aWidth = sizeof a * 8;

    // Handle zero as a special case to protect clz
    if (a == 0)
        return fromRep(0);

    // All other cases begin by extracting the sign and absolute value of a
    rep_t sign = 0;
    if (a < 0) {
        sign = signBit;
        a = -a;
    }

    // Exponent of (fp_t)a is the width of abs(a).
    const int exponent = (aWidth - 1) - __clzsi2(a);
    rep_t result;

    // Shift a into the significand field, rounding if it is a right-shift
    if (exponent <= significandBits) {
        const int shift = significandBits - exponent;
        result = (rep_t)a << shift ^ implicitBit;
    } else {
        const int shift = exponent - significandBits;
        result = (rep_t)a >> shift ^ implicitBit;
        rep_t round = (rep_t)a << (typeWidth - shift);
        if (round > signBit) result++;
        if (round == signBit) result += result & 1;
    }

    // Insert the exponent
    result += (rep_t)(exponent + exponentBias) << significandBits;
    // Insert the sign bit and return
    return fromRep(result | sign);
} 
float one = 1.0f;

float __modf(float x, float *iptr)
{
        int32_t i0;
        int32_t j0;
        EXTRACT_WORDS32(i0, x);
        j0 = ((i0 >> 23) & 0x0ff) - 127;        /* exponent of x */
        if (j0 < 23) {                        /* integer part in x */
            if(j0 < 0) {                        /* |x|<1 */
                /* *iptr = +-0 */
                INSERT_WORDS32(*iptr, i0 & UINT32_C(0x80000000));
                return x;
            } else {
                uint32_t i = UINT32_C(0x007fffff) >> j0;
                if((i0 & i) == 0) {                /* x is integral */
                    *iptr = x;
                    /* return +-0 */
                    INSERT_WORDS32(x, i0 & UINT32_C(0x80000000));
                    return x;
                } else {
                    INSERT_WORDS32(*iptr, i0 & (~i));
                    return x - *iptr;
                }
            }
        } else { /* no fraction part */
            *iptr = x*one;
            /* We must handle NaNs separately.  */
            if (j0 == 0x400 && (i0 & UINT32_C(0xfffffffffffff)))
              return x*one;
            INSERT_WORDS32(x, i0 & UINT32_C(0x80000000));        /* return +-0 */
            return x;
        }
}

int __fixsfsi(float a)
{
    union { fp_t f; rep_t u; } fb;
    fb.f = a;

    int e = ((fb.u & 0x7F800000) >> 23) - 127;
    if (e < 0)
        return 0;

    rep_t r = (fb.u & 0x007FFFFF) | 0x00800000;
    if (e > 23)
        r <<= (e - 23);
    else
        r >>= (23 - e);
    if (fb.u & 0x80000000)
        return -r;
    return r;
}