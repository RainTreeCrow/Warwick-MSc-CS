/******************************* CLEARSY *************************************
* File : $Id: $
* (C) 1998 CLEARSY
*
* Description :    L_SET modelizes a set variable
*
*
* History : $Log: $
*
******************************************************************************/
MACHINE
  /*----------------------------------------------------------------------**
  set_vrb is a set of elements of LSET_VALUE, ist maximum size is maxsize.
  **----------------------------------------------------------------------*/ 
  L_SET(LSET_maxsize,LSET_VALUE)

CONSTRAINTS
  LSET_maxsize: 1..MAXINT-1

VARIABLES
  set_vrb

INVARIANT
  set_vrb : iseq(LSET_VALUE) &
  size(set_vrb) <= LSET_maxsize

INITIALISATION
  set_vrb:= []

OPERATIONS

  /*----------------------------------------------------------------------**
  CARD_SET: returns the set cardinal.
  **----------------------------------------------------------------------*/ 
  vv <-- CARD_SET =
  BEGIN
    vv:=size(set_vrb)
  END;

  /*----------------------------------------------------------------------**
  IS_FULL_SET: tests if the set is full (card = LSET_maxsize).
  **----------------------------------------------------------------------*/ 
  vv <-- IS_FULL_SET =
  BEGIN
    vv := bool(size(set_vrb) = LSET_maxsize)
  END;

  /*----------------------------------------------------------------------**
  IS_INDEX_SET: tests if an index is valid.
  **----------------------------------------------------------------------*/ 
  vv <-- IS_INDEX_SET(ii) = PRE
    ii: NAT
  THEN
    vv:=bool(ii : 1..size(set_vrb))
  END;

  /*----------------------------------------------------------------------**
  VAL_SET: returns an element of the set.
  **----------------------------------------------------------------------*/ 
  vv <-- VAL_SET(ii) = PRE
    ii: NAT &
    ii: 1..size(set_vrb)
  THEN
    vv:= set_vrb(ii)
  END;

  /*----------------------------------------------------------------------**
  FIND_SET: searches for a set element.
  **----------------------------------------------------------------------*/ 
  rr,ind <-- FIND_SET(ii) = PRE
    ii: LSET_VALUE
  THEN
    SELECT
      ii : ran(set_vrb)
    THEN
      rr:=TRUE ||
      ind := set_vrb~(ii)
    ELSE
      rr:=FALSE ||
      ind :: NAT
    END
  END;

  /*----------------------------------------------------------------------**
  RMV_SET: removes a set element.
  **----------------------------------------------------------------------*/ 
  RMV_SET(ii) = PRE
    ii: LSET_VALUE 
  THEN
    SELECT
      ii : ran(set_vrb)
    THEN
      set_vrb:=(set_vrb /|\ set_vrb~(ii)-1) ^ (set_vrb\|/set_vrb~(ii))
	ELSE
      skip
    END
  END;

  /*----------------------------------------------------------------------**
  INS_SET: adds an element to the set.
  **----------------------------------------------------------------------*/ 
  INS_SET(ii) = PRE
    ii: LSET_VALUE &
    card(ran(set_vrb) \/ {ii}) <= LSET_maxsize
  THEN
    SELECT
      not(ii: ran(set_vrb))
    THEN
      set_vrb:=set_vrb <- ii
    ELSE
      skip
    END
  END;

  /*----------------------------------------------------------------------**
  CLR_SET: clears the set.
  **----------------------------------------------------------------------*/ 
  CLR_SET =
  BEGIN
    set_vrb := []
  END

END
