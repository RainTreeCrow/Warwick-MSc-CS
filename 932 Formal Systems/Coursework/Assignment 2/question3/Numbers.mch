/* Numbers
 * Author: Hanzhi Zhang
 * Creation date: 06/01/2024
 */
MACHINE
    Numbers
VARIABLES
    lastchecked
INVARIANT
    lastchecked : NAT
INITIALISATION
    lastchecked := 0
OPERATIONS
    oo <-- checknumber(nn) =
    PRE nn : NAT1
    THEN BEGIN lastchecked := nn ||
            IF !xx.(xx : 2..nn-1 => nn mod xx /= 0)
            THEN oo := TRUE
            ELSE oo := FALSE
            END
        END
    END;
    
    oo <-- showprevious = oo := lastchecked
END