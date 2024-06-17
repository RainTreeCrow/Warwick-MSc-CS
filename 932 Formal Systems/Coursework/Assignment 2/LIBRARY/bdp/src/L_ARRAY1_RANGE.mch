/******************************* CLEARSY *************************************
* File : $Id: $
* (C) 1998 CLEARSY
*
* Description :    L_ARRAY1_RANGE modelizes a 2 dimensions array 
*
*
* History : $Log: $
*
******************************************************************************/
MACHINE
  /*----------------------------------------------------------------------**
  L_ARRAY1_RANGE: specification of a 2 dimensions array with the total
  function:
  .  arr_rge: LAUR_RANGE --> (LAUR_INDEX --> LAUR_VALUE)
  where LAUR_RANGE = minrge..maxrge, LAUR_INDEX = 0..maxidx.
  LAUR_RANGE is the line numbers set, LAUR_INDEX is the row numbers
  set, LAUR_VALUE is the
  set of possible values for an element. Operations on groups of elements
  can be performed by choosing intervals for LAUR_RANGE and
  LAUR_INDEX.
  **----------------------------------------------------------------------*/
  L_ARRAY1_RANGE ( LAUR_minrge , LAUR_maxrge , LAUR_maxidx , LAUR_VALUE )

CONSTRAINTS
  LAUR_maxidx : NAT1 &
  LAUR_minrge : NAT &
  LAUR_maxrge : NAT &
  LAUR_minrge < LAUR_maxrge





  /***** Part copied from BASIC_ARRAY_RGE *****/

ABSTRACT_VARIABLES
  arr_rge

INVARIANT
  arr_rge : LAUR_minrge .. LAUR_maxrge --> ( 0 .. LAUR_maxidx --> LAUR_VALUE )

INITIALISATION
  arr_rge :: LAUR_minrge .. LAUR_maxrge --> ( 0 .. LAUR_maxidx --> LAUR_VALUE )

OPERATIONS

  /*----------------------------------------------------------------------**
  VAL_ARR_RGE: returns the value of the element of an array.
  **----------------------------------------------------------------------*/
  value <-- VAL_ARR_RGE ( range , index ) = PRE
    range : LAUR_minrge .. LAUR_maxrge &
    index : 0 .. LAUR_maxidx
  THEN
    value := arr_rge ( range ) ( index )
  END ;

  /*----------------------------------------------------------------------**
  STR_ARR_RGE: write in an element of the array.
  **----------------------------------------------------------------------*/
  STR_ARR_RGE ( range , index , value ) = PRE
    range : LAUR_minrge .. LAUR_maxrge &
    index : 0 .. LAUR_maxidx &
    value : LAUR_VALUE
  THEN
    arr_rge ( range ) ( index ) := value
  END ;

  /*----------------------------------------------------------------------**
  COP_ARR_RGE: copies an array line into another one.
  **----------------------------------------------------------------------*/
  COP_ARR_RGE ( dest , src ) = PRE
    dest : LAUR_minrge .. LAUR_maxrge &
    src : LAUR_minrge .. LAUR_maxrge
  THEN
    arr_rge := arr_rge <+ { dest |-> arr_rge ( src ) }
  END ;

  /*----------------------------------------------------------------------**
  CMP_ARR_RGE: compares 2 lines of the array.
  **----------------------------------------------------------------------*/
  bb <-- CMP_ARR_RGE ( range1 , range2 ) = PRE
    range1 : LAUR_minrge .. LAUR_maxrge &
    range2 : LAUR_minrge .. LAUR_maxrge
  THEN
    bb := bool ( arr_rge ( range1 ) = arr_rge ( range2 ) )
  END ;

 /***** fin de la partie copiee de BASIC_ARRAY_RGE *****/


  /*----------------------------------------------------------------------**
  DUP_ARR_RGE: copies an array line in a sequence of following lines.
  **----------------------------------------------------------------------*/
  DUP_ARR_RGE ( dest1 , dest2 , src ) = PRE
    dest1 : NAT &
    dest2 : NAT &
    dest2 /= MAXINT &
    dest1 .. dest2 <: LAUR_minrge .. LAUR_maxrge &
    src : LAUR_minrge .. LAUR_maxrge
  THEN
    arr_rge := arr_rge <+ ( dest1 .. dest2 ) * { arr_rge ( src ) }
  END ;


  /*----------------------------------------------------------------------**
  SET_ARR_RGE: copies a value in an indexes interval of an array line.
  **----------------------------------------------------------------------*/
  SET_ARR_RGE ( range , ii , jj , vv ) = PRE
    range : LAUR_minrge .. LAUR_maxrge &
    ii : NAT &
    jj : NAT &
    jj /= MAXINT &
    ii .. jj <: 0 .. LAUR_maxidx &
    vv : LAUR_VALUE
  THEN
    arr_rge ( range ) := arr_rge ( range ) <+ ( ii .. jj ) * { vv }
  END ;

  /*----------------------------------------------------------------------**
  PCOP_ARR_RGE: copies the part ii..jj of a line in another one at a given
  position (starting at idx_dst). The 2 lines must be different.
  **----------------------------------------------------------------------*/
  PCOP_ARR_RGE ( dest , idx_dst , src , ii , jj ) = PRE
    dest : LAUR_minrge .. LAUR_maxrge &
    idx_dst : 0 .. LAUR_maxidx &
    src : LAUR_minrge .. LAUR_maxrge &
    ii : 0 .. LAUR_maxidx &
    jj : 0 .. LAUR_maxidx &
    dest /= src &
    jj <= MAXINT - 1 &
    ii <= jj &
    idx_dst + jj - ii : 0 .. LAUR_maxidx
  THEN
    arr_rge ( dest ) := arr_rge ( dest ) <+ % xx . ( xx : idx_dst .. idx_dst + jj - ii | arr_rge ( src ) ( xx + ii - idx_dst ) )
  END ;

  /*----------------------------------------------------------------------**
  PCMP_ARR_RGE: searches for the first different element in the ii..jj part
  of the line rng1 and the part of the line rng2 starting at the index idx2.
  The boolean bb is true if the search succeeds, and in this case the index
  idx of this element (between ii and jj) is returned.
  **----------------------------------------------------------------------*/
  idx , bb <-- PCMP_ARR_RGE ( rng2 , idx2 , rng1 , ii , jj ) = PRE
    rng2 : LAUR_minrge .. LAUR_maxrge &
    idx2 : 0 .. LAUR_maxidx &
    rng1 : LAUR_minrge .. LAUR_maxrge &
    ii : 0 .. LAUR_maxidx &
    jj : 0 .. LAUR_maxidx &
    ii <= jj &
    idx2 + jj - ii : 0 .. LAUR_maxidx
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
  END

END
