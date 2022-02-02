#include <types.h>
#include<floatimpl.h>
#include <math.h>
#include <stdio.h>

float roundf(float x)
{
    uint32_t w;
    /* Most significant word, least significant word. */
    int exponent_less_127;
  
    w = toRep(x);
  
    /* Extract exponent field. */
    exponent_less_127 = (int)((w & 0x7f800000) >> 23) - 127;
  
    if (exponent_less_127 < 23)
      {
        if (exponent_less_127 < 0)
          {
            w &= 0x80000000;
            if (exponent_less_127 == -1)
              /* Result is +1.0 or -1.0. */
              w |= ((uint32_t)127 << 23);
          }
        else
          {
            unsigned int exponent_mask = 0x007fffff >> exponent_less_127;
            if ((w & exponent_mask) == 0)
              /* x has an integral value. */
              return x;
   
            w += 0x00400000 >> exponent_less_127;
            w &= ~exponent_mask;
          }
      }
    else
      {
        if (exponent_less_127 == 128)
          /* x is NaN or infinite. */
          return x + x;
        else
          return x;
      }
    x = fromRep(w);
    return x;
}

float sinf(float x)
{
  float sinVal, fract, in;                           /* Temporary variables for input, output */
  uint16_t index;                                        /* Index variable */
  float a, b;                                        /* Two nearest output values */
  int32_t n;
  float findex;

  /* input x is in radians */
  /* Scale the input to [0 1] range from [0 2*PI] , divide input by 2*pi */
  in = x * 0.159154943092f;

  /* Calculation of floor value of input */
  n = (int32_t) in;

  /* Make negative values towards -infinity */
  if(x < 0.0f)
  {
    n--;
  }

  /* Map input value to [0 1] */
  in = in - (float) n;

  /* Calculation of index of the table */
  findex = (float) FAST_MATH_TABLE_SIZE * in;
  if (findex >= 512.0f) {
    findex -= 512.0f;
  }

  index = ((uint16_t)findex) & 0x1ff;

  /* fractional value calculation */
  fract = findex - (float) index;

  /* Read two nearest values of input value from the sin table */
  a = sinTable_f32[index];
  b = sinTable_f32[index+1];

  /* Linear interpolation process */
  sinVal = (1.0f-fract)*a + fract*b;

  /* Return the output value */
  return (sinVal);
}

float cosf(float x)
{
  float cosVal, fract, in;                   /* Temporary variables for input, output */
  uint16_t index;                                /* Index variable */
  float a, b;                                /* Two nearest output values */
  int32_t n;
  float findex;

  /* input x is in radians */
  /* Scale the input to [0 1] range from [0 2*PI] , divide input by 2*pi, add 0.25 (pi/2) to read sine table */
  in = x * 0.159154943092f + 0.25f;

  /* Calculation of floor value of input */
  n = (int32_t) in;

  /* Make negative values towards -infinity */
  if(in < 0.0f)
  {
    n--;
  }

  /* Map input value to [0 1] */
  in = in - (float) n;

  /* Calculation of index of the table */
  findex = (float) FAST_MATH_TABLE_SIZE * in;
  index = ((uint16_t)findex) & 0x1ff;

  /* fractional value calculation */
  fract = findex - (float) index;

  /* Read two nearest values of input value from the cos table */
  a = sinTable_f32[index];
  b = sinTable_f32[index+1];

  /* Linear interpolation process */
  cosVal = (1.0f-fract)*a + fract*b;

  /* Return the output value */
  return (cosVal);
}

float tanf(float x)
{
  float d = cosf(x);
  float g = sinf(x);
  if (d == 0.0f) {
	if (g >= 0)
    	return INF;
	return -INF;
  }
  return g / d;
}

float floorf(float d)
{
	float fract;

	if (d<0.0) {
		d = -d;
		fract = __modf(d, &d);
		if (fract != 0.0)
			d += 1;
		d = -d;
	} else
		__modf(d, &d);
	return(d);
}

