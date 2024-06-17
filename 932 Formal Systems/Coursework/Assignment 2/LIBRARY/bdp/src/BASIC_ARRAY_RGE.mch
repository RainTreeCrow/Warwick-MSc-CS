/******************************* CLEARSY *************************************
* File : $Id: $
* (C) 1998 CLEARSY
*
* Description :    BASIC_ARRAY_RGE : modelisation for total functions
*
*
* History : $Log: $
*
******************************************************************************/
MACHINE
  /*----------------------------------------------------------------------**
  BASIC_ARRAY_RGE: modelised par total function:
  .  arr_rge: BAR_RANGE --> (BAR_INDEX --> BAR_VALUE) 
  of a 2 dimensions array. BAR_RANGE is the line numbers set,
  BAR_INDEX is the row number sets, BAR_VALUE is the set of possible values for
  an element of the array.
  NB: such a machine cannot be built with BASIC_ARRAY_VAR since the
  following importation would be required:
  .  IMPORT BASIC_ARRAY_VAR( f(BAR_INDEX,BAR_RANGE), BAR_VALUE)
  where f is an unsafe calculation.
  **----------------------------------------------------------------------*/
  BASIC_ARRAY_RGE ( BAR_INDEX , BAR_VALUE , BAR_RANGE )

ABSTRACT_VARIABLES
  arr_rge

INVARIANT
  arr_rge : BAR_RANGE --> ( BAR_INDEX --> BAR_VALUE )

INITIALISATION
  arr_rge :: BAR_RANGE --> ( BAR_INDEX --> BAR_VALUE )

OPERATIONS

  /*----------------------------------------------------------------------**
  VAL_ARR_RGE: return the value of an array element
  **----------------------------------------------------------------------*/
  value <-- VAL_ARR_RGE ( range , index ) = PRE
    range : BAR_RANGE &
    index : BAR_INDEX
  THEN
    value := arr_rge ( range ) ( index )
  END ;

  /*----------------------------------------------------------------------**
  STR_ARR_RGE: write an array element
  **----------------------------------------------------------------------*/
  STR_ARR_RGE ( range , index , value ) = PRE
    range : BAR_RANGE &
    index : BAR_INDEX &
    value : BAR_VALUE
  THEN
    arr_rge ( range ) ( index ) := value
  END ;

  /*----------------------------------------------------------------------**
  COP_ARR_RGE: copy a array row into another row
  **----------------------------------------------------------------------*/
  COP_ARR_RGE ( dest , src ) = PRE
    dest : BAR_RANGE &
    src : BAR_RANGE
  THEN
    arr_rge := arr_rge <+ { dest |-> arr_rge ( src ) }
  END ;

  /*----------------------------------------------------------------------**
  CMP_ARR_RGE: compare 2 array rows
  **----------------------------------------------------------------------*/
  bb <-- CMP_ARR_RGE ( range1 , range2 ) = PRE
    range1 : BAR_RANGE &
    range2 : BAR_RANGE
  THEN
    bb := bool ( arr_rge ( range1 ) = arr_rge ( range2 ) )
  END

END
