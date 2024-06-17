Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(L_ARRAY5))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(L_ARRAY5))==(Machine(L_ARRAY5));
  Level(Machine(L_ARRAY5))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(L_ARRAY5)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(L_ARRAY5))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(L_ARRAY5))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(L_ARRAY5))==(?);
  List_Includes(Machine(L_ARRAY5))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(L_ARRAY5))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(L_ARRAY5))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(L_ARRAY5))==(?);
  Context_List_Variables(Machine(L_ARRAY5))==(?);
  Abstract_List_Variables(Machine(L_ARRAY5))==(?);
  Local_List_Variables(Machine(L_ARRAY5))==(arr_vrb);
  List_Variables(Machine(L_ARRAY5))==(arr_vrb);
  External_List_Variables(Machine(L_ARRAY5))==(arr_vrb)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(L_ARRAY5))==(?);
  Abstract_List_VisibleVariables(Machine(L_ARRAY5))==(?);
  External_List_VisibleVariables(Machine(L_ARRAY5))==(?);
  Expanded_List_VisibleVariables(Machine(L_ARRAY5))==(?);
  List_VisibleVariables(Machine(L_ARRAY5))==(?);
  Internal_List_VisibleVariables(Machine(L_ARRAY5))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(L_ARRAY5))==(btrue);
  Gluing_List_Invariant(Machine(L_ARRAY5))==(btrue);
  Expanded_List_Invariant(Machine(L_ARRAY5))==(btrue);
  Abstract_List_Invariant(Machine(L_ARRAY5))==(btrue);
  Context_List_Invariant(Machine(L_ARRAY5))==(btrue);
  List_Invariant(Machine(L_ARRAY5))==(arr_vrb: 0..LAC_maxidx --> LAC_minval..LAC_maxval)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(L_ARRAY5))==(btrue);
  Abstract_List_Assertions(Machine(L_ARRAY5))==(btrue);
  Context_List_Assertions(Machine(L_ARRAY5))==(btrue);
  List_Assertions(Machine(L_ARRAY5))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(L_ARRAY5))==(@(arr_vrb$0).(arr_vrb$0: 0..LAC_maxidx --> LAC_minval..LAC_maxval ==> arr_vrb:=arr_vrb$0));
  Context_List_Initialisation(Machine(L_ARRAY5))==(skip);
  List_Initialisation(Machine(L_ARRAY5))==(arr_vrb:: 0..LAC_maxidx --> LAC_minval..LAC_maxval)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(L_ARRAY5))==(LAC_minval,LAC_maxval,LAC_maxidx)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(L_ARRAY5))==(btrue);
  List_Constraints(Machine(L_ARRAY5))==(LAC_minval: NAT & LAC_maxval: NAT & LAC_maxidx: NAT1 & LAC_minval<=LAC_maxval)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(L_ARRAY5))==(VAL_ARRAY,STR_ARRAY,SET_ARRAY,SWAP_ARRAY,RIGHT_SHIFT_ARRAY,LEFT_SHIFT_ARRAY,SEARCH_MAX_EQL_ARRAY,SEARCH_MIN_EQL_ARRAY,REVERSE_ARRAY,SEARCH_MIN_GEQ_ARRAY,ASCENDING_SORT_ARRAY);
  List_Operations(Machine(L_ARRAY5))==(VAL_ARRAY,STR_ARRAY,SET_ARRAY,SWAP_ARRAY,RIGHT_SHIFT_ARRAY,LEFT_SHIFT_ARRAY,SEARCH_MAX_EQL_ARRAY,SEARCH_MIN_EQL_ARRAY,REVERSE_ARRAY,SEARCH_MIN_GEQ_ARRAY,ASCENDING_SORT_ARRAY)
END
&
THEORY ListInputX IS
  List_Input(Machine(L_ARRAY5),VAL_ARRAY)==(ii);
  List_Input(Machine(L_ARRAY5),STR_ARRAY)==(ii,vv);
  List_Input(Machine(L_ARRAY5),SET_ARRAY)==(ii,jj,vv);
  List_Input(Machine(L_ARRAY5),SWAP_ARRAY)==(ii,jj);
  List_Input(Machine(L_ARRAY5),RIGHT_SHIFT_ARRAY)==(ii,jj,nn);
  List_Input(Machine(L_ARRAY5),LEFT_SHIFT_ARRAY)==(ii,jj,nn);
  List_Input(Machine(L_ARRAY5),SEARCH_MAX_EQL_ARRAY)==(ii,jj,vv);
  List_Input(Machine(L_ARRAY5),SEARCH_MIN_EQL_ARRAY)==(ii,jj,vv);
  List_Input(Machine(L_ARRAY5),REVERSE_ARRAY)==(ii,jj);
  List_Input(Machine(L_ARRAY5),SEARCH_MIN_GEQ_ARRAY)==(jj,kk,vv);
  List_Input(Machine(L_ARRAY5),ASCENDING_SORT_ARRAY)==(ii,jj)