float ceilf(float d)
{
	return(-floorf(-d));
}

float	ep0	= .2080384346694663001443843411e7;
float	ep1	= .3028697169744036299076048876e5;
float	ep2	= .6061485330061080841615584556e2;
float	eq0	= .6002720360238832528230907598e7;
float	eq1	= .3277251518082914423057964422e6;
float	eq2	= .1749287689093076403844945335e4;
float	elog2e	= 1.4426950408889634073599247;
float	esqrt2	= 1.4142135623730950488016887;
float	emaxf	= FLT_MAX_10_EXP * 2.5f/*>ln(10)*/;

float frexpf(float x, int *i)
{
	int neg;
	int j;

	j = 0;
	neg = 0;
	if (x < 0) {
		x = -x;
		neg = 1;
	}
	if (x >= 1.0f)
		while (x >= 1.0f) {
			j = j+1;
			x = x/2.0f;
		}
	else if (x < 0.5f && x != 0.0f)
		while (x < 0.5f) {
			j = j-1;
			x = 2.0f*x;
		}
	*i = j;
	if (neg)
            x = -x;
	return(x);
} 

float ldexpf(float fr, int exp)
{
	int neg;
	int i;

	if (fr == 0)
		return 0;
	neg = 0;
	if (fr < 0) {
		fr = -fr;
		neg = 1;
	}
	fr = frexpf(fr, &i);
	while (fr < 0.5f) {
		fr = 2*fr;
		i = i-1;
	}
	exp = exp+i;
	if (exp >= FLT_MAX_EXP) {
		if (neg)
			return(-INF);
		else
			return(INF);
        }
	if (exp < FLT_MIN_EXP - 2)
		return(0);
	while (exp > 30) {
		fr = fr*(1L<<30);
		exp = exp-30;
	}
	while (exp < -30) {
		fr = fr/(1L<<30);
		exp = exp+30;
	}
	if (exp > 0)
		fr = fr*(1L<<exp);
	if (exp < 0)
		fr = fr/(1L<<-exp);
	if (neg)
            fr = -fr;
	return(fr);
} 

float expf(float arg)
{
	float fract;
	float temp1, temp2, xsq;
	int ent;

	if(arg == 0.)
		return(1.);
	if(arg < -emaxf)
		return(0.);
	if((arg > 0.0f) && (arg > emaxf)) {
		return(INF);
	}
	arg *= elog2e;
	ent = floorf(arg);
	fract = (arg-ent) - 0.5f;
	xsq = fract*fract;
	temp1 = ((ep2*xsq+ep1)*xsq+ep0)*fract;
	temp2 = ((1.0f*xsq+eq2)*xsq+eq1)*xsq + eq0;
	return(ldexpf(esqrt2*(temp2+temp1)/(temp2-temp1), ent));
} 

float _log2	= 0.693147180559945309e0;
float ln10	= 2.302585092994045684;
float sqrto2	= 0.707106781186547524e0;
float p0	= -.240139179559210510e2;
float p1	= 0.309572928215376501e2;
float p2	= -.963769093368686593e1;
float p3	= 0.421087371217979714e0;
float q0	= -.120069589779605255e2;
float q1	= 0.194809660700889731e2;
float q2	= -.891110902798312337e1;

float logf(float arg)
{
	float x,z, zsq, temp;
	int exp;

	if(arg <= 0.) {
		return(-INF);
	}
	x = frexpf(arg,&exp);
	while(x<0.5f) {
		x = x*2;
		exp = exp-1;
	}
	if(x<sqrto2) {
		x = 2*x;
		exp = exp-1;
	}

	z = (x-1)/(x+1);
	zsq = z*z;

	temp = ((p3*zsq + p2)*zsq + p1)*zsq + p0;
	temp = temp/(((1.0f*zsq + q2)*zsq + q1)*zsq + q0);
	temp = temp*z + exp*_log2;
	return(temp);
}

float log10f(float arg)
{

	return(logf(arg)/ln10);
} 

