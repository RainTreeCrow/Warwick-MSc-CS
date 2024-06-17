/******************************* CLEARSY *************************************
* File : $Id: $
* (C) 1998 CLEARSY
*
* Description :    L_ARRAY4 modelizes a total function
*
*
* History : $Log: $
*
******************************************************************************/
MACHINE
  /*----------------------------------------------------------------------**
  arr_vrb is a total function from 0..LAQ_maxidx into LAQ_minval..LAQ_maxval. This
  machine is rarely used, it is mainly used to build L_ARRAY5.
  **----------------------------------------------------------------------*/
  L_ARRAY4 ( LAQ_minval , LAQ_maxval , LAQ_maxidx )

CONSTRAINTS
  LAQ_minval : NAT &
  LAQ_maxval : NAT &
  LAQ_maxidx : NAT1 &
  LAQ_minval <= LAQ_maxval

DEFINITIONS
  LAQ_INDEX == 0 .. LAQ_maxidx ;
  LAQ_VALUE == LAQ_minval .. LAQ_maxval

ABSTRACT_VARIABLES
  /***** copied part from L_ARRAY3 *****/
  arr_vrb

INVARIANT
  arr_vrb : LAQ_INDEX --> LAQ_VALUE

INITIALISATION
  arr_vrb :: LAQ_INDEX --> LAQ_VALUE

OPERATIONS

  vv <-- VAL_ARRAY ( ii ) = PRE
    ii : LAQ_INDEX
  THEN
    vv := arr_vrb ( ii )
  END ;

  STR_ARRAY ( ii , vv ) = PRE
    ii : LAQ_INDEX &
    vv : LAQ_VALUE
  THEN
    arr_vrb ( ii ) := vv
  END ;

  SET_ARRAY ( ii , jj , vv ) = PRE
    ii : NAT &
    jj : NAT &
    jj /= MAXINT &
    ii .. jj <: LAQ_INDEX &
    vv : LAQ_VALUE
  THEN
    arr_vrb := arr_vrb <+ ( ii .. jj ) * { vv }
  END ;

  /*----------------------------------------------------------------------**
  SWAP: swap 2 elements.
  **----------------------------------------------------------------------*/
  SWAP_ARRAY ( ii , jj ) = PRE
    ii : LAQ_INDEX &
    jj : LAQ_INDEX
  THEN
    arr_vrb := arr_vrb <+ { ii |-> arr_vrb ( jj ) , jj |-> arr_vrb ( ii ) }
  END ;

  /*----------------------------------------------------------------------**
  RIGHT_SHIFT: the ii..jj part is copied into the ii+nn..jj+nn part of the
  array (right shift of nn elements).
  **----------------------------------------------------------------------*/
  RIGHT_SHIFT_ARRAY ( ii , jj , nn ) = PRE
    jj : LAQ_INDEX &
    ii : LAQ_INDEX &
    nn : LAQ_INDEX &
    jj + nn : LAQ_INDEX &
    ii <= jj
  THEN
    arr_vrb := arr_vrb <+ % xx . ( xx : ii + nn .. jj + nn | arr_vrb ( xx - nn ) )
  END ;

  /*----------------------------------------------------------------------**
  LEFT_SHIFT: the ii..jj part is copied into the ii-nn..jj-nn part of the
  array (left shift of nn elements).
  **----------------------------------------------------------------------*/
  LEFT_SHIFT_ARRAY ( ii , jj , nn ) = PRE
    jj : LAQ_INDEX &
    jj <= MAXINT - 1 &
    ii : LAQ_INDEX &
    ii <= jj &
    nn : NAT &
    nn <= ii
  THEN
    arr_vrb := arr_vrb <+ % xx . ( ( xx : LAQ_INDEX & ( xx + nn ) : ii .. jj ) | arr_vrb ( xx + nn ) )
  END ;

  /*----------------------------------------------------------------------**
  SEARCH_MAX_EQL: searches an array element equal to vv, scanning the
  ii..jj range, and starting at jj.
  **----------------------------------------------------------------------*/
  rr , bb <-- SEARCH_MAX_EQL_ARRAY ( ii , jj , vv ) = PRE
    jj : LAQ_INDEX &
    ii : LAQ_INDEX &
    ii <= jj &
    vv : LAQ_minval .. LAQ_maxval
  THEN
    ANY nrr , nbb , sol WHERE
      nrr : NAT &
      nbb : BOOL &
      sol = ( ii .. jj <| arr_vrb ) ~ [ { vv } ] &
      ( sol /= {} => nrr = max ( sol ) ) &
      nbb = bool ( sol /= {} )
    THEN
      rr := nrr ||
      bb := nbb
    END
  END ;

  /*----------------------------------------------------------------------**
  SEARCH_MAX_EQL: searches for an array element equal to vv, scanning the
  ii..jj part, and starting at ii.
  **----------------------------------------------------------------------*/
  rr , bb <-- SEARCH_MIN_EQL_ARRAY ( ii , jj , vv ) = PRE
    jj : LAQ_INDEX &
    ii : LAQ_INDEX &
    ii <= jj &
    vv : LAQ_VALUE
  THEN
    ANY nrr , nbb , sol WHERE
      nrr : NAT &
      nbb : BOOL &
      sol = ( ii .. jj <| arr_vrb ) ~ [ { vv } ] &
      ( sol /= {} => nrr = min ( sol ) ) &
      nbb = bool ( sol /= {} )
    THEN
      rr := nrr ||
      bb := nbb
    END
  END ;

  /*----------------------------------------------------------------------**
  REVERSE: inverts the orders of the ii..jj part.
  **----------------------------------------------------------------------*/
  REVERSE_ARRAY ( ii , jj ) = PRE
    jj : LAQ_INDEX &
    ii : LAQ_INDEX
  THEN
    arr_vrb := arr_vrb <+ % xx . ( xx : ii .. jj | arr_vrb ( jj + ii - xx ) )
  END ;

  /***** end of copied part from L_ARRAY3 *****/

  /*----------------------------------------------------------------------**
  SEARCH_MIN_GEQ: searches an element greater or equal to vv in jj..kk
  starting at jj.
  **----------------------------------------------------------------------*/
  ii , bb <-- SEARCH_MIN_GEQ_ARRAY ( jj , kk , vv ) = PRE
    kk : LAQ_INDEX &
    kk /= MAXINT &
    jj : LAQ_INDEX &
    vv : LAQ_VALUE &
    jj <= kk
  THEN
    LET res BE
      res = min ( { xx | xx : jj .. kk &
      arr_vrb ( xx ) >= vv } \/ { kk + 1 } )
    IN
      ii := res ||
      bb := bool ( res /= kk + 1 )
    END
  END

END
