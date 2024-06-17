#include "BASIC_IO.h"
#include <stdlib.h>

#define mess_nbr(a,b) while (c!='\n') c=getchar();\
                      printf("THIS IS NOT A NUMBER IN %ld..%ld\n",(a),(b));\

#define init_nbr(a,b) n=0; \
                      while (c<'0' || c>'9') { \
                        mess_nbr((a),(b));c=getchar(); \
					  }

void BASIC_IO__INITIALISATION(void) {}

void BASIC_IO__INTERVAL_READ(int minval, int maxval, int* uu) {
	int m, k, l, n, b = 1;
	int c ;

	k = maxval / 10;
	l = maxval - 10 * k;
	c = getchar();
	init_nbr(minval, maxval);
	while (b == 1)
	{
		while (c >= '0' && c <= '9')
		{
			m = c - '0';
			if (n < k)
			{
				n = 10 * n + m;
				c = getchar();
			}
			else if (n == k)
			{
				if (m <= l)
				{
					n = 10 * n + m;
					c = getchar();
				}
				else
				{
					mess_nbr(minval, maxval);
					c = getchar();
					init_nbr(minval, maxval);
				}
			}
			else
			{
				mess_nbr(minval, maxval);
				c = getchar();
				init_nbr(minval, maxval);
			}
		}
		while (c != '\n')
		{
			c = getchar();
		}
		if (n < minval)
		{
			mess_nbr(minval, maxval);
			c = getchar();
			init_nbr(minval, maxval);
		}
		else
		{
			b = 0;
		}

	}
	*uu = n;
return ;
}

void BASIC_IO__INT_WRITE(int vv)
{
	printf("%ld", vv);
}

static int BOOL_STRING_LEN = 5 ;

static char *BOOL_VALUES[2] = {"FALSE","TRUE"} ;

void BASIC_IO__BOOL_READ(bool* bb) {
	char            str[BOOL_STRING_LEN + 1];
	int             found = -1, correct = 0, i;

	while (!correct) {
		int             counter = 0, c;

		str[BOOL_STRING_LEN] = '\0';
		while ((c = getchar()) != '\n') {
			if (counter < BOOL_STRING_LEN) {
				str[counter] = c;
			}
			counter++;
		}
		if (counter <= BOOL_STRING_LEN) {
			str[counter] = '\0';
			for (i = 0; i < 2 && found == -1; i++)
				if (strcmp(BOOL_VALUES[i], str) == 0)
					found = i;
			if (found != -1) {
				correct = 1;
				*bb = found;
			} else
				fprintf(stderr, "THIS IS NOT A BOOL VALUE: type TRUE or FALSE\n");
		} else
			fprintf(stderr, "THIS IS NOT A BOOL VALUE: type TRUE or FALSE\n");
	}
}


void BASIC_IO__BOOL_WRITE(bool bb)
{
	if (bb)
	{
		printf("TRUE");
	}
	else
	{
		printf("FALSE");
	}
}

void BASIC_IO__CHAR_READ(int* cc)
{
	int value ;
	value = getchar() ;
	if ( value < 0 )
	{
		*cc = 0 ;
	}
	else
	{
		*cc = value ;
	}
}

void BASIC_IO__CHAR_WRITE(int cc)
{
	if ((cc < 0) || (cc >= 255))
	{
		printf("Attempting to write an invalid character\n");
		exit(1);
	}
	printf("%c", (char)cc);
}

void BASIC_IO__STRING_WRITE(char* ss)
{
	printf("%s", ss);
}

