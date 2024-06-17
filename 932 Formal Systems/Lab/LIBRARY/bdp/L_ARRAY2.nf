Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(L_ARRAY2))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(L_ARRAY2))==(Machine(L_ARRAY2));
  Level(Machine(L_ARRAY2))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(L_ARRAY2)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(L_ARRAY2))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(L_ARRAY2))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(L_ARRAY2))==(?);
  List_Includes(Machine(L_ARRAY2))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(L_ARRAY2))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(L_ARRAY2))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(L_ARRAY2))==(?);
  Context_List_Variables(Machine(L_ARRAY2))==(?);
  Abstract_List_Variables(Machine(L_ARRAY2))==(?);
  Local_List_Variables(Machine(L_ARRAY2))==(arr_vrb);
  List_Variables(Machine(L_ARRAY2))==(arr_vrb);
  External_List_Variables(Machine(L_ARRAY2))==(arr_vrb)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(L_ARRAY2))==(?);
  Abstract_List_VisibleVariables(Machine(L_ARRAY2))==(?);
  External_List_VisibleVariables(Machine(L_ARRAY2))==(?);
  Expanded_List_VisibleVariables(Machine(L_ARRAY2))==(?);
  List_VisibleVariables(Machine(L_ARRAY2))==(?);
  Internal_List_VisibleVariables(Machine(L_ARRAY2))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(L_ARRAY2))==(btrue);
  Gluing_List_Invariant(Machine(L_ARRAY2))==(btrue);
  Expanded_List_Invariant(Machine(L_ARRAY2))==(btrue);
  Abstract_List_Invariant(Machine(L_ARRAY2))==(btrue);
  Context_List_Invariant(Machine(L_ARRAY2))==(btrue);
  List_Invariant(Machine(L_ARRAY2))==(arr_vrb: 0..LAD_maxidx --> LAD_VALUE)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(L_ARRAY2))==(btrue);
  Abstract_List_Assertions(Machine(L_ARRAY2))==(btrue);
  Context_List_Assertions(Machine(L_ARRAY2))==(btrue);
  List_Assertions(Machine(L_ARRAY2))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(L_ARRAY2))==(@(arr_vrb$0).(arr_vrb$0: 0..LAD_maxidx --> LAD_VALUE ==> arr_vrb:=arr_vrb$0));
  Context_List_Initialisation(Machine(L_ARRAY2))==(skip);
  List_Initialisation(Machine(L_ARRAY2))==(arr_vrb:: 0..LAD_maxidx --> LAD_VALUE)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(L_ARRAY2))==(LAD_VALUE,LAD_maxidx)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(L_ARRAY2))==(btrue);
  List_Constraints(Machine(L_ARRAY2))==(LAD_maxidx: NAT1 & LAD_VALUE: FIN(INTEGER) & not(LAD_VALUE = {}))
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(L_ARRAY2))==(VAL_ARRAY,STR_ARRAY,SET_ARRAY,SWAP_ARRAY,RIGHT_SHIFT_ARRAY,LEFT_SHIFT_ARRAY,SEARCH_MAX_EQL_ARRAY,SEARCH_MIN_EQL_ARRAY);
  List_Operations(Machine(L_ARRAY2))==(VAL_ARRAY,STR_ARRAY,SET_ARRAY,SWAP_ARRAY,RIGHT_SHIFT_ARRAY,LEFT_SHIFT_ARRAY,SEARCH_MAX_EQL_ARRAY,SEARCH_MIN_EQL_ARRAY)
END
&
THEORY ListInputX IS
  List_Input(Machine(L_ARRAY2),VAL_ARRAY)==(ii);
  List_Input(Machine(L_ARRAY2),STR_ARRAY)==(ii,vv);
  List_Input(Machine(L_ARRAY2),SET_ARRAY)==(ii,jj,vv);
  List_Input(Machine(L_ARRAY2),SWAP_ARRAY)==(ii,jj);
  List_Input(Machine(L_ARRAY2),RIGHT_SHIFT_ARRAY)==(ii,jj,nn);
  List_Input(Machine(L_ARRAY2),LEFT_SHIFT_ARRAY)==(ii,jj,nn);
  List_Input(Machine(L_ARRAY2),SEARCH_MAX_EQL_ARRAY)==(ii,jj,vv);
  List_Input(Machine(L_ARRAY2),SEARCH_MIN_EQL_ARRAY)==(ii,jj,vv)
