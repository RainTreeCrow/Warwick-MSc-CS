/******************************* CLEARSY *************************************
* File : $Id: $
* (C) 1998 CLEARSY
*
* Description :  L_ARRAY5_RANGE modelizes a 2 dimensions array  
*
*
* History : $Log: $
*
******************************************************************************/
MACHINE
  /*----------------------------------------------------------------------**
  L_ARRAY5_RANGE: specification of a 2 dimensions array with the total
  function:
  .  arr_rge: LACR_RANGE --> (LACR_INDEX --> LACR_VALUE)
  where LACR_RANGE = LACR_minrge..LACR_maxrge, LACR_INDEX = 0..LACR_maxidx.
  LACR_RANGE is the line numbers set, LACR_INDEX is the row numbers set, LACR_VALUE is the
  possible values set for an array element. Operations on elements groups
  can be performed choosing interval indexes for LACR_RANGE and LACR_INDEX.
  LACR_VALUE is now an interval minval..maxval.
  L_ARRAY4_RANGE adds to the operations of L_ARRAY4_RANGE the ascending sort
  of the elements of a line indexed by ii..jj.
  **----------------------------------------------------------------------*/
  L_ARRAY5_RANGE ( LACR_minrge , LACR_maxrge , LACR_maxidx , LACR_minval , LACR_maxval )

  /***** copied part from L_ARRAY4_RANGE *****/
CONSTRAINTS
  LACR_maxidx : NAT1 &
  LACR_minrge : NAT &
  LACR_maxrge : NAT &
  LACR_minval : NAT &
  LACR_maxval : NAT &
  LACR_minrge < LACR_maxrge &
  LACR_minval <= LACR_maxval

DEFINITIONS
  LACR_RANGE == LACR_minrge .. LACR_maxrge ;
  LACR_INDEX == 0 .. LACR_maxidx ;
  LACR_VALUE == LACR_minval .. LACR_maxval

ABSTRACT_VARIABLES
  arr_rge

INVARIANT
  arr_rge : LACR_RANGE --> ( LACR_INDEX --> LACR_VALUE )

INITIALISATION
  arr_rge :: LACR_RANGE --> ( LACR_INDEX --> LACR_VALUE )

