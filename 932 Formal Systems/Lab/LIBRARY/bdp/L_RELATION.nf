Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(L_RELATION))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(L_RELATION))==(Machine(L_RELATION));
  Level(Machine(L_RELATION))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(L_RELATION)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(L_RELATION))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(L_RELATION))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(L_RELATION))==(?);
  List_Includes(Machine(L_RELATION))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(L_RELATION))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(L_RELATION))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(L_RELATION))==(?);
  Context_List_Variables(Machine(L_RELATION))==(?);
  Abstract_List_Variables(Machine(L_RELATION))==(?);
  Local_List_Variables(Machine(L_RELATION))==(theRelation);
  List_Variables(Machine(L_RELATION))==(theRelation);
  External_List_Variables(Machine(L_RELATION))==(theRelation)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(L_RELATION))==(?);
  Abstract_List_VisibleVariables(Machine(L_RELATION))==(?);
  External_List_VisibleVariables(Machine(L_RELATION))==(?);
  Expanded_List_VisibleVariables(Machine(L_RELATION))==(?);
  List_VisibleVariables(Machine(L_RELATION))==(?);
  Internal_List_VisibleVariables(Machine(L_RELATION))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(L_RELATION))==(btrue);
  Gluing_List_Invariant(Machine(L_RELATION))==(btrue);
  Expanded_List_Invariant(Machine(L_RELATION))==(btrue);
  Abstract_List_Invariant(Machine(L_RELATION))==(btrue);
  Context_List_Invariant(Machine(L_RELATION))==(btrue);
  List_Invariant(Machine(L_RELATION))==(theRelation: DOMAIN_SET <-> RANGE_SET & card(theRelation)<=max_nb_2tupple)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(L_RELATION))==(btrue);
  Abstract_List_Assertions(Machine(L_RELATION))==(btrue);
  Context_List_Assertions(Machine(L_RELATION))==(btrue);
  List_Assertions(Machine(L_RELATION))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(L_RELATION))==(theRelation:={});
  Context_List_Initialisation(Machine(L_RELATION))==(skip);
  List_Initialisation(Machine(L_RELATION))==(theRelation:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(L_RELATION))==(DOMAIN_SET,RANGE_SET,max_nb_2tupple)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(L_RELATION))==(btrue);
  List_Constraints(Machine(L_RELATION))==(max_nb_2tupple: NAT1 & max_nb_2tupple>1 & DOMAIN_SET: FIN(INTEGER) & not(DOMAIN_SET = {}) & RANGE_SET: FIN(INTEGER) & not(RANGE_SET = {}))
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(L_RELATION))==(op_reset,op_isFullRelation,op_add,op_remove,op_cardinal,op_belongsTo);
  List_Operations(Machine(L_RELATION))==(op_reset,op_isFullRelation,op_add,op_remove,op_cardinal,op_belongsTo)
END
&
THEORY ListInputX IS
  List_Input(Machine(L_RELATION),op_reset)==(?);
  List_Input(Machine(L_RELATION),op_isFullRelation)==(?);
  List_Input(Machine(L_RELATION),op_add)==(a_elem1,a_elem2);
  List_Input(Machine(L_RELATION),op_remove)==(a_elem1,a_elem2);
  List_Input(Machine(L_RELATION),op_cardinal)==(?);
  List_Input(Machine(L_RELATION),op_belongsTo)==(a_elem1,a_elem2)
