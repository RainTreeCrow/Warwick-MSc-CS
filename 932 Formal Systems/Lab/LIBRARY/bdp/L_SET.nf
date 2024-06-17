Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(L_SET))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(L_SET))==(Machine(L_SET));
  Level(Machine(L_SET))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(L_SET)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(L_SET))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(L_SET))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(L_SET))==(?);
  List_Includes(Machine(L_SET))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(L_SET))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(L_SET))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(L_SET))==(?);
  Context_List_Variables(Machine(L_SET))==(?);
  Abstract_List_Variables(Machine(L_SET))==(?);
  Local_List_Variables(Machine(L_SET))==(set_vrb);
  List_Variables(Machine(L_SET))==(set_vrb);
  External_List_Variables(Machine(L_SET))==(set_vrb)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(L_SET))==(?);
  Abstract_List_VisibleVariables(Machine(L_SET))==(?);
  External_List_VisibleVariables(Machine(L_SET))==(?);
  Expanded_List_VisibleVariables(Machine(L_SET))==(?);
  List_VisibleVariables(Machine(L_SET))==(?);
  Internal_List_VisibleVariables(Machine(L_SET))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(L_SET))==(btrue);
  Gluing_List_Invariant(Machine(L_SET))==(btrue);
  Expanded_List_Invariant(Machine(L_SET))==(btrue);
  Abstract_List_Invariant(Machine(L_SET))==(btrue);
  Context_List_Invariant(Machine(L_SET))==(btrue);
  List_Invariant(Machine(L_SET))==(set_vrb: iseq(LSET_VALUE) & size(set_vrb)<=LSET_maxsize)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(L_SET))==(btrue);
  Abstract_List_Assertions(Machine(L_SET))==(btrue);
  Context_List_Assertions(Machine(L_SET))==(btrue);
  List_Assertions(Machine(L_SET))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(L_SET))==(set_vrb:=<>);
  Context_List_Initialisation(Machine(L_SET))==(skip);
  List_Initialisation(Machine(L_SET))==(set_vrb:=<>)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(L_SET))==(LSET_maxsize,LSET_VALUE)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(L_SET))==(btrue);
  List_Constraints(Machine(L_SET))==(LSET_maxsize: 1..MAXINT-1 & LSET_VALUE: FIN(INTEGER) & not(LSET_VALUE = {}))
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(L_SET))==(CARD_SET,IS_FULL_SET,IS_INDEX_SET,VAL_SET,FIND_SET,RMV_SET,INS_SET,CLR_SET);
  List_Operations(Machine(L_SET))==(CARD_SET,IS_FULL_SET,IS_INDEX_SET,VAL_SET,FIND_SET,RMV_SET,INS_SET,CLR_SET)
