/* WARNING if type checker is not performed, translation could contain errors ! */

#include "Top.h"

/* Clause IMPORTS */
#include "Numbers.h"
#include "BASIC_IO.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

/* Clause INITIALISATION */
void Top__INITIALISATION(void)
{
    
    BASIC_IO__INITIALISATION();
    Numbers__INITIALISATION();
}

/* Clause OPERATIONS */

void Top__main(void)
{
    int32_t cc;
    int32_t nn;
    bool oo;
    
    BASIC_IO__STRING_WRITE("Please choose an operation from:\n");
    BASIC_IO__STRING_WRITE("1. Check if a number is prime\n");
    BASIC_IO__STRING_WRITE("2. Show the previows number\n");
    BASIC_IO__STRING_WRITE("3. Exit the program\n");
    BASIC_IO__INTERVAL_READ(1, 3, &cc);
    while((cc) != (3))
    {
        switch(cc)
        {
            case 1 : {
                
                {
                    BASIC_IO__STRING_WRITE("Pleas input the number:\n");
                    BASIC_IO__INTERVAL_READ(1, 2147483647, &nn);
                    BASIC_IO__STRING_WRITE("The number ");
                    BASIC_IO__INT_WRITE(nn);
                    Numbers__checknumber(nn, &oo);
                    if(oo == true)
                    {
                        BASIC_IO__STRING_WRITE(" is prime\n");
                    }
                    else
                    {
                        BASIC_IO__STRING_WRITE(" is not prime\n");
                    }
                }
                break;
            }
            case 2 : {
                
                {
                    Numbers__showprevious(&nn);
                    BASIC_IO__STRING_WRITE("The previous number is ");
                    BASIC_IO__INT_WRITE(nn);
                    BASIC_IO__STRING_WRITE("\n");
                }
                break;
            }
            default : {
                
                ;
                break;
            }
        }
        BASIC_IO__STRING_WRITE("Please choose another operation:\n");
        BASIC_IO__INTERVAL_READ(1, 3, &cc);
    }
}

