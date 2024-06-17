Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(L_ARRAY3_1))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(L_ARRAY3_1))==(Machine(L_ARRAY3));
  Level(Implementation(L_ARRAY3_1))==(1);
  Upper_Level(Implementation(L_ARRAY3_1))==(Machine(L_ARRAY3))
END
&
THEORY LoadedStructureX IS
  Implementation(L_ARRAY3_1)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(L_ARRAY3_1))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(L_ARRAY3_1))==(L_ARRAY2);
  Inherited_List_Includes(Implementation(L_ARRAY3_1))==(L_ARRAY2)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(L_ARRAY3_1))==(VAL_ARRAY,STR_ARRAY,SET_ARRAY,SWAP_ARRAY,RIGHT_SHIFT_ARRAY,LEFT_SHIFT_ARRAY,SEARCH_MAX_EQL_ARRAY,SEARCH_MIN_EQL_ARRAY)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(L_ARRAY3_1))==(L_ARRAY2)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(L_ARRAY3_1))==(?);
  Context_List_Variables(Implementation(L_ARRAY3_1))==(?);
  Abstract_List_Variables(Implementation(L_ARRAY3_1))==(arr_vrb);
  Local_List_Variables(Implementation(L_ARRAY3_1))==(?);
  List_Variables(Implementation(L_ARRAY3_1))==(arr_vrb);
  External_List_Variables(Implementation(L_ARRAY3_1))==(arr_vrb)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(L_ARRAY3_1))==(?);
  Abstract_List_VisibleVariables(Implementation(L_ARRAY3_1))==(?);
  External_List_VisibleVariables(Implementation(L_ARRAY3_1))==(?);
  Expanded_List_VisibleVariables(Implementation(L_ARRAY3_1))==(?);
  List_VisibleVariables(Implementation(L_ARRAY3_1))==(?);
  Internal_List_VisibleVariables(Implementation(L_ARRAY3_1))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(L_ARRAY3_1))==(btrue);
  Abstract_List_Invariant(Implementation(L_ARRAY3_1))==(arr_vrb: 0..LAT_maxidx --> LAT_VALUE);
  Expanded_List_Invariant(Implementation(L_ARRAY3_1))==(arr_vrb: 0..LAT_maxidx --> LAT_VALUE);
  Context_List_Invariant(Implementation(L_ARRAY3_1))==(btrue);
  List_Invariant(Implementation(L_ARRAY3_1))==(btrue)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(L_ARRAY3_1))==(btrue);
  Expanded_List_Assertions(Implementation(L_ARRAY3_1))==(btrue);
  Context_List_Assertions(Implementation(L_ARRAY3_1))==(btrue);
  List_Assertions(Implementation(L_ARRAY3_1))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(L_ARRAY3_1))==(@(arr_vrb$0).(arr_vrb$0: 0..LAT_maxidx --> LAT_VALUE ==> arr_vrb:=arr_vrb$0));
  Context_List_Initialisation(Implementation(L_ARRAY3_1))==(skip);
  List_Initialisation(Implementation(L_ARRAY3_1))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(L_ARRAY3_1))==(LAT_VALUE,LAT_maxidx)
END
&
THEORY ListInstanciatedParametersX IS
  Precond_Instanciated_Parameters(Implementation(L_ARRAY3_1),Machine(L_ARRAY2))==(btrue);
  List_Instanciated_Parameters(Implementation(L_ARRAY3_1),Machine(L_ARRAY2))==(LAT_VALUE,LAT_maxidx)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(L_ARRAY3_1),Machine(L_ARRAY2))==(LAT_maxidx: NAT1 & LAT_VALUE: FIN(INTEGER) & not(LAT_VALUE = {}));
  List_Constraints(Implementation(L_ARRAY3_1))==(LAT_maxidx: NAT1 & LAT_VALUE: FIN(INTEGER) & not(LAT_VALUE = {}));
  List_Context_Constraints(Implementation(L_ARRAY3_1))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(L_ARRAY3_1))==(REVERSE_ARRAY,VAL_ARRAY,STR_ARRAY,SET_ARRAY,SWAP_ARRAY,RIGHT_SHIFT_ARRAY,LEFT_SHIFT_ARRAY,SEARCH_MAX_EQL_ARRAY,SEARCH_MIN_EQL_ARRAY);
  List_Operations(Implementation(L_ARRAY3_1))==(REVERSE_ARRAY,VAL_ARRAY,STR_ARRAY,SET_ARRAY,SWAP_ARRAY,RIGHT_SHIFT_ARRAY,LEFT_SHIFT_ARRAY,SEARCH_MAX_EQL_ARRAY,SEARCH_MIN_EQL_ARRAY)
