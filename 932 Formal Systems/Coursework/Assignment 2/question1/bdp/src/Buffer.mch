/* Buffer
 * Author: Hanzhi Zhang
 * Creation date: 06/01/2024
 */
MACHINE
    Buffer ( qlen , ELEM )
CONSTRAINTS
    qlen : NAT1
ABSTRACT_VARIABLES
    buff
INVARIANT
    buff : seq ( ELEM ) & size ( buff ) <= qlen
INITIALISATION
    buff := <>
SETS
    RESP = { yes , no }
OPERATIONS
    add ( xx ) =
    PRE xx : ELEM & size ( buff ) < qlen
    THEN buff := buff <- xx
    END ;

    ee <-- remove =
    PRE buff /= <>
    THEN ee := first ( buff ) || buff := tail ( buff )
    END ;

    rr <-- emptyquery =
    IF buff = <> THEN rr := yes ELSE rr := no END ;

    rr <-- fullquery =
    IF size ( buff ) = qlen THEN rr := yes ELSE rr := no END ;

    oo <-- contentsquery = oo := size ( buff )
END
