/* Stats
 * Author: Hanzhi Zhang
 * Creation date: 06/01/2024
 */
MACHINE
    Stats
CONCRETE_CONSTANTS
    maxlen /* the maximum number of records stored */
PROPERTIES
    maxlen : NAT1
ABSTRACT_VARIABLES
    record /* the "situation" */
INVARIANT
    record : seq ( 0 .. 10 ) & size ( record ) <= maxlen
INITIALISATION
    record := []
OPERATIONS
    tested ( nn ) =
    PRE nn : 0 .. 10 & size ( record ) < maxlen
    THEN record := record <- nn
    END ;

    oo <-- querytot =
    oo := size ( record ) ;

    oo <-- queryreg ( nn ) =
    PRE nn : 0 .. 10
    THEN oo := card ( record |> { nn } )
    END ;

    oo <-- querypc ( nn ) =
    PRE nn : 0 .. 10 & size ( record ) /= 0 /* record should not be empty */
    THEN oo := card ( record |> { nn } ) / size ( record ) /* percentage */
    END ;

    oo <-- querymean =
    PRE size ( record ) /= 0 /* record should not be empty */
    THEN oo := SIGMA ( ii ) . ( ii : dom ( record ) | record ( ii ) ) / size ( record )
    END ;

    oo <-- querymedian =
    PRE size ( record ) /= 0
    THEN
        ANY rr /* use nondeterminism to put records in ascending order */
        WHERE rr : seq ( 0 .. 10 ) & size ( rr ) = size ( record )
            & ! nn . ( nn : 0 .. 10 => card ( rr |> { nn } ) = card ( record |> { nn } ) ) /* same count for each mark there is */
            & ! ( ii , jj ) . ( ( ii : 1 .. card ( rr ) & jj : 1 .. card ( rr ) & ii <= jj ) => rr ( ii ) <= rr ( jj ) ) /* order */
        THEN IF size ( record ) mod 2 = 1
            THEN oo := rr ( ( size ( record ) + 1 ) / 2 ) /* N is odd, median is X_{(N+1)/2} */
            ELSE oo := ( rr ( size ( record ) / 2 ) + rr ( size ( record ) / 2 + 1 ) ) / 2
                /* N is even, median is (X_{N/2} + X_{N/2+1}) / 2 */
            END
        END
    END

    /* as we only deal with natural numbers here I have decided to allow rounding down for all divisions */
END