float sqrtf(float arg)
{
	float x, temp;
	int exp;
	int i;

	if(arg <= 0.) {
		return(0.);
	}
	x = frexpf(arg,&exp);
	while(x < 0.5f) {
		x *= 2;
		exp--;
	}
	/*
	 * NOTE
	 * this wont work on 1's comp
	 */
	if(exp & 1) {
		x *= 2;
		exp--;
	}
	temp = 0.5f*(1.0f+x);

	while(exp > 60) {
		temp *= (1L<<30);
		exp -= 60;
	}
	while(exp < -60) {
		temp /= (1L<<30);
		exp += 60;
	}
	if(exp >= 0)
		temp *= 1L << (exp/2);
	else
		temp /= 1L << (-exp/2);
	for(i=0; i<=4; i++)
		temp = 0.5f*(temp + arg/temp);
	return(temp);
} 

float powf(float arg1, float arg2)
{
	float temp;
	long l;

	if(arg1 <= 0.) {
		if(arg1 == 0.) {
			if(arg2 <= 0.)
				goto domain;
			return(0.);
		}
		l = arg2;
		if(l != arg2)
			goto domain;
		temp = expf(arg2 * logf(-arg1));
		if(l & 1)
			temp = -temp;
		return(temp);
	}
	return(expf(arg2 * logf(arg1)));

domain:
	return(0.);
}

float aspio2	= 1.570796326794896619f;

float atsq2p1	 =2.414213562373095048802e0f;
float atsq2m1	 = .414213562373095048802e0f;
float atpio2	 =1.570796326794896619231e0f;
float atpio4	 = .785398163397448309615e0f;
float atp4	 = .161536412982230228262e2f;
float atp3	 = .26842548195503973794141e3f;
float atp2	 = .11530293515404850115428136e4f;
float atp1	 = .178040631643319697105464587e4f;
float atp0	 = .89678597403663861959987488e3f;
float atq4	 = .5895697050844462222791e2f;
float atq3	 = .536265374031215315104235e3f;
float atq2	 = .16667838148816337184521798e4f;
float atq1	 = .207933497444540981287275926e4f;
float atq0	 = .89678597403663861962481162e3f;

/*
 * xatan evaluates a series valid in the
 * range [-0.414...,+0.414...].
 */
float xatan(float arg)
{
	float argsq;
	float value;

	argsq = arg*arg;
	value = ((((atp4*argsq + atp3)*argsq + atp2)*argsq + atp1)*argsq + atp0);
	value = value/(((((argsq + atq4)*argsq + atq3)*argsq + atq2)*argsq + atq1)*argsq + atq0);
	return(value*arg);
}

/*
 * satan reduces its argument (known to be positive)
 * to the range [0,0.414...] and calls xatan.
 */
float satan(float arg)
{
	if(arg < atsq2m1)
		return(xatan(arg));
	else if(arg > atsq2p1)
		return(atpio2 - xatan(1.0f/arg));
	else
		return(atpio4 + xatan((arg-1.0f)/(arg+1.0f)));
}

/*
 * atan makes its argument positive and
 * calls the inner routine satan.
 */
float atanf(float arg)
{
	if(arg>=0.0f)
		return(satan(arg));
	else
		return(-satan(-arg));
} 

float asinf(float arg)
{
	float sign, temp;
	float t1;

	sign = 1.;
	if(arg < 0){
		arg = -arg;
		sign = -1.;
	}

	if(arg > 1.f){
		return(0.f);
	}

	temp = sqrtf(1.f - arg*arg);
	if(arg > 0.7f)
	{
		t1 = atanf(temp/arg);
		temp = aspio2 - t1;
	} else
	{
		temp = atanf(arg/temp);
	}
	return(sign*temp);
}

float acosf(float arg)
{
	if(arg < 0)
		arg = -arg;

	if(arg > 1.f){
		return(0.);
	}

	return(aspio2 - asinf(arg));
} 