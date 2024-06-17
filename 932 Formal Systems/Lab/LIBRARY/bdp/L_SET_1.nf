Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(L_SET_1))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(L_SET_1))==(Machine(L_SET));
  Level(Implementation(L_SET_1))==(1);
  Upper_Level(Implementation(L_SET_1))==(Machine(L_SET))
END
&
THEORY LoadedStructureX IS
  Implementation(L_SET_1)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(L_SET_1))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(L_SET_1))==(set.L_SEQUENCE);
  Inherited_List_Includes(Implementation(L_SET_1))==(set.L_SEQUENCE)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(L_SET_1))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(L_SET_1))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(L_SET_1))==(?);
  Context_List_Variables(Implementation(L_SET_1))==(?);
  Abstract_List_Variables(Implementation(L_SET_1))==(set_vrb);
  Local_List_Variables(Implementation(L_SET_1))==(?);
  List_Variables(Implementation(L_SET_1))==(setseq_vrb);
  External_List_Variables(Implementation(L_SET_1))==(set.seq_vrb)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(L_SET_1))==(?);
  Abstract_List_VisibleVariables(Implementation(L_SET_1))==(?);
  External_List_VisibleVariables(Implementation(L_SET_1))==(?);
  Expanded_List_VisibleVariables(Implementation(L_SET_1))==(?);
  List_VisibleVariables(Implementation(L_SET_1))==(?);
  Internal_List_VisibleVariables(Implementation(L_SET_1))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(L_SET_1))==(btrue);
  Abstract_List_Invariant(Implementation(L_SET_1))==(set_vrb: iseq(LSET_VALUE) & size(set_vrb)<=LSET_maxsize);
  Expanded_List_Invariant(Implementation(L_SET_1))==(setseq_vrb: seq(LSET_VALUE) & size(setseq_vrb)<=LSET_maxsize);
  Context_List_Invariant(Implementation(L_SET_1))==(btrue);
  List_Invariant(Implementation(L_SET_1))==(set_vrb = setseq_vrb)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(L_SET_1))==(btrue);
  Expanded_List_Assertions(Implementation(L_SET_1))==(btrue);
  Context_List_Assertions(Implementation(L_SET_1))==(btrue);
  List_Assertions(Implementation(L_SET_1))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(L_SET_1))==(setseq_vrb:=<>);
  Context_List_Initialisation(Implementation(L_SET_1))==(skip);
  List_Initialisation(Implementation(L_SET_1))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(L_SET_1))==(LSET_maxsize,LSET_VALUE)
END
&
THEORY ListInstanciatedParametersX IS
  Precond_Instanciated_Parameters(Implementation(L_SET_1),Machine(set.L_SEQUENCE))==(btrue);
  List_Instanciated_Parameters(Implementation(L_SET_1),Machine(set.L_SEQUENCE))==(LSET_maxsize,LSET_VALUE)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(L_SET_1),Machine(set.L_SEQUENCE))==(LSET_maxsize: 1..MAXINT-1 & LSET_VALUE: FIN(INTEGER) & not(LSET_VALUE = {}));
  List_Constraints(Implementation(L_SET_1))==(LSET_maxsize: 1..MAXINT-1 & LSET_VALUE: FIN(INTEGER) & not(LSET_VALUE = {}));
  List_Context_Constraints(Implementation(L_SET_1))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(L_SET_1))==(CARD_SET,IS_FULL_SET,IS_INDEX_SET,VAL_SET,FIND_SET,RMV_SET,INS_SET,CLR_SET);
  List_Operations(Implementation(L_SET_1))==(CARD_SET,IS_FULL_SET,IS_INDEX_SET,VAL_SET,FIND_SET,RMV_SET,INS_SET,CLR_SET)