END
&
THEORY ListInputX IS
  List_Input(Implementation(L_ARRAY3_1),SEARCH_MIN_EQL_ARRAY)==(ii,jj,vv);
  List_Input(Implementation(L_ARRAY3_1),SEARCH_MAX_EQL_ARRAY)==(ii,jj,vv);
  List_Input(Implementation(L_ARRAY3_1),LEFT_SHIFT_ARRAY)==(ii,jj,nn);
  List_Input(Implementation(L_ARRAY3_1),RIGHT_SHIFT_ARRAY)==(ii,jj,nn);
  List_Input(Implementation(L_ARRAY3_1),SWAP_ARRAY)==(ii,jj);
  List_Input(Implementation(L_ARRAY3_1),SET_ARRAY)==(ii,jj,vv);
  List_Input(Implementation(L_ARRAY3_1),STR_ARRAY)==(ii,vv);
  List_Input(Implementation(L_ARRAY3_1),VAL_ARRAY)==(ii);
  List_Input(Implementation(L_ARRAY3_1),REVERSE_ARRAY)==(ii,jj)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(L_ARRAY3_1),SEARCH_MIN_EQL_ARRAY)==(rr,bb);
  List_Output(Implementation(L_ARRAY3_1),SEARCH_MAX_EQL_ARRAY)==(rr,bb);
  List_Output(Implementation(L_ARRAY3_1),LEFT_SHIFT_ARRAY)==(?);
  List_Output(Implementation(L_ARRAY3_1),RIGHT_SHIFT_ARRAY)==(?);
  List_Output(Implementation(L_ARRAY3_1),SWAP_ARRAY)==(?);
  List_Output(Implementation(L_ARRAY3_1),SET_ARRAY)==(?);
  List_Output(Implementation(L_ARRAY3_1),STR_ARRAY)==(?);
  List_Output(Implementation(L_ARRAY3_1),VAL_ARRAY)==(vv);
  List_Output(Implementation(L_ARRAY3_1),REVERSE_ARRAY)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(L_ARRAY3_1),SEARCH_MIN_EQL_ARRAY)==(rr,bb <-- SEARCH_MIN_EQL_ARRAY(ii,jj,vv));
  List_Header(Implementation(L_ARRAY3_1),SEARCH_MAX_EQL_ARRAY)==(rr,bb <-- SEARCH_MAX_EQL_ARRAY(ii,jj,vv));
  List_Header(Implementation(L_ARRAY3_1),LEFT_SHIFT_ARRAY)==(LEFT_SHIFT_ARRAY(ii,jj,nn));
  List_Header(Implementation(L_ARRAY3_1),RIGHT_SHIFT_ARRAY)==(RIGHT_SHIFT_ARRAY(ii,jj,nn));
  List_Header(Implementation(L_ARRAY3_1),SWAP_ARRAY)==(SWAP_ARRAY(ii,jj));
  List_Header(Implementation(L_ARRAY3_1),SET_ARRAY)==(SET_ARRAY(ii,jj,vv));
  List_Header(Implementation(L_ARRAY3_1),STR_ARRAY)==(STR_ARRAY(ii,vv));
  List_Header(Implementation(L_ARRAY3_1),VAL_ARRAY)==(vv <-- VAL_ARRAY(ii));
  List_Header(Implementation(L_ARRAY3_1),REVERSE_ARRAY)==(REVERSE_ARRAY(ii,jj))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(L_ARRAY3_1),SEARCH_MIN_EQL_ARRAY)==(jj: 0..LAT_maxidx & ii: 0..LAT_maxidx & ii<=jj & vv: LAT_VALUE);
  List_Precondition(Implementation(L_ARRAY3_1),SEARCH_MIN_EQL_ARRAY)==(jj: 0..LAT_maxidx & ii: 0..LAT_maxidx & ii<=jj & vv: LAT_VALUE);
  Own_Precondition(Implementation(L_ARRAY3_1),SEARCH_MAX_EQL_ARRAY)==(jj: 0..LAT_maxidx & ii: 0..LAT_maxidx & ii<=jj & vv: LAT_VALUE);
  List_Precondition(Implementation(L_ARRAY3_1),SEARCH_MAX_EQL_ARRAY)==(jj: 0..LAT_maxidx & ii: 0..LAT_maxidx & ii<=jj & vv: LAT_VALUE);
  Own_Precondition(Implementation(L_ARRAY3_1),LEFT_SHIFT_ARRAY)==(jj: 0..LAT_maxidx & jj<=MAXINT-1 & ii: 0..LAT_maxidx & ii<=jj & nn: NAT & nn<=ii);
  List_Precondition(Implementation(L_ARRAY3_1),LEFT_SHIFT_ARRAY)==(jj: 0..LAT_maxidx & jj<=MAXINT-1 & ii: 0..LAT_maxidx & ii<=jj & nn: NAT & nn<=ii);
  Own_Precondition(Implementation(L_ARRAY3_1),RIGHT_SHIFT_ARRAY)==(jj: 0..LAT_maxidx & ii: 0..LAT_maxidx & nn: 0..LAT_maxidx & jj+nn: 0..LAT_maxidx & ii<=jj);
  List_Precondition(Implementation(L_ARRAY3_1),RIGHT_SHIFT_ARRAY)==(jj: 0..LAT_maxidx & ii: 0..LAT_maxidx & nn: 0..LAT_maxidx & jj+nn: 0..LAT_maxidx & ii<=jj);
  Own_Precondition(Implementation(L_ARRAY3_1),SWAP_ARRAY)==(ii: 0..LAT_maxidx & jj: 0..LAT_maxidx);
  List_Precondition(Implementation(L_ARRAY3_1),SWAP_ARRAY)==(ii: 0..LAT_maxidx & jj: 0..LAT_maxidx);
  Own_Precondition(Implementation(L_ARRAY3_1),SET_ARRAY)==(ii: NAT & jj: NAT & jj/=MAXINT & ii..jj <: 0..LAT_maxidx & vv: LAT_VALUE);
  List_Precondition(Implementation(L_ARRAY3_1),SET_ARRAY)==(ii: NAT & jj: NAT & jj/=MAXINT & ii..jj <: 0..LAT_maxidx & vv: LAT_VALUE);
  Own_Precondition(Implementation(L_ARRAY3_1),STR_ARRAY)==(ii: 0..LAT_maxidx & vv: LAT_VALUE);
  List_Precondition(Implementation(L_ARRAY3_1),STR_ARRAY)==(ii: 0..LAT_maxidx & vv: LAT_VALUE);
  Own_Precondition(Implementation(L_ARRAY3_1),VAL_ARRAY)==(ii: 0..LAT_maxidx);
  List_Precondition(Implementation(L_ARRAY3_1),VAL_ARRAY)==(ii: 0..LAT_maxidx);
  Own_Precondition(Implementation(L_ARRAY3_1),REVERSE_ARRAY)==(btrue);
  List_Precondition(Implementation(L_ARRAY3_1),REVERSE_ARRAY)==(jj: 0..LAT_maxidx & ii: 0..LAT_maxidx)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(L_ARRAY3_1),REVERSE_ARRAY)==(jj: 0..LAT_maxidx & ii: 0..LAT_maxidx | @(kk,ll).(kk:=ii;ll:=jj;WHILE kk<ll DO (kk: 0..LAT_maxidx & ll: 0..LAT_maxidx | arr_vrb:=arr_vrb<+{kk|->arr_vrb(ll),ll|->arr_vrb(kk)});(kk+1: INT & kk: INT & 1: INT | kk:=kk+1);(ll-1: INT & ll: INT & 1: INT | ll:=ll-1) INVARIANT kk: NATURAL & ll: NATURAL & kk>=ii & (ii<=jj => kk<=ll+1) & ll<=jj & kk+ll = ii+jj & arr_vrb = arr_vrb$0<+%xx.(xx: ii..jj & (xx<kk or xx>ll) | arr_vrb$0(ii+jj-xx)) VARIANT ii+jj-kk END));
  List_Substitution(Implementation(L_ARRAY3_1),SEARCH_MIN_EQL_ARRAY)==(ANY nrr,nbb,sol WHERE nrr: NAT & nbb: BOOL & sol = (ii..jj<|arr_vrb)~[{vv}] & (sol/={} => nrr = min(sol)) & nbb = bool(sol/={}) THEN rr:=nrr || bb:=nbb END);
  Expanded_List_Substitution(Implementation(L_ARRAY3_1),SEARCH_MIN_EQL_ARRAY)==(jj: 0..LAT_maxidx & ii: 0..LAT_maxidx & ii<=jj & vv: LAT_VALUE | @(nrr,nbb,sol).(nrr: NAT & nbb: BOOL & sol = (ii..jj<|arr_vrb)~[{vv}] & (sol/={} => nrr = min(sol)) & nbb = bool(sol/={}) ==> rr,bb:=nrr,nbb));
  List_Substitution(Implementation(L_ARRAY3_1),SEARCH_MAX_EQL_ARRAY)==(ANY nrr,nbb,sol WHERE nrr: NAT & nbb: BOOL & sol = (ii..jj<|arr_vrb)~[{vv}] & (sol/={} => nrr = max(sol)) & nbb = bool(sol/={}) THEN rr:=nrr || bb:=nbb END);
  Expanded_List_Substitution(Implementation(L_ARRAY3_1),SEARCH_MAX_EQL_ARRAY)==(jj: 0..LAT_maxidx & ii: 0..LAT_maxidx & ii<=jj & vv: LAT_VALUE | @(nrr,nbb,sol).(nrr: NAT & nbb: BOOL & sol = (ii..jj<|arr_vrb)~[{vv}] & (sol/={} => nrr = max(sol)) & nbb = bool(sol/={}) ==> rr,bb:=nrr,nbb));
  List_Substitution(Implementation(L_ARRAY3_1),LEFT_SHIFT_ARRAY)==(arr_vrb:=arr_vrb<+%xx.(xx: 0..LAT_maxidx & xx+nn: ii..jj | arr_vrb(xx+nn)));
  Expanded_List_Substitution(Implementation(L_ARRAY3_1),LEFT_SHIFT_ARRAY)==(jj: 0..LAT_maxidx & jj<=MAXINT-1 & ii: 0..LAT_maxidx & ii<=jj & nn: NAT & nn<=ii | arr_vrb:=arr_vrb<+%xx.(xx: 0..LAT_maxidx & xx+nn: ii..jj | arr_vrb(xx+nn)));
  List_Substitution(Implementation(L_ARRAY3_1),RIGHT_SHIFT_ARRAY)==(arr_vrb:=arr_vrb<+%xx.(xx: ii+nn..jj+nn | arr_vrb(xx-nn)));
  Expanded_List_Substitution(Implementation(L_ARRAY3_1),RIGHT_SHIFT_ARRAY)==(jj: 0..LAT_maxidx & ii: 0..LAT_maxidx & nn: 0..LAT_maxidx & jj+nn: 0..LAT_maxidx & ii<=jj | arr_vrb:=arr_vrb<+%xx.(xx: ii+nn..jj+nn | arr_vrb(xx-nn)));
  List_Substitution(Implementation(L_ARRAY3_1),SWAP_ARRAY)==(arr_vrb:=arr_vrb<+{ii|->arr_vrb(jj),jj|->arr_vrb(ii)});
  Expanded_List_Substitution(Implementation(L_ARRAY3_1),SWAP_ARRAY)==(ii: 0..LAT_maxidx & jj: 0..LAT_maxidx | arr_vrb:=arr_vrb<+{ii|->arr_vrb(jj),jj|->arr_vrb(ii)});
  List_Substitution(Implementation(L_ARRAY3_1),SET_ARRAY)==(arr_vrb:=arr_vrb<+(ii..jj)*{vv});
  Expanded_List_Substitution(Implementation(L_ARRAY3_1),SET_ARRAY)==(ii: NAT & jj: NAT & jj/=MAXINT & ii..jj <: 0..LAT_maxidx & vv: LAT_VALUE | arr_vrb:=arr_vrb<+(ii..jj)*{vv});
  List_Substitution(Implementation(L_ARRAY3_1),STR_ARRAY)==(arr_vrb(ii):=vv);
  Expanded_List_Substitution(Implementation(L_ARRAY3_1),STR_ARRAY)==(ii: 0..LAT_maxidx & vv: LAT_VALUE | arr_vrb:=arr_vrb<+{ii|->vv});
  List_Substitution(Implementation(L_ARRAY3_1),VAL_ARRAY)==(vv:=arr_vrb(ii));
  Expanded_List_Substitution(Implementation(L_ARRAY3_1),VAL_ARRAY)==(ii: 0..LAT_maxidx | vv:=arr_vrb(ii));
  List_Substitution(Implementation(L_ARRAY3_1),REVERSE_ARRAY)==(VAR kk,ll IN kk:=ii;ll:=jj;WHILE kk<ll DO SWAP_ARRAY(kk,ll);kk:=kk+1;ll:=ll-1 INVARIANT kk: NATURAL & ll: NATURAL & kk>=ii & (ii<=jj => kk<=ll+1) & ll<=jj & kk+ll = ii+jj & arr_vrb = arr_vrb$0<+%xx.(xx: ii..jj & (xx<kk or xx>ll) | arr_vrb$0(ii+jj-xx)) VARIANT ii+jj-kk END END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(L_ARRAY3_1))==(?);
  Inherited_List_Constants(Implementation(L_ARRAY3_1))==(?);
  List_Constants(Implementation(L_ARRAY3_1))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(L_ARRAY3_1))==(?);
  Context_List_Defered(Implementation(L_ARRAY3_1))==(?);
  Context_List_Sets(Implementation(L_ARRAY3_1))==(?);
  List_Own_Enumerated(Implementation(L_ARRAY3_1))==(?);
  List_Valuable_Sets(Implementation(L_ARRAY3_1))==(?);
  Inherited_List_Enumerated(Implementation(L_ARRAY3_1))==(?);
  Inherited_List_Defered(Implementation(L_ARRAY3_1))==(?);
  Inherited_List_Sets(Implementation(L_ARRAY3_1))==(?);
  List_Enumerated(Implementation(L_ARRAY3_1))==(?);
  List_Defered(Implementation(L_ARRAY3_1))==(?);
  List_Sets(Implementation(L_ARRAY3_1))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(L_ARRAY3_1))==(?);
  Expanded_List_HiddenConstants(Implementation(L_ARRAY3_1))==(?);
  List_HiddenConstants(Implementation(L_ARRAY3_1))==(?);
  External_List_HiddenConstants(Implementation(L_ARRAY3_1))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(L_ARRAY3_1))==(btrue);
  Context_List_Properties(Implementation(L_ARRAY3_1))==(btrue);
  Inherited_List_Properties(Implementation(L_ARRAY3_1))==(btrue);
  List_Properties(Implementation(L_ARRAY3_1))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(L_ARRAY3_1))==(aa: aa);
  List_Values(Implementation(L_ARRAY3_1))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(L_ARRAY3_1),Machine(L_ARRAY2))==(VAL_ARRAY,STR_ARRAY,SET_ARRAY,SWAP_ARRAY,RIGHT_SHIFT_ARRAY,LEFT_SHIFT_ARRAY,SEARCH_MAX_EQL_ARRAY,SEARCH_MIN_EQL_ARRAY)
