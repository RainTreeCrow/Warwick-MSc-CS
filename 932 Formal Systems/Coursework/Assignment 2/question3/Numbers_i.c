/* WARNING if type checker is not performed, translation could contain errors ! */

#include "Numbers.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

static int32_t Numbers__lastchecked;
/* Clause INITIALISATION */
void Numbers__INITIALISATION(void)
{
    
    Numbers__lastchecked = 0;
}

/* Clause OPERATIONS */

void Numbers__checknumber(int32_t nn, bool *oo)
{
    Numbers__lastchecked = nn;
    if(nn == 1)
    {
        (*oo) = true;
    }
    else
    {
        {
            int32_t xx;
            bool ff;
            int32_t rr;
            
            xx = 2;
            ff = false;
            while(((xx) != (nn)) &&
            (ff == false))
            {
                rr = nn % xx;
                if(rr == 0)
                {
                    ff = true;
                }
                xx = xx+1;
            }
            if(ff == true)
            {
                (*oo) = false;
            }
            else
            {
                (*oo) = true;
            }
        }
    }
}

void Numbers__showprevious(int32_t *oo)
{
    (*oo) = Numbers__lastchecked;
}