END
&
THEORY ListOutputX IS
  List_Output(Machine(L_ARRAY5),VAL_ARRAY)==(vv);
  List_Output(Machine(L_ARRAY5),STR_ARRAY)==(?);
  List_Output(Machine(L_ARRAY5),SET_ARRAY)==(?);
  List_Output(Machine(L_ARRAY5),SWAP_ARRAY)==(?);
  List_Output(Machine(L_ARRAY5),RIGHT_SHIFT_ARRAY)==(?);
  List_Output(Machine(L_ARRAY5),LEFT_SHIFT_ARRAY)==(?);
  List_Output(Machine(L_ARRAY5),SEARCH_MAX_EQL_ARRAY)==(rr,bb);
  List_Output(Machine(L_ARRAY5),SEARCH_MIN_EQL_ARRAY)==(rr,bb);
  List_Output(Machine(L_ARRAY5),REVERSE_ARRAY)==(?);
  List_Output(Machine(L_ARRAY5),SEARCH_MIN_GEQ_ARRAY)==(ii,bb);
  List_Output(Machine(L_ARRAY5),ASCENDING_SORT_ARRAY)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(L_ARRAY5),VAL_ARRAY)==(vv <-- VAL_ARRAY(ii));
  List_Header(Machine(L_ARRAY5),STR_ARRAY)==(STR_ARRAY(ii,vv));
  List_Header(Machine(L_ARRAY5),SET_ARRAY)==(SET_ARRAY(ii,jj,vv));
  List_Header(Machine(L_ARRAY5),SWAP_ARRAY)==(SWAP_ARRAY(ii,jj));
  List_Header(Machine(L_ARRAY5),RIGHT_SHIFT_ARRAY)==(RIGHT_SHIFT_ARRAY(ii,jj,nn));
  List_Header(Machine(L_ARRAY5),LEFT_SHIFT_ARRAY)==(LEFT_SHIFT_ARRAY(ii,jj,nn));
  List_Header(Machine(L_ARRAY5),SEARCH_MAX_EQL_ARRAY)==(rr,bb <-- SEARCH_MAX_EQL_ARRAY(ii,jj,vv));
  List_Header(Machine(L_ARRAY5),SEARCH_MIN_EQL_ARRAY)==(rr,bb <-- SEARCH_MIN_EQL_ARRAY(ii,jj,vv));
  List_Header(Machine(L_ARRAY5),REVERSE_ARRAY)==(REVERSE_ARRAY(ii,jj));
  List_Header(Machine(L_ARRAY5),SEARCH_MIN_GEQ_ARRAY)==(ii,bb <-- SEARCH_MIN_GEQ_ARRAY(jj,kk,vv));
  List_Header(Machine(L_ARRAY5),ASCENDING_SORT_ARRAY)==(ASCENDING_SORT_ARRAY(ii,jj))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(L_ARRAY5),VAL_ARRAY)==(ii: 0..LAC_maxidx);
  List_Precondition(Machine(L_ARRAY5),STR_ARRAY)==(ii: 0..LAC_maxidx & vv: LAC_minval..LAC_maxval);
  List_Precondition(Machine(L_ARRAY5),SET_ARRAY)==(ii: NAT & jj: NAT & jj/=MAXINT & ii..jj <: 0..LAC_maxidx & vv: LAC_minval..LAC_maxval);
  List_Precondition(Machine(L_ARRAY5),SWAP_ARRAY)==(ii: 0..LAC_maxidx & jj: 0..LAC_maxidx);
  List_Precondition(Machine(L_ARRAY5),RIGHT_SHIFT_ARRAY)==(jj: 0..LAC_maxidx & ii: 0..LAC_maxidx & nn: 0..LAC_maxidx & jj+nn: 0..LAC_maxidx & ii<=jj);
  List_Precondition(Machine(L_ARRAY5),LEFT_SHIFT_ARRAY)==(jj: 0..LAC_maxidx & jj<=MAXINT-1 & ii: 0..LAC_maxidx & ii<=jj & nn: NAT & nn<=ii);
  List_Precondition(Machine(L_ARRAY5),SEARCH_MAX_EQL_ARRAY)==(jj: 0..LAC_maxidx & ii: 0..LAC_maxidx & ii<=jj & vv: LAC_minval..LAC_maxval);
  List_Precondition(Machine(L_ARRAY5),SEARCH_MIN_EQL_ARRAY)==(jj: 0..LAC_maxidx & ii: 0..LAC_maxidx & ii<=jj & vv: LAC_minval..LAC_maxval);
  List_Precondition(Machine(L_ARRAY5),REVERSE_ARRAY)==(jj: 0..LAC_maxidx & ii: 0..LAC_maxidx);
  List_Precondition(Machine(L_ARRAY5),SEARCH_MIN_GEQ_ARRAY)==(kk: 0..LAC_maxidx & kk/=MAXINT & jj: 0..LAC_maxidx & vv: LAC_minval..LAC_maxval & jj<=kk);
  List_Precondition(Machine(L_ARRAY5),ASCENDING_SORT_ARRAY)==(jj: 0..LAC_maxidx & jj<=MAXINT-1 & ii: 0..LAC_maxidx & ii<=MAXINT-1)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(L_ARRAY5),ASCENDING_SORT_ARRAY)==(jj: 0..LAC_maxidx & jj<=MAXINT-1 & ii: 0..LAC_maxidx & ii<=MAXINT-1 | @(ff,bb).(ff: ii..jj >->> ii..jj & bb: 0..LAC_maxidx +-> LAC_minval..LAC_maxval & bb = (ff;arr_vrb) & !uu.(uu: ii..jj-1 => bb(uu)<=bb(uu+1)) ==> arr_vrb:=arr_vrb<+bb));
  Expanded_List_Substitution(Machine(L_ARRAY5),SEARCH_MIN_GEQ_ARRAY)==(kk: 0..LAC_maxidx & kk/=MAXINT & jj: 0..LAC_maxidx & vv: LAC_minval..LAC_maxval & jj<=kk | @res.(res = min({xx | xx: jj..kk & arr_vrb(xx)>=vv}\/{kk+1}) ==> ii,bb:=res,bool(res/=kk+1)));
  Expanded_List_Substitution(Machine(L_ARRAY5),REVERSE_ARRAY)==(jj: 0..LAC_maxidx & ii: 0..LAC_maxidx | arr_vrb:=arr_vrb<+%xx.(xx: ii..jj | arr_vrb(jj+ii-xx)));
  Expanded_List_Substitution(Machine(L_ARRAY5),SEARCH_MIN_EQL_ARRAY)==(jj: 0..LAC_maxidx & ii: 0..LAC_maxidx & ii<=jj & vv: LAC_minval..LAC_maxval | @(nrr,nbb,sol).(nrr: NAT & nbb: BOOL & sol = (ii..jj<|arr_vrb)~[{vv}] & (sol/={} => nrr = min(sol)) & nbb = bool(sol/={}) ==> rr,bb:=nrr,nbb));
  Expanded_List_Substitution(Machine(L_ARRAY5),SEARCH_MAX_EQL_ARRAY)==(jj: 0..LAC_maxidx & ii: 0..LAC_maxidx & ii<=jj & vv: LAC_minval..LAC_maxval | @(nrr,nbb,sol).(nrr: NAT & nbb: BOOL & sol = (ii..jj<|arr_vrb)~[{vv}] & (sol/={} => nrr = max(sol)) & nbb = bool(sol/={}) ==> rr,bb:=nrr,nbb));
  Expanded_List_Substitution(Machine(L_ARRAY5),LEFT_SHIFT_ARRAY)==(jj: 0..LAC_maxidx & jj<=MAXINT-1 & ii: 0..LAC_maxidx & ii<=jj & nn: NAT & nn<=ii | arr_vrb:=arr_vrb<+%xx.(xx: 0..LAC_maxidx & xx+nn: ii..jj | arr_vrb(xx+nn)));
  Expanded_List_Substitution(Machine(L_ARRAY5),RIGHT_SHIFT_ARRAY)==(jj: 0..LAC_maxidx & ii: 0..LAC_maxidx & nn: 0..LAC_maxidx & jj+nn: 0..LAC_maxidx & ii<=jj | arr_vrb:=arr_vrb<+%xx.(xx: ii+nn..jj+nn | arr_vrb(xx-nn)));
  Expanded_List_Substitution(Machine(L_ARRAY5),SWAP_ARRAY)==(ii: 0..LAC_maxidx & jj: 0..LAC_maxidx | arr_vrb:=arr_vrb<+{ii|->arr_vrb(jj),jj|->arr_vrb(ii)});
  Expanded_List_Substitution(Machine(L_ARRAY5),SET_ARRAY)==(ii: NAT & jj: NAT & jj/=MAXINT & ii..jj <: 0..LAC_maxidx & vv: LAC_minval..LAC_maxval | arr_vrb:=arr_vrb<+(ii..jj)*{vv});
  Expanded_List_Substitution(Machine(L_ARRAY5),STR_ARRAY)==(ii: 0..LAC_maxidx & vv: LAC_minval..LAC_maxval | arr_vrb:=arr_vrb<+{ii|->vv});
  Expanded_List_Substitution(Machine(L_ARRAY5),VAL_ARRAY)==(ii: 0..LAC_maxidx | vv:=arr_vrb(ii));
  List_Substitution(Machine(L_ARRAY5),VAL_ARRAY)==(vv:=arr_vrb(ii));
  List_Substitution(Machine(L_ARRAY5),STR_ARRAY)==(arr_vrb(ii):=vv);
  List_Substitution(Machine(L_ARRAY5),SET_ARRAY)==(arr_vrb:=arr_vrb<+(ii..jj)*{vv});
  List_Substitution(Machine(L_ARRAY5),SWAP_ARRAY)==(arr_vrb:=arr_vrb<+{ii|->arr_vrb(jj),jj|->arr_vrb(ii)});
  List_Substitution(Machine(L_ARRAY5),RIGHT_SHIFT_ARRAY)==(arr_vrb:=arr_vrb<+%xx.(xx: ii+nn..jj+nn | arr_vrb(xx-nn)));
  List_Substitution(Machine(L_ARRAY5),LEFT_SHIFT_ARRAY)==(arr_vrb:=arr_vrb<+%xx.(xx: 0..LAC_maxidx & xx+nn: ii..jj | arr_vrb(xx+nn)));
  List_Substitution(Machine(L_ARRAY5),SEARCH_MAX_EQL_ARRAY)==(ANY nrr,nbb,sol WHERE nrr: NAT & nbb: BOOL & sol = (ii..jj<|arr_vrb)~[{vv}] & (sol/={} => nrr = max(sol)) & nbb = bool(sol/={}) THEN rr:=nrr || bb:=nbb END);
  List_Substitution(Machine(L_ARRAY5),SEARCH_MIN_EQL_ARRAY)==(ANY nrr,nbb,sol WHERE nrr: NAT & nbb: BOOL & sol = (ii..jj<|arr_vrb)~[{vv}] & (sol/={} => nrr = min(sol)) & nbb = bool(sol/={}) THEN rr:=nrr || bb:=nbb END);
  List_Substitution(Machine(L_ARRAY5),REVERSE_ARRAY)==(arr_vrb:=arr_vrb<+%xx.(xx: ii..jj | arr_vrb(jj+ii-xx)));
  List_Substitution(Machine(L_ARRAY5),SEARCH_MIN_GEQ_ARRAY)==(LET res BE res = min({xx | xx: jj..kk & arr_vrb(xx)>=vv}\/{kk+1}) IN ii:=res || bb:=bool(res/=kk+1) END);
  List_Substitution(Machine(L_ARRAY5),ASCENDING_SORT_ARRAY)==(ANY ff,bb WHERE ff: ii..jj >->> ii..jj & bb: 0..LAC_maxidx +-> LAC_minval..LAC_maxval & bb = (ff;arr_vrb) & !uu.(uu: ii..jj-1 => bb(uu)<=bb(uu+1)) THEN arr_vrb:=arr_vrb<+bb END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(L_ARRAY5))==(?);
  Inherited_List_Constants(Machine(L_ARRAY5))==(?);
  List_Constants(Machine(L_ARRAY5))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(L_ARRAY5))==(?);
  Context_List_Defered(Machine(L_ARRAY5))==(?);
  Context_List_Sets(Machine(L_ARRAY5))==(?);
  List_Valuable_Sets(Machine(L_ARRAY5))==(?);
  Inherited_List_Enumerated(Machine(L_ARRAY5))==(?);
  Inherited_List_Defered(Machine(L_ARRAY5))==(?);
  Inherited_List_Sets(Machine(L_ARRAY5))==(?);
  List_Enumerated(Machine(L_ARRAY5))==(?);
  List_Defered(Machine(L_ARRAY5))==(?);
  List_Sets(Machine(L_ARRAY5))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(L_ARRAY5))==(?);
  Expanded_List_HiddenConstants(Machine(L_ARRAY5))==(?);
  List_HiddenConstants(Machine(L_ARRAY5))==(?);
  External_List_HiddenConstants(Machine(L_ARRAY5))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(L_ARRAY5))==(btrue);
  Context_List_Properties(Machine(L_ARRAY5))==(btrue);
  Inherited_List_Properties(Machine(L_ARRAY5))==(btrue);
  List_Properties(Machine(L_ARRAY5))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(L_ARRAY5),VAL_ARRAY)==(?);
  List_ANY_Var(Machine(L_ARRAY5),STR_ARRAY)==(?);
  List_ANY_Var(Machine(L_ARRAY5),SET_ARRAY)==(?);
  List_ANY_Var(Machine(L_ARRAY5),SWAP_ARRAY)==(?);
  List_ANY_Var(Machine(L_ARRAY5),RIGHT_SHIFT_ARRAY)==(?);
  List_ANY_Var(Machine(L_ARRAY5),LEFT_SHIFT_ARRAY)==(?);
  List_ANY_Var(Machine(L_ARRAY5),SEARCH_MAX_EQL_ARRAY)==((Var(nrr) == btype(INTEGER,?,?)),(Var(nbb) == btype(BOOL,?,?)),(Var(sol) == SetOf(btype(INTEGER,?,?))));
  List_ANY_Var(Machine(L_ARRAY5),SEARCH_MIN_EQL_ARRAY)==((Var(nrr) == btype(INTEGER,?,?)),(Var(nbb) == btype(BOOL,?,?)),(Var(sol) == SetOf(btype(INTEGER,?,?))));
  List_ANY_Var(Machine(L_ARRAY5),REVERSE_ARRAY)==(?);
  List_ANY_Var(Machine(L_ARRAY5),SEARCH_MIN_GEQ_ARRAY)==(?);
  List_ANY_Var(Machine(L_ARRAY5),ASCENDING_SORT_ARRAY)==((Var(ff) == SetOf(btype(INTEGER,ii,jj)*btype(INTEGER,ii,jj))),(Var(bb) == SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?))));
  List_ANY_Var(Machine(L_ARRAY5),?)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(L_ARRAY5)) == (? | ? | arr_vrb | ? | VAL_ARRAY,STR_ARRAY,SET_ARRAY,SWAP_ARRAY,RIGHT_SHIFT_ARRAY,LEFT_SHIFT_ARRAY,SEARCH_MAX_EQL_ARRAY,SEARCH_MIN_EQL_ARRAY,REVERSE_ARRAY,SEARCH_MIN_GEQ_ARRAY,ASCENDING_SORT_ARRAY | ? | ? | LAC_minval,LAC_maxval,LAC_maxidx | L_ARRAY5);
  List_Of_HiddenCst_Ids(Machine(L_ARRAY5)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(L_ARRAY5)) == (?);
  List_Of_VisibleVar_Ids(Machine(L_ARRAY5)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(L_ARRAY5)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Machine(L_ARRAY5)) == (Type(LAC_maxidx) == Prm(btype(INTEGER,?,?));Type(LAC_maxval) == Prm(btype(INTEGER,?,?));Type(LAC_minval) == Prm(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(L_ARRAY5)) == (Type(arr_vrb) == Mvl(SetOf(btype(INTEGER,0,LAC_maxidx)*btype(INTEGER,LAC_minval,LAC_maxval))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(L_ARRAY5)) == (Type(ASCENDING_SORT_ARRAY) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SEARCH_MIN_GEQ_ARRAY) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(REVERSE_ARRAY) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SEARCH_MIN_EQL_ARRAY) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SEARCH_MAX_EQL_ARRAY) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(LEFT_SHIFT_ARRAY) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(RIGHT_SHIFT_ARRAY) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SWAP_ARRAY) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SET_ARRAY) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(STR_ARRAY) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(VAL_ARRAY) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)));
  Observers(Machine(L_ARRAY5)) == (Type(SEARCH_MIN_GEQ_ARRAY) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SEARCH_MIN_EQL_ARRAY) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SEARCH_MAX_EQL_ARRAY) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(VAL_ARRAY) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)))
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