END
&
THEORY InheritedEnvX IS
  Operations(Implementation(L_ARRAY3_1))==(Type(REVERSE_ARRAY) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SEARCH_MIN_EQL_ARRAY) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*atype(LAT_VALUE,?,?));Type(SEARCH_MAX_EQL_ARRAY) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*atype(LAT_VALUE,?,?));Type(LEFT_SHIFT_ARRAY) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(RIGHT_SHIFT_ARRAY) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SWAP_ARRAY) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SET_ARRAY) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*atype(LAT_VALUE,?,?));Type(STR_ARRAY) == Cst(No_type,btype(INTEGER,?,?)*atype(LAT_VALUE,?,?));Type(VAL_ARRAY) == Cst(atype(LAT_VALUE,?,?),btype(INTEGER,?,?)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(L_ARRAY3_1)) == (? | ? | ? | arr_vrb | REVERSE_ARRAY | ? | imported(Machine(L_ARRAY2)) | LAT_VALUE,LAT_maxidx | L_ARRAY3_1);
  List_Of_HiddenCst_Ids(Implementation(L_ARRAY3_1)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(L_ARRAY3_1)) == (?);
  List_Of_VisibleVar_Ids(Implementation(L_ARRAY3_1)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(L_ARRAY3_1)) == (?: ?);
  List_Of_Ids(Machine(L_ARRAY2)) == (? | ? | arr_vrb | ? | VAL_ARRAY,STR_ARRAY,SET_ARRAY,SWAP_ARRAY,RIGHT_SHIFT_ARRAY,LEFT_SHIFT_ARRAY,SEARCH_MAX_EQL_ARRAY,SEARCH_MIN_EQL_ARRAY | ? | ? | LAD_VALUE,LAD_maxidx | L_ARRAY2);
  List_Of_HiddenCst_Ids(Machine(L_ARRAY2)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(L_ARRAY2)) == (?);
  List_Of_VisibleVar_Ids(Machine(L_ARRAY2)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(L_ARRAY2)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Implementation(L_ARRAY3_1)) == (Type(LAT_maxidx) == Prm(btype(INTEGER,?,?));Type(LAT_VALUE) == Prm(SetOf(atype(LAT_VALUE,?,?))))
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(L_ARRAY3_1),REVERSE_ARRAY, 1) == (Type(kk) == Lvl(btype(INTEGER,?,?));Type(ll) == Lvl(btype(INTEGER,?,?)))
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
  List_Local_Operations(Implementation(L_ARRAY3_1))==(?)
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
  TypingPredicate(Implementation(L_ARRAY3_1))==(btrue)
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(L_ARRAY3_1),Machine(L_ARRAY2))==(arr_vrb);
  ImportedVisVariablesList(Implementation(L_ARRAY3_1),Machine(L_ARRAY2))==(?)
END
&
THEORY ListLocalOpInvariantX END
)