END
&
THEORY ListOutputX IS
  List_Output(Machine(L_RELATION),op_reset)==(?);
  List_Output(Machine(L_RELATION),op_isFullRelation)==(r_bb);
  List_Output(Machine(L_RELATION),op_add)==(?);
  List_Output(Machine(L_RELATION),op_remove)==(?);
  List_Output(Machine(L_RELATION),op_cardinal)==(r_nn);
  List_Output(Machine(L_RELATION),op_belongsTo)==(r_bb)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(L_RELATION),op_reset)==(op_reset);
  List_Header(Machine(L_RELATION),op_isFullRelation)==(r_bb <-- op_isFullRelation);
  List_Header(Machine(L_RELATION),op_add)==(op_add(a_elem1,a_elem2));
  List_Header(Machine(L_RELATION),op_remove)==(op_remove(a_elem1,a_elem2));
  List_Header(Machine(L_RELATION),op_cardinal)==(r_nn <-- op_cardinal);
  List_Header(Machine(L_RELATION),op_belongsTo)==(r_bb <-- op_belongsTo(a_elem1,a_elem2))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(L_RELATION),op_reset)==(btrue);
  List_Precondition(Machine(L_RELATION),op_isFullRelation)==(btrue);
  List_Precondition(Machine(L_RELATION),op_add)==(a_elem1: DOMAIN_SET & a_elem2: RANGE_SET & card(theRelation)<max_nb_2tupple & a_elem1|->a_elem2/:theRelation);
  List_Precondition(Machine(L_RELATION),op_remove)==(a_elem1: DOMAIN_SET & a_elem2: RANGE_SET);
  List_Precondition(Machine(L_RELATION),op_cardinal)==(btrue);
  List_Precondition(Machine(L_RELATION),op_belongsTo)==(a_elem1: DOMAIN_SET & a_elem2: RANGE_SET)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(L_RELATION),op_belongsTo)==(a_elem1: DOMAIN_SET & a_elem2: RANGE_SET | r_bb:=bool(a_elem1|->a_elem2: theRelation));
  Expanded_List_Substitution(Machine(L_RELATION),op_cardinal)==(btrue | r_nn:=card(theRelation));
  Expanded_List_Substitution(Machine(L_RELATION),op_remove)==(a_elem1: DOMAIN_SET & a_elem2: RANGE_SET | theRelation:=theRelation-{a_elem1|->a_elem2});
  Expanded_List_Substitution(Machine(L_RELATION),op_add)==(a_elem1: DOMAIN_SET & a_elem2: RANGE_SET & card(theRelation)<max_nb_2tupple & a_elem1|->a_elem2/:theRelation | theRelation:=theRelation\/{a_elem1|->a_elem2});
  Expanded_List_Substitution(Machine(L_RELATION),op_isFullRelation)==(btrue | r_bb:=bool(card(theRelation) = max_nb_2tupple));
  Expanded_List_Substitution(Machine(L_RELATION),op_reset)==(btrue | theRelation:={});
  List_Substitution(Machine(L_RELATION),op_reset)==(theRelation:={});
  List_Substitution(Machine(L_RELATION),op_isFullRelation)==(r_bb:=bool(card(theRelation) = max_nb_2tupple));
  List_Substitution(Machine(L_RELATION),op_add)==(theRelation:=theRelation\/{a_elem1|->a_elem2});
  List_Substitution(Machine(L_RELATION),op_remove)==(theRelation:=theRelation-{a_elem1|->a_elem2});
  List_Substitution(Machine(L_RELATION),op_cardinal)==(r_nn:=card(theRelation));
  List_Substitution(Machine(L_RELATION),op_belongsTo)==(r_bb:=bool(a_elem1|->a_elem2: theRelation))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(L_RELATION))==(?);
  Inherited_List_Constants(Machine(L_RELATION))==(?);
  List_Constants(Machine(L_RELATION))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(L_RELATION))==(?);
  Context_List_Defered(Machine(L_RELATION))==(?);
  Context_List_Sets(Machine(L_RELATION))==(?);
  List_Valuable_Sets(Machine(L_RELATION))==(?);
  Inherited_List_Enumerated(Machine(L_RELATION))==(?);
  Inherited_List_Defered(Machine(L_RELATION))==(?);
  Inherited_List_Sets(Machine(L_RELATION))==(?);
  List_Enumerated(Machine(L_RELATION))==(?);
  List_Defered(Machine(L_RELATION))==(?);
  List_Sets(Machine(L_RELATION))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(L_RELATION))==(?);
  Expanded_List_HiddenConstants(Machine(L_RELATION))==(?);
  List_HiddenConstants(Machine(L_RELATION))==(?);
  External_List_HiddenConstants(Machine(L_RELATION))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(L_RELATION))==(btrue);
  Context_List_Properties(Machine(L_RELATION))==(btrue);
  Inherited_List_Properties(Machine(L_RELATION))==(btrue);
  List_Properties(Machine(L_RELATION))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(L_RELATION),op_reset)==(?);
  List_ANY_Var(Machine(L_RELATION),op_isFullRelation)==(?);
  List_ANY_Var(Machine(L_RELATION),op_add)==(?);
  List_ANY_Var(Machine(L_RELATION),op_remove)==(?);
  List_ANY_Var(Machine(L_RELATION),op_cardinal)==(?);
  List_ANY_Var(Machine(L_RELATION),op_belongsTo)==(?);
  List_ANY_Var(Machine(L_RELATION),?)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(L_RELATION)) == (? | ? | theRelation | ? | op_reset,op_isFullRelation,op_add,op_remove,op_cardinal,op_belongsTo | ? | ? | DOMAIN_SET,RANGE_SET,max_nb_2tupple | L_RELATION);
  List_Of_HiddenCst_Ids(Machine(L_RELATION)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(L_RELATION)) == (?);
  List_Of_VisibleVar_Ids(Machine(L_RELATION)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(L_RELATION)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Machine(L_RELATION)) == (Type(max_nb_2tupple) == Prm(btype(INTEGER,?,?));Type(RANGE_SET) == Prm(SetOf(atype(RANGE_SET,?,?)));Type(DOMAIN_SET) == Prm(SetOf(atype(DOMAIN_SET,?,?))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(L_RELATION)) == (Type(theRelation) == Mvl(SetOf(atype(DOMAIN_SET,?,?)*atype(RANGE_SET,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(L_RELATION)) == (Type(op_belongsTo) == Cst(btype(BOOL,?,?),atype(DOMAIN_SET,?,?)*atype(RANGE_SET,?,?));Type(op_cardinal) == Cst(btype(INTEGER,?,?),No_type);Type(op_remove) == Cst(No_type,atype(DOMAIN_SET,?,?)*atype(RANGE_SET,?,?));Type(op_add) == Cst(No_type,atype(DOMAIN_SET,?,?)*atype(RANGE_SET,?,?));Type(op_isFullRelation) == Cst(btype(BOOL,?,?),No_type);Type(op_reset) == Cst(No_type,No_type));
  Observers(Machine(L_RELATION)) == (Type(op_belongsTo) == Cst(btype(BOOL,?,?),atype(DOMAIN_SET,?,?)*atype(RANGE_SET,?,?));Type(op_cardinal) == Cst(btype(INTEGER,?,?),No_type);Type(op_isFullRelation) == Cst(btype(BOOL,?,?),No_type))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  event_b_project == KO;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO
END
)
