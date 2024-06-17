/******************************* CLEARSY *************************************
* File : $Id: $
* (C) 1998 CLEARSY
*
* Description :    L_RELATION modelizes a binary relation
*
*
* History : $Log: $
*
******************************************************************************/
MACHINE
  /*----------------------------------------------------------------------**
  relation from DOMAIN_SET to RANGE_SET, maximum max_nb_2tupple elements
  **----------------------------------------------------------------------*/
  L_RELATION ( DOMAIN_SET , RANGE_SET , max_nb_2tupple )

CONSTRAINTS
  max_nb_2tupple : NAT1 &
  max_nb_2tupple > 1

ABSTRACT_VARIABLES
  theRelation

INVARIANT
  theRelation : DOMAIN_SET <-> RANGE_SET &
  card ( theRelation ) <= max_nb_2tupple

INITIALISATION
  theRelation := {}

OPERATIONS

  op_reset =
  BEGIN
    theRelation := {}
  END ;

  r_bb <-- op_isFullRelation =
  BEGIN
    r_bb := bool ( card ( theRelation ) = max_nb_2tupple )
  END ;

  op_add ( a_elem1 , a_elem2 ) =
  PRE
    a_elem1 : DOMAIN_SET &
    a_elem2 : RANGE_SET &
    card ( theRelation ) < max_nb_2tupple &
    a_elem1 |-> a_elem2 /: theRelation
  THEN
    theRelation := theRelation \/ { a_elem1 |-> a_elem2 }
  END ;

  op_remove ( a_elem1 , a_elem2 ) =
  PRE
    a_elem1 : DOMAIN_SET &
    a_elem2 : RANGE_SET
  THEN
    theRelation := theRelation - { a_elem1 |-> a_elem2 }
  END ;

  r_nn <-- op_cardinal =
  BEGIN
    r_nn := card ( theRelation )
  END ;

  r_bb <-- op_belongsTo ( a_elem1 , a_elem2 ) =
  PRE
    a_elem1 : DOMAIN_SET &
    a_elem2 : RANGE_SET
  THEN
    r_bb := bool ( a_elem1 |-> a_elem2 : theRelation )
  END

END