END
&
THEORY ListInputX IS
  List_Input(Machine(L_SET),CARD_SET)==(?);
  List_Input(Machine(L_SET),IS_FULL_SET)==(?);
  List_Input(Machine(L_SET),IS_INDEX_SET)==(ii);
  List_Input(Machine(L_SET),VAL_SET)==(ii);
  List_Input(Machine(L_SET),FIND_SET)==(ii);
  List_Input(Machine(L_SET),RMV_SET)==(ii);
  List_Input(Machine(L_SET),INS_SET)==(ii);
  List_Input(Machine(L_SET),CLR_SET)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(L_SET),CARD_SET)==(vv);
  List_Output(Machine(L_SET),IS_FULL_SET)==(vv);
  List_Output(Machine(L_SET),IS_INDEX_SET)==(vv);
  List_Output(Machine(L_SET),VAL_SET)==(vv);
  List_Output(Machine(L_SET),FIND_SET)==(rr,ind);
  List_Output(Machine(L_SET),RMV_SET)==(?);
  List_Output(Machine(L_SET),INS_SET)==(?);
  List_Output(Machine(L_SET),CLR_SET)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(L_SET),CARD_SET)==(vv <-- CARD_SET);
  List_Header(Machine(L_SET),IS_FULL_SET)==(vv <-- IS_FULL_SET);
  List_Header(Machine(L_SET),IS_INDEX_SET)==(vv <-- IS_INDEX_SET(ii));
  List_Header(Machine(L_SET),VAL_SET)==(vv <-- VAL_SET(ii));
  List_Header(Machine(L_SET),FIND_SET)==(rr,ind <-- FIND_SET(ii));
  List_Header(Machine(L_SET),RMV_SET)==(RMV_SET(ii));
  List_Header(Machine(L_SET),INS_SET)==(INS_SET(ii));
  List_Header(Machine(L_SET),CLR_SET)==(CLR_SET)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(L_SET),CARD_SET)==(btrue);
  List_Precondition(Machine(L_SET),IS_FULL_SET)==(btrue);
  List_Precondition(Machine(L_SET),IS_INDEX_SET)==(ii: NAT);
  List_Precondition(Machine(L_SET),VAL_SET)==(ii: NAT & ii: 1..size(set_vrb));
  List_Precondition(Machine(L_SET),FIND_SET)==(ii: LSET_VALUE);
  List_Precondition(Machine(L_SET),RMV_SET)==(ii: LSET_VALUE);
  List_Precondition(Machine(L_SET),INS_SET)==(ii: LSET_VALUE & card(ran(set_vrb)\/{ii})<=LSET_maxsize);
  List_Precondition(Machine(L_SET),CLR_SET)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(L_SET),CLR_SET)==(btrue | set_vrb:=<>);
  Expanded_List_Substitution(Machine(L_SET),INS_SET)==(ii: LSET_VALUE & card(ran(set_vrb)\/{ii})<=LSET_maxsize | not(ii: ran(set_vrb)) ==> set_vrb:=set_vrb<-ii [] not(not(ii: ran(set_vrb))) ==> skip);
  Expanded_List_Substitution(Machine(L_SET),RMV_SET)==(ii: LSET_VALUE | ii: ran(set_vrb) ==> set_vrb:=set_vrb/|\set_vrb~(ii)-1^(set_vrb\|/set_vrb~(ii)) [] not(ii: ran(set_vrb)) ==> skip);
  Expanded_List_Substitution(Machine(L_SET),FIND_SET)==(ii: LSET_VALUE | ii: ran(set_vrb) ==> rr,ind:=TRUE,set_vrb~(ii) [] not(ii: ran(set_vrb)) ==> (rr:=FALSE || @(ind$0).(ind$0: NAT ==> ind:=ind$0)));
  Expanded_List_Substitution(Machine(L_SET),VAL_SET)==(ii: NAT & ii: 1..size(set_vrb) | vv:=set_vrb(ii));
  Expanded_List_Substitution(Machine(L_SET),IS_INDEX_SET)==(ii: NAT | vv:=bool(ii: 1..size(set_vrb)));
  Expanded_List_Substitution(Machine(L_SET),IS_FULL_SET)==(btrue | vv:=bool(size(set_vrb) = LSET_maxsize));
  Expanded_List_Substitution(Machine(L_SET),CARD_SET)==(btrue | vv:=size(set_vrb));
  List_Substitution(Machine(L_SET),CARD_SET)==(vv:=size(set_vrb));
  List_Substitution(Machine(L_SET),IS_FULL_SET)==(vv:=bool(size(set_vrb) = LSET_maxsize));
  List_Substitution(Machine(L_SET),IS_INDEX_SET)==(vv:=bool(ii: 1..size(set_vrb)));
  List_Substitution(Machine(L_SET),VAL_SET)==(vv:=set_vrb(ii));
  List_Substitution(Machine(L_SET),FIND_SET)==(SELECT ii: ran(set_vrb) THEN rr:=TRUE || ind:=set_vrb~(ii) ELSE rr:=FALSE || ind:: NAT END);
  List_Substitution(Machine(L_SET),RMV_SET)==(SELECT ii: ran(set_vrb) THEN set_vrb:=set_vrb/|\set_vrb~(ii)-1^(set_vrb\|/set_vrb~(ii)) ELSE skip END);
  List_Substitution(Machine(L_SET),INS_SET)==(SELECT not(ii: ran(set_vrb)) THEN set_vrb:=set_vrb<-ii ELSE skip END);
  List_Substitution(Machine(L_SET),CLR_SET)==(set_vrb:=<>)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(L_SET))==(?);
  Inherited_List_Constants(Machine(L_SET))==(?);
  List_Constants(Machine(L_SET))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(L_SET))==(?);
  Context_List_Defered(Machine(L_SET))==(?);
  Context_List_Sets(Machine(L_SET))==(?);
  List_Valuable_Sets(Machine(L_SET))==(?);
  Inherited_List_Enumerated(Machine(L_SET))==(?);
  Inherited_List_Defered(Machine(L_SET))==(?);
  Inherited_List_Sets(Machine(L_SET))==(?);
  List_Enumerated(Machine(L_SET))==(?);
  List_Defered(Machine(L_SET))==(?);
  List_Sets(Machine(L_SET))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(L_SET))==(?);
  Expanded_List_HiddenConstants(Machine(L_SET))==(?);
  List_HiddenConstants(Machine(L_SET))==(?);
  External_List_HiddenConstants(Machine(L_SET))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(L_SET))==(btrue);
  Context_List_Properties(Machine(L_SET))==(btrue);
  Inherited_List_Properties(Machine(L_SET))==(btrue);
  List_Properties(Machine(L_SET))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(L_SET),CARD_SET)==(?);
  List_ANY_Var(Machine(L_SET),IS_FULL_SET)==(?);
  List_ANY_Var(Machine(L_SET),IS_INDEX_SET)==(?);
  List_ANY_Var(Machine(L_SET),VAL_SET)==(?);
  List_ANY_Var(Machine(L_SET),FIND_SET)==(?);
  List_ANY_Var(Machine(L_SET),RMV_SET)==(?);
  List_ANY_Var(Machine(L_SET),INS_SET)==(?);
  List_ANY_Var(Machine(L_SET),CLR_SET)==(?);
  List_ANY_Var(Machine(L_SET),?)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(L_SET)) == (? | ? | set_vrb | ? | CARD_SET,IS_FULL_SET,IS_INDEX_SET,VAL_SET,FIND_SET,RMV_SET,INS_SET,CLR_SET | ? | ? | LSET_maxsize,LSET_VALUE | L_SET);
  List_Of_HiddenCst_Ids(Machine(L_SET)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(L_SET)) == (?);
  List_Of_VisibleVar_Ids(Machine(L_SET)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(L_SET)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Machine(L_SET)) == (Type(LSET_VALUE) == Prm(SetOf(atype(LSET_VALUE,?,?)));Type(LSET_maxsize) == Prm(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(L_SET)) == (Type(set_vrb) == Mvl(SetOf(btype(INTEGER,?,?)*atype(LSET_VALUE,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(L_SET)) == (Type(CLR_SET) == Cst(No_type,No_type);Type(INS_SET) == Cst(No_type,atype(LSET_VALUE,?,?));Type(RMV_SET) == Cst(No_type,atype(LSET_VALUE,?,?));Type(FIND_SET) == Cst(btype(BOOL,?,?)*btype(INTEGER,?,?),atype(LSET_VALUE,?,?));Type(VAL_SET) == Cst(atype(LSET_VALUE,?,?),btype(INTEGER,?,?));Type(IS_INDEX_SET) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?));Type(IS_FULL_SET) == Cst(btype(BOOL,?,?),No_type);Type(CARD_SET) == Cst(btype(INTEGER,?,?),No_type));
  Observers(Machine(L_SET)) == (Type(FIND_SET) == Cst(btype(BOOL,?,?)*btype(INTEGER,?,?),atype(LSET_VALUE,?,?));Type(VAL_SET) == Cst(atype(LSET_VALUE,?,?),btype(INTEGER,?,?));Type(IS_INDEX_SET) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?));Type(IS_FULL_SET) == Cst(btype(BOOL,?,?),No_type);Type(CARD_SET) == Cst(btype(INTEGER,?,?),No_type))
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