OPERATIONS

  /*----------------------------------------------------------------------**
  VAL_ARR_RGE: returns the value of an array element.
  **----------------------------------------------------------------------*/
  value <-- VAL_ARR_RGE ( range , index ) = PRE
    range : LACR_RANGE &
    index : LACR_INDEX
  THEN
    value := arr_rge ( range ) ( index )
  END ;

  /*----------------------------------------------------------------------**
  STR_ARR_RGE: writes into an array element.
  **----------------------------------------------------------------------*/
  STR_ARR_RGE ( range , index , value ) = PRE
    range : LACR_RANGE &
    index : LACR_INDEX &
    value : LACR_VALUE
  THEN
    arr_rge ( range ) ( index ) := value
  END ;

  /*----------------------------------------------------------------------**
  COP_ARR_RGE: copies an array line into another one.
  **----------------------------------------------------------------------*/
  COP_ARR_RGE ( dest , src ) = PRE
    dest : LACR_RANGE &
    src : LACR_RANGE
  THEN
    arr_rge := arr_rge <+ { dest |-> arr_rge ( src ) }
  END ;

  /*----------------------------------------------------------------------**
  CMP_ARR_RGE: compares 2 array lines.
  **----------------------------------------------------------------------*/
  bb <-- CMP_ARR_RGE ( range1 , range2 ) = PRE
    range1 : LACR_RANGE &
    range2 : LACR_RANGE
  THEN
    bb := bool ( arr_rge ( range1 ) = arr_rge ( range2 ) )
  END ;


  /*----------------------------------------------------------------------**
  DUP_ARR_RGE: copies an array line into a sequence of following lines.
  **----------------------------------------------------------------------*/
  DUP_ARR_RGE ( dest1 , dest2 , src ) = PRE
    dest1 : NAT &
    dest2 : NAT &
    dest2 /= MAXINT &
    dest1 .. dest2 <: LACR_RANGE &
    src : LACR_RANGE
  THEN
    arr_rge := arr_rge <+ ( dest1 .. dest2 ) * { arr_rge ( src ) }
  END ;


  /*----------------------------------------------------------------------**
  SET_ARR_RGE: copies a value into an index interval of an array line.
  **----------------------------------------------------------------------*/
  SET_ARR_RGE ( range , ii , jj , vv ) = PRE
    range : LACR_RANGE &
    ii : NAT &
    jj : NAT &
    jj /= MAXINT &
    ii .. jj <: LACR_INDEX &
    vv : LACR_VALUE
  THEN
    arr_rge ( range ) := arr_rge ( range ) <+ ( ii .. jj ) * { vv }
  END ;

  /*----------------------------------------------------------------------**
  PCOP_ARR_RGE: copies the ii..jj part of a line into another one at
  a given index (starting at idx_dst). The 2 lines must be different.
  **----------------------------------------------------------------------*/
  PCOP_ARR_RGE ( dest , idx_dst , src , ii , jj ) = PRE
    dest : LACR_RANGE &
    idx_dst : LACR_INDEX &
    src : LACR_RANGE &
    ii : LACR_INDEX &
    jj : LACR_INDEX &
    dest /= src &
    jj <= MAXINT - 1 &
    ii <= jj &
    idx_dst + jj - ii : LACR_INDEX
  THEN
    arr_rge ( dest ) := arr_rge ( dest ) <+ % xx . ( xx : idx_dst .. idx_dst + jj - ii | arr_rge ( src ) ( xx + ii - idx_dst ) )
  END ;

  /*----------------------------------------------------------------------**
  PCMP_ARR_RGE: searches for the first different element in the ii..jj part
  of the line rng1 and the part of the line rng2 starting at index idx2.
  The boolean bb is true if the searc succeeds, and in this case, the index
  idx of this element (included between ii and jj) is returned.
  **----------------------------------------------------------------------*/
  idx , bb <-- PCMP_ARR_RGE ( rng2 , idx2 , rng1 , ii , jj ) = PRE
    rng2 : LACR_RANGE &
    idx2 : LACR_INDEX &
    rng1 : LACR_RANGE &
    ii : LACR_INDEX &
    jj : LACR_INDEX &
    ii <= jj &
    idx2 + jj - ii : LACR_INDEX
  THEN
    ANY nidx , nbb , sol WHERE
      nidx : NAT &
      nbb : BOOL &
      sol = { xx | xx : ii .. jj & arr_rge ( rng1 ) ( xx ) /= arr_rge ( rng2 ) ( xx + idx2 - ii ) } &
      ( sol /= {} => nidx = min ( sol ) ) &
      nbb = bool ( sol /= {} )
    THEN
      idx := nidx ||
      bb := nbb
    END
  END ;

  /*----------------------------------------------------------------------**
  SWAP_RGE : echange de deux elements d'une ligne.
  **----------------------------------------------------------------------*/
  SWAP_RGE ( rng , ii , jj ) = PRE
    rng : LACR_RANGE &
    ii : LACR_INDEX &
    jj : LACR_INDEX
  THEN
    arr_rge ( rng ) := arr_rge ( rng ) <+ { ii |-> arr_rge ( rng ) ( jj ) , jj |-> arr_rge ( rng ) ( ii ) }
  END ;

  /*----------------------------------------------------------------------**
  RIGHT_SHIFT_RGE: the ii..jj part of the line rng is copied into the
  ii+nn..jj+nn part of the line (right shift of nn elements).
  **----------------------------------------------------------------------*/
  RIGHT_SHIFT_RGE ( rng , ii , jj , nn ) = PRE
    rng : LACR_RANGE &
    jj : LACR_INDEX &
    ii : LACR_INDEX &
    nn : LACR_INDEX &
    jj + nn : LACR_INDEX &
    ii <= jj
  THEN
    arr_rge ( rng ) := arr_rge ( rng ) <+ % xx . ( xx : ii + nn .. jj + nn | arr_rge ( rng ) ( xx - nn ) )
  END ;

  /*----------------------------------------------------------------------**
  LEFT_SHIFT_RGE: the ii..jj part of the line rng is copied into the
  ii-nn..jj-nn part of the line (left shift of nn elements).
  **----------------------------------------------------------------------*/
  LEFT_SHIFT_RGE ( rng , ii , jj , nn ) = PRE
    rng : LACR_RANGE &
    jj : LACR_INDEX &
    jj <= MAXINT - 1 &
    ii : LACR_INDEX &
    ii <= jj &
    nn : NAT &
    nn <= ii
  THEN
    arr_rge ( rng ) := arr_rge ( rng ) <+ % xx . ( ( xx : LACR_INDEX & ( xx + nn ) : ii .. jj ) | arr_rge ( rng ) ( xx + nn ) )
  END ;

  /*----------------------------------------------------------------------**
  SEARCH_MIN_EQL_RGE: searches for an element of the line rng equal to vv, 
  scanning the ii..jj range starting at ii.
  **----------------------------------------------------------------------*/
  rr , bb <-- SEARCH_MIN_EQL_RGE ( rng , ii , jj , vv ) = PRE
    rng : LACR_RANGE &
    jj : LACR_INDEX &
    ii : LACR_INDEX &
    ii <= jj &
    vv : LACR_VALUE
  THEN
    ANY nrr , nbb , sol WHERE
      nrr : NAT &
      nbb : BOOL &
      sol = ( ii .. jj <| arr_rge ( rng ) ) ~ [ { vv } ] &
      ( sol /= {} => nrr = min ( sol ) ) &
      nbb = bool ( sol /= {} )
    THEN
      rr := nrr ||
      bb := nbb
    END
  END ;

  /*----------------------------------------------------------------------**
  SEARCH_MIN_EQL_RGE: searches for an element of the line rng equal to vv, 
  scanning the ii..jj range starting at jj.
  **----------------------------------------------------------------------*/
  rr , bb <-- SEARCH_MAX_EQL_RGE ( rng , ii , jj , vv ) = PRE
    rng : LACR_RANGE &
    jj : LACR_INDEX &
    ii : LACR_INDEX &
    ii <= jj &
    vv : LACR_VALUE
  THEN
    ANY nrr , nbb , sol WHERE
      nrr : NAT &
      nbb : BOOL &
      sol = ( ii .. jj <| arr_rge ( rng ) ) ~ [ { vv } ] &
      ( sol /= {} => nrr = max ( sol ) ) &
      nbb = bool ( sol /= {} )
    THEN
      rr := nrr ||
      bb := nbb
    END
  END ;

  /*----------------------------------------------------------------------**
  REVERSE_RGE: inverts line elements at indexes ii..jj.
  **----------------------------------------------------------------------*/
  REVERSE_RGE ( rng , ii , jj ) = PRE
    rng : LACR_RANGE &
    jj : LACR_INDEX &
    ii : LACR_INDEX
  THEN
    arr_rge ( rng ) := arr_rge ( rng ) <+ % xx . ( xx : ii .. jj | arr_rge ( rng ) ( jj + ii - xx ) )
  END ;

  /*----------------------------------------------------------------------**
  SEARCH_MIN_GEQ_RGE: search for an element superior or equal to vv in the
  range jj..kk of the line rng starting at jj.
  **----------------------------------------------------------------------*/
  ii , bb <-- SEARCH_MIN_GEQ_RGE ( rng , jj , kk , vv ) = PRE
    rng : LACR_RANGE &
    kk : LACR_INDEX &
    kk /= MAXINT &
    jj : LACR_INDEX &
    vv : LACR_VALUE &
    jj <= kk
  THEN
    LET res BE
      res = min ( { xx | xx : jj .. kk &
      arr_rge ( rng ) ( xx ) >= vv } \/ { kk + 1 } )
    IN
      ii := res ||
      bb := bool ( res /= kk + 1 )
    END
  END ;

  /***** end of copied part from L_ARRAY4_RANGE *****/

  /*----------------------------------------------------------------------**
  ASCENDING_SORT_RGE: ascending sort of range ii..jj of line rng.
  **----------------------------------------------------------------------*/
  ASCENDING_SORT_RGE ( rng , ii , jj ) = PRE
    rng : LACR_RANGE &
    jj : LACR_INDEX &
    jj <= MAXINT - 1 &
    ii : LACR_INDEX &
    ii <= MAXINT - 1
  THEN
    ANY ff , bb WHERE
      ff : ii .. jj >->> ii .. jj &
      bb : LACR_INDEX +-> LACR_VALUE &
      bb = ( ff ; arr_rge ( rng ) ) &
      ! uu . ( uu : ii .. jj - 1 => bb ( uu ) <= bb ( uu + 1 ) )
    THEN
      arr_rge ( rng ) := arr_rge ( rng ) <+ bb
    END
  END


END