END
&
THEORY ListInputX IS
  List_Input(Implementation(L_SET_1),CARD_SET)==(?);
  List_Input(Implementation(L_SET_1),IS_FULL_SET)==(?);
  List_Input(Implementation(L_SET_1),IS_INDEX_SET)==(ii);
  List_Input(Implementation(L_SET_1),VAL_SET)==(ii);
  List_Input(Implementation(L_SET_1),FIND_SET)==(ii);
  List_Input(Implementation(L_SET_1),RMV_SET)==(ii);
  List_Input(Implementation(L_SET_1),INS_SET)==(ii);
  List_Input(Implementation(L_SET_1),CLR_SET)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(L_SET_1),CARD_SET)==(vv);
  List_Output(Implementation(L_SET_1),IS_FULL_SET)==(vv);
  List_Output(Implementation(L_SET_1),IS_INDEX_SET)==(vv);
  List_Output(Implementation(L_SET_1),VAL_SET)==(vv);
  List_Output(Implementation(L_SET_1),FIND_SET)==(rr,ind);
  List_Output(Implementation(L_SET_1),RMV_SET)==(?);
  List_Output(Implementation(L_SET_1),INS_SET)==(?);
  List_Output(Implementation(L_SET_1),CLR_SET)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(L_SET_1),CARD_SET)==(vv <-- CARD_SET);
  List_Header(Implementation(L_SET_1),IS_FULL_SET)==(vv <-- IS_FULL_SET);
  List_Header(Implementation(L_SET_1),IS_INDEX_SET)==(vv <-- IS_INDEX_SET(ii));
  List_Header(Implementation(L_SET_1),VAL_SET)==(vv <-- VAL_SET(ii));
  List_Header(Implementation(L_SET_1),FIND_SET)==(rr,ind <-- FIND_SET(ii));
  List_Header(Implementation(L_SET_1),RMV_SET)==(RMV_SET(ii));
  List_Header(Implementation(L_SET_1),INS_SET)==(INS_SET(ii));
  List_Header(Implementation(L_SET_1),CLR_SET)==(CLR_SET)
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(L_SET_1),CARD_SET)==(btrue);
  List_Precondition(Implementation(L_SET_1),CARD_SET)==(btrue);
  Own_Precondition(Implementation(L_SET_1),IS_FULL_SET)==(btrue);
  List_Precondition(Implementation(L_SET_1),IS_FULL_SET)==(btrue);
  Own_Precondition(Implementation(L_SET_1),IS_INDEX_SET)==(btrue);
  List_Precondition(Implementation(L_SET_1),IS_INDEX_SET)==(ii: NAT);
  Own_Precondition(Implementation(L_SET_1),VAL_SET)==(btrue);
  List_Precondition(Implementation(L_SET_1),VAL_SET)==(ii: NAT & ii: 1..size(set_vrb));
  Own_Precondition(Implementation(L_SET_1),FIND_SET)==(btrue);
  List_Precondition(Implementation(L_SET_1),FIND_SET)==(ii: LSET_VALUE);
  Own_Precondition(Implementation(L_SET_1),RMV_SET)==(btrue);
  List_Precondition(Implementation(L_SET_1),RMV_SET)==(ii: LSET_VALUE);
  Own_Precondition(Implementation(L_SET_1),INS_SET)==(btrue);
  List_Precondition(Implementation(L_SET_1),INS_SET)==(ii: LSET_VALUE & card(ran(set_vrb)\/{ii})<=LSET_maxsize);
  Own_Precondition(Implementation(L_SET_1),CLR_SET)==(btrue);
  List_Precondition(Implementation(L_SET_1),CLR_SET)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(L_SET_1),CLR_SET)==(btrue | setseq_vrb:=<>);
  Expanded_List_Substitution(Implementation(L_SET_1),INS_SET)==(ii: LSET_VALUE & card(ran(set_vrb)\/{ii})<=LSET_maxsize | @(res,ind).((ii: LSET_VALUE | @(nii,nbb,sol).(nii: NAT & nbb: BOOL & sol = setseq_vrb~[{ii}] & (sol/={} => nii = min(sol)) & nbb = bool(sol/={}) ==> ind,res:=nii,nbb));(res = FALSE ==> (ii: LSET_VALUE & size(setseq_vrb)/=LSET_maxsize | setseq_vrb:=setseq_vrb<-ii) [] not(res = FALSE) ==> skip)));
  Expanded_List_Substitution(Implementation(L_SET_1),RMV_SET)==(ii: LSET_VALUE | @(res,ind).((ii: LSET_VALUE | @(nii,nbb,sol).(nii: NAT & nbb: BOOL & sol = setseq_vrb~[{ii}] & (sol/={} => nii = min(sol)) & nbb = bool(sol/={}) ==> ind,res:=nii,nbb));(res = TRUE ==> (ind: NAT & ind: 1..size(setseq_vrb) | setseq_vrb:=setseq_vrb/|\ind-1^(setseq_vrb\|/ind)) [] not(res = TRUE) ==> skip)));
  Expanded_List_Substitution(Implementation(L_SET_1),FIND_SET)==(ii: LSET_VALUE | @(nii,nbb,sol).(nii: NAT & nbb: BOOL & sol = setseq_vrb~[{ii}] & (sol/={} => nii = min(sol)) & nbb = bool(sol/={}) ==> ind,rr:=nii,nbb));
  Expanded_List_Substitution(Implementation(L_SET_1),VAL_SET)==(ii: NAT & ii: 1..size(set_vrb) & ii: NAT & ii: 1..size(setseq_vrb) | vv:=setseq_vrb(ii));
  Expanded_List_Substitution(Implementation(L_SET_1),IS_INDEX_SET)==(ii: NAT | vv:=bool(ii: 1..size(setseq_vrb)));
  Expanded_List_Substitution(Implementation(L_SET_1),IS_FULL_SET)==(btrue | vv:=bool(size(setseq_vrb) = LSET_maxsize));
  Expanded_List_Substitution(Implementation(L_SET_1),CARD_SET)==(btrue | vv:=size(setseq_vrb));
  List_Substitution(Implementation(L_SET_1),CARD_SET)==(vv <-- set.LEN_SEQ);
  List_Substitution(Implementation(L_SET_1),IS_FULL_SET)==(vv <-- set.IS_FULL_SEQ);
  List_Substitution(Implementation(L_SET_1),IS_INDEX_SET)==(vv <-- (set.IS_INDEX_SEQ)(ii));
  List_Substitution(Implementation(L_SET_1),VAL_SET)==(vv <-- (set.VAL_SEQ)(ii));
  List_Substitution(Implementation(L_SET_1),FIND_SET)==(rr,ind <-- (set.FIND_FIRST_SEQ)(ii));
  List_Substitution(Implementation(L_SET_1),RMV_SET)==(VAR res,ind IN res,ind <-- (set.FIND_FIRST_SEQ)(ii);IF res = TRUE THEN (set.RMV_SEQ)(ind) END END);
  List_Substitution(Implementation(L_SET_1),INS_SET)==(VAR res,ind IN res,ind <-- (set.FIND_FIRST_SEQ)(ii);IF res = FALSE THEN (set.PUSH_SEQ)(ii) END END);
  List_Substitution(Implementation(L_SET_1),CLR_SET)==(set.CLR_SEQ)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(L_SET_1))==(?);
  Inherited_List_Constants(Implementation(L_SET_1))==(?);
  List_Constants(Implementation(L_SET_1))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(L_SET_1))==(?);
  Context_List_Defered(Implementation(L_SET_1))==(?);
  Context_List_Sets(Implementation(L_SET_1))==(?);
  List_Own_Enumerated(Implementation(L_SET_1))==(?);
  List_Valuable_Sets(Implementation(L_SET_1))==(?);
  Inherited_List_Enumerated(Implementation(L_SET_1))==(?);
  Inherited_List_Defered(Implementation(L_SET_1))==(?);
  Inherited_List_Sets(Implementation(L_SET_1))==(?);
  List_Enumerated(Implementation(L_SET_1))==(?);
  List_Defered(Implementation(L_SET_1))==(?);
  List_Sets(Implementation(L_SET_1))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(L_SET_1))==(?);
  Expanded_List_HiddenConstants(Implementation(L_SET_1))==(?);
  List_HiddenConstants(Implementation(L_SET_1))==(?);
  External_List_HiddenConstants(Implementation(L_SET_1))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(L_SET_1))==(btrue);
  Context_List_Properties(Implementation(L_SET_1))==(btrue);
  Inherited_List_Properties(Implementation(L_SET_1))==(btrue);
  List_Properties(Implementation(L_SET_1))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(L_SET_1))==(aa: aa);
  List_Values(Implementation(L_SET_1))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(L_SET_1),Machine(L_SEQUENCE))==(LEN_SEQ,IS_FULL_SEQ,IS_INDEX_SEQ,VAL_SEQ,FIRST_SEQ,LAST_SEQ,PUSH_SEQ,POP_SEQ,STR_SEQ,RMV_SEQ,INS_AFT_SEQ,CLR_SEQ,TAIL_SEQ,KEEP_SEQ,CUT_SEQ,PART_SEQ,REV_SEQ,FIND_FIRST_SEQ,FIND_LAST_SEQ)
