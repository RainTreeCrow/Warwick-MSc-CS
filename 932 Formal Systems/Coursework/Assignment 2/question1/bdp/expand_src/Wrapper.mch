/* Wrapper
 * Author: 
 * Creation date: 06/01/2024
 */
MACHINE
    Wrapper ( qlen , ELEM )
INCLUDES
    Buffer ( qlen , ELEM )
PROMOTES
    add , remove , emptyquery , fullquery , contentsquery
CONSTRAINTS
    qlen : NAT1
SETS
    MSG = { success , emptybuffer , fullbuffer }
    /* one success message and two types of errors */
OPERATIONS
    mm <-- wrapadd ( xx ) =
    PRE xx : ELEM
    THEN mm :: MSG
    END ;

    mm , ee <-- wrapremove =
    BEGIN mm :: MSG || ee :: ELEM END ;

    rr <-- wrapemptyquery =
    rr <-- emptyquery ;

    rr <-- wrapfullquery =
    rr <-- fullquery ;

    oo <-- wrapcontentsquery =
    oo <-- contentsquery
END