END
&
THEORY ListOutputX IS
  List_Output(Machine(L_ARRAY2),VAL_ARRAY)==(vv);
  List_Output(Machine(L_ARRAY2),STR_ARRAY)==(?);
  List_Output(Machine(L_ARRAY2),SET_ARRAY)==(?);
  List_Output(Machine(L_ARRAY2),SWAP_ARRAY)==(?);
  List_Output(Machine(L_ARRAY2),RIGHT_SHIFT_ARRAY)==(?);
  List_Output(Machine(L_ARRAY2),LEFT_SHIFT_ARRAY)==(?);
  List_Output(Machine(L_ARRAY2),SEARCH_MAX_EQL_ARRAY)==(rr,bb);
  List_Output(Machine(L_ARRAY2),SEARCH_MIN_EQL_ARRAY)==(rr,bb)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(L_ARRAY2),VAL_ARRAY)==(vv <-- VAL_ARRAY(ii));
  List_Header(Machine(L_ARRAY2),STR_ARRAY)==(STR_ARRAY(ii,vv));
  List_Header(Machine(L_ARRAY2),SET_ARRAY)==(SET_ARRAY(ii,jj,vv));
  List_Header(Machine(L_ARRAY2),SWAP_ARRAY)==(SWAP_ARRAY(ii,jj));
  List_Header(Machine(L_ARRAY2),RIGHT_SHIFT_ARRAY)==(RIGHT_SHIFT_ARRAY(ii,jj,nn));
  List_Header(Machine(L_ARRAY2),LEFT_SHIFT_ARRAY)==(LEFT_SHIFT_ARRAY(ii,jj,nn));
  List_Header(Machine(L_ARRAY2),SEARCH_MAX_EQL_ARRAY)==(rr,bb <-- SEARCH_MAX_EQL_ARRAY(ii,jj,vv));
  List_Header(Machine(L_ARRAY2),SEARCH_MIN_EQL_ARRAY)==(rr,bb <-- SEARCH_MIN_EQL_ARRAY(ii,jj,vv))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(L_ARRAY2),VAL_ARRAY)==(ii: 0..LAD_maxidx);
  List_Precondition(Machine(L_ARRAY2),STR_ARRAY)==(ii: 0..LAD_maxidx & vv: LAD_VALUE);
  List_Precondition(Machine(L_ARRAY2),SET_ARRAY)==(ii: NAT & jj: NAT & jj/=MAXINT & ii..jj <: 0..LAD_maxidx & vv: LAD_VALUE);
  List_Precondition(Machine(L_ARRAY2),SWAP_ARRAY)==(ii: 0..LAD_maxidx & jj: 0..LAD_maxidx);
  List_Precondition(Machine(L_ARRAY2),RIGHT_SHIFT_ARRAY)==(jj: 0..LAD_maxidx & ii: 0..LAD_maxidx & nn: 0..LAD_maxidx & jj+nn: 0..LAD_maxidx & ii<=jj);
  List_Precondition(Machine(L_ARRAY2),LEFT_SHIFT_ARRAY)==(jj: 0..LAD_maxidx & jj<=MAXINT-1 & ii: 0..LAD_maxidx & ii<=jj & nn: NAT & nn<=ii);
  List_Precondition(Machine(L_ARRAY2),SEARCH_MAX_EQL_ARRAY)==(jj: 0..LAD_maxidx & ii: 0..LAD_maxidx & ii<=jj & vv: LAD_VALUE);
  List_Precondition(Machine(L_ARRAY2),SEARCH_MIN_EQL_ARRAY)==(jj: 0..LAD_maxidx & ii: 0..LAD_maxidx & ii<=jj & vv: LAD_VALUE)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(L_ARRAY2),SEARCH_MIN_EQL_ARRAY)==(jj: 0..LAD_maxidx & ii: 0..LAD_maxidx & ii<=jj & vv: LAD_VALUE | @(nrr,nbb,sol).(nrr: NAT & nbb: BOOL & sol = (ii..jj<|arr_vrb)~[{vv}] & (sol/={} => nrr = min(sol)) & nbb = bool(sol/={}) ==> rr,bb:=nrr,nbb));
  Expanded_List_Substitution(Machine(L_ARRAY2),SEARCH_MAX_EQL_ARRAY)==(jj: 0..LAD_maxidx & ii: 0..LAD_maxidx & ii<=jj & vv: LAD_VALUE | @(nrr,nbb,sol).(nrr: NAT & nbb: BOOL & sol = (ii..jj<|arr_vrb)~[{vv}] & (sol/={} => nrr = max(sol)) & nbb = bool(sol/={}) ==> rr,bb:=nrr,nbb));
  Expanded_List_Substitution(Machine(L_ARRAY2),LEFT_SHIFT_ARRAY)==(jj: 0..LAD_maxidx & jj<=MAXINT-1 & ii: 0..LAD_maxidx & ii<=jj & nn: NAT & nn<=ii | arr_vrb:=arr_vrb<+%xx.(xx: 0..LAD_maxidx & xx+nn: ii..jj | arr_vrb(xx+nn)));
  Expanded_List_Substitution(Machine(L_ARRAY2),RIGHT_SHIFT_ARRAY)==(jj: 0..LAD_maxidx & ii: 0..LAD_maxidx & nn: 0..LAD_maxidx & jj+nn: 0..LAD_maxidx & ii<=jj | arr_vrb:=arr_vrb<+%xx.(xx: ii+nn..jj+nn | arr_vrb(xx-nn)));
  Expanded_List_Substitution(Machine(L_ARRAY2),SWAP_ARRAY)==(ii: 0..LAD_maxidx & jj: 0..LAD_maxidx | arr_vrb:=arr_vrb<+{ii|->arr_vrb(jj),jj|->arr_vrb(ii)});
  Expanded_List_Substitution(Machine(L_ARRAY2),SET_ARRAY)==(ii: NAT & jj: NAT & jj/=MAXINT & ii..jj <: 0..LAD_maxidx & vv: LAD_VALUE | arr_vrb:=arr_vrb<+(ii..jj)*{vv});
  Expanded_List_Substitution(Machine(L_ARRAY2),STR_ARRAY)==(ii: 0..LAD_maxidx & vv: LAD_VALUE | arr_vrb:=arr_vrb<+{ii|->vv});
  Expanded_List_Substitution(Machine(L_ARRAY2),VAL_ARRAY)==(ii: 0..LAD_maxidx | vv:=arr_vrb(ii));
  List_Substitution(Machine(L_ARRAY2),VAL_ARRAY)==(vv:=arr_vrb(ii));
  List_Substitution(Machine(L_ARRAY2),STR_ARRAY)==(arr_vrb(ii):=vv);
  List_Substitution(Machine(L_ARRAY2),SET_ARRAY)==(arr_vrb:=arr_vrb<+(ii..jj)*{vv});
  List_Substitution(Machine(L_ARRAY2),SWAP_ARRAY)==(arr_vrb:=arr_vrb<+{ii|->arr_vrb(jj),jj|->arr_vrb(ii)});
  List_Substitution(Machine(L_ARRAY2),RIGHT_SHIFT_ARRAY)==(arr_vrb:=arr_vrb<+%xx.(xx: ii+nn..jj+nn | arr_vrb(xx-nn)));
  List_Substitution(Machine(L_ARRAY2),LEFT_SHIFT_ARRAY)==(arr_vrb:=arr_vrb<+%xx.(xx: 0..LAD_maxidx & xx+nn: ii..jj | arr_vrb(xx+nn)));
  List_Substitution(Machine(L_ARRAY2),SEARCH_MAX_EQL_ARRAY)==(ANY nrr,nbb,sol WHERE nrr: NAT & nbb: BOOL & sol = (ii..jj<|arr_vrb)~[{vv}] & (sol/={} => nrr = max(sol)) & nbb = bool(sol/={}) THEN rr:=nrr || bb:=nbb END);
  List_Substitution(Machine(L_ARRAY2),SEARCH_MIN_EQL_ARRAY)==(ANY nrr,nbb,sol WHERE nrr: NAT & nbb: BOOL & sol = (ii..jj<|arr_vrb)~[{vv}] & (sol/={} => nrr = min(sol)) & nbb = bool(sol/={}) THEN rr:=nrr || bb:=nbb END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(L_ARRAY2))==(?);
  Inherited_List_Constants(Machine(L_ARRAY2))==(?);
  List_Constants(Machine(L_ARRAY2))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(L_ARRAY2))==(?);
  Context_List_Defered(Machine(L_ARRAY2))==(?);
  Context_List_Sets(Machine(L_ARRAY2))==(?);
  List_Valuable_Sets(Machine(L_ARRAY2))==(?);
  Inherited_List_Enumerated(Machine(L_ARRAY2))==(?);
  Inherited_List_Defered(Machine(L_ARRAY2))==(?);
  Inherited_List_Sets(Machine(L_ARRAY2))==(?);
  List_Enumerated(Machine(L_ARRAY2))==(?);
  List_Defered(Machine(L_ARRAY2))==(?);
  List_Sets(Machine(L_ARRAY2))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(L_ARRAY2))==(?);
  Expanded_List_HiddenConstants(Machine(L_ARRAY2))==(?);
  List_HiddenConstants(Machine(L_ARRAY2))==(?);
  External_List_HiddenConstants(Machine(L_ARRAY2))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(L_ARRAY2))==(btrue);
  Context_List_Properties(Machine(L_ARRAY2))==(btrue);
  Inherited_List_Properties(Machine(L_ARRAY2))==(btrue);
  List_Properties(Machine(L_ARRAY2))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(L_ARRAY2),VAL_ARRAY)==(?);
  List_ANY_Var(Machine(L_ARRAY2),STR_ARRAY)==(?);
  List_ANY_Var(Machine(L_ARRAY2),SET_ARRAY)==(?);
  List_ANY_Var(Machine(L_ARRAY2),SWAP_ARRAY)==(?);
  List_ANY_Var(Machine(L_ARRAY2),RIGHT_SHIFT_ARRAY)==(?);
  List_ANY_Var(Machine(L_ARRAY2),LEFT_SHIFT_ARRAY)==(?);
  List_ANY_Var(Machine(L_ARRAY2),SEARCH_MAX_EQL_ARRAY)==((Var(nrr) == btype(INTEGER,?,?)),(Var(nbb) == btype(BOOL,?,?)),(Var(sol) == SetOf(btype(INTEGER,?,?))));
  List_ANY_Var(Machine(L_ARRAY2),SEARCH_MIN_EQL_ARRAY)==((Var(nrr) == btype(INTEGER,?,?)),(Var(nbb) == btype(BOOL,?,?)),(Var(sol) == SetOf(btype(INTEGER,?,?))));
  List_ANY_Var(Machine(L_ARRAY2),?)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(L_ARRAY2)) == (? | ? | arr_vrb | ? | VAL_ARRAY,STR_ARRAY,SET_ARRAY,SWAP_ARRAY,RIGHT_SHIFT_ARRAY,LEFT_SHIFT_ARRAY,SEARCH_MAX_EQL_ARRAY,SEARCH_MIN_EQL_ARRAY | ? | ? | LAD_VALUE,LAD_maxidx | L_ARRAY2);
  List_Of_HiddenCst_Ids(Machine(L_ARRAY2)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(L_ARRAY2)) == (?);
  List_Of_VisibleVar_Ids(Machine(L_ARRAY2)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(L_ARRAY2)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Machine(L_ARRAY2)) == (Type(LAD_maxidx) == Prm(btype(INTEGER,?,?));Type(LAD_VALUE) == Prm(SetOf(atype(LAD_VALUE,?,?))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(L_ARRAY2)) == (Type(arr_vrb) == Mvl(SetOf(btype(INTEGER,0,LAD_maxidx)*atype(LAD_VALUE,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(L_ARRAY2)) == (Type(SEARCH_MIN_EQL_ARRAY) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*atype(LAD_VALUE,?,?));Type(SEARCH_MAX_EQL_ARRAY) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*atype(LAD_VALUE,?,?));Type(LEFT_SHIFT_ARRAY) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(RIGHT_SHIFT_ARRAY) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SWAP_ARRAY) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SET_ARRAY) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*atype(LAD_VALUE,?,?));Type(STR_ARRAY) == Cst(No_type,btype(INTEGER,?,?)*atype(LAD_VALUE,?,?));Type(VAL_ARRAY) == Cst(atype(LAD_VALUE,?,?),btype(INTEGER,?,?)));
  Observers(Machine(L_ARRAY2)) == (Type(SEARCH_MIN_EQL_ARRAY) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*atype(LAD_VALUE,?,?));Type(SEARCH_MAX_EQL_ARRAY) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*atype(LAD_VALUE,?,?));Type(VAL_ARRAY) == Cst(atype(LAD_VALUE,?,?),btype(INTEGER,?,?)))
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