END
&
THEORY InheritedEnvX IS
  Operations(Implementation(L_SET_1))==(Type(CLR_SET) == Cst(No_type,No_type);Type(INS_SET) == Cst(No_type,atype(LSET_VALUE,?,?));Type(RMV_SET) == Cst(No_type,atype(LSET_VALUE,?,?));Type(FIND_SET) == Cst(btype(BOOL,?,?)*btype(INTEGER,?,?),atype(LSET_VALUE,?,?));Type(VAL_SET) == Cst(atype(LSET_VALUE,?,?),btype(INTEGER,?,?));Type(IS_INDEX_SET) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?));Type(IS_FULL_SET) == Cst(btype(BOOL,?,?),No_type);Type(CARD_SET) == Cst(btype(INTEGER,?,?),No_type))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(L_SET_1)) == (? | ? | ? | setseq_vrb | CARD_SET,IS_FULL_SET,IS_INDEX_SET,VAL_SET,FIND_SET,RMV_SET,INS_SET,CLR_SET | ? | imported(Machine(set.L_SEQUENCE)) | LSET_maxsize,LSET_VALUE | L_SET_1);
  List_Of_HiddenCst_Ids(Implementation(L_SET_1)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(L_SET_1)) == (?);
  List_Of_VisibleVar_Ids(Implementation(L_SET_1)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(L_SET_1)) == (?: ?);
  List_Of_Ids(Machine(L_SEQUENCE)) == (? | ? | seq_vrb | ? | LEN_SEQ,IS_FULL_SEQ,IS_INDEX_SEQ,VAL_SEQ,FIRST_SEQ,LAST_SEQ,PUSH_SEQ,POP_SEQ,STR_SEQ,RMV_SEQ,INS_AFT_SEQ,CLR_SEQ,TAIL_SEQ,KEEP_SEQ,CUT_SEQ,PART_SEQ,REV_SEQ,FIND_FIRST_SEQ,FIND_LAST_SEQ | ? | ? | LS_maxsize,LS_VALUE | L_SEQUENCE);
  List_Of_HiddenCst_Ids(Machine(L_SEQUENCE)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(L_SEQUENCE)) == (?);
  List_Of_VisibleVar_Ids(Machine(L_SEQUENCE)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(L_SEQUENCE)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Implementation(L_SET_1)) == (Type(LSET_VALUE) == Prm(SetOf(atype(LSET_VALUE,?,?)));Type(LSET_maxsize) == Prm(btype(INTEGER,?,?)))
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(L_SET_1),RMV_SET, 1) == (Type(res) == Lvl(btype(BOOL,?,?));Type(ind) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(L_SET_1),INS_SET, 1) == (Type(res) == Lvl(btype(BOOL,?,?));Type(ind) == Lvl(btype(INTEGER,?,?)))
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
&
THEORY ListLocalOperationsX IS
  List_Local_Operations(Implementation(L_SET_1))==(?)
END
&
THEORY ListLocalInputX END
&
THEORY ListLocalOutputX END
&
THEORY ListLocalHeaderX END
&
THEORY ListLocalPreconditionX END
&
THEORY ListLocalSubstitutionX END
&
THEORY TypingPredicateX IS
  TypingPredicate(Implementation(L_SET_1))==(btrue)
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(L_SET_1),Machine(set.L_SEQUENCE))==(set.seq_vrb);
  ImportedVisVariablesList(Implementation(L_SET_1),Machine(set.L_SEQUENCE))==(?)
END
&
THEORY ListLocalOpInvariantX END
)
