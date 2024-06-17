Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(L_ARRAY5_1))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(L_ARRAY5_1))==(Machine(L_ARRAY5));
  Level(Implementation(L_ARRAY5_1))==(1);
  Upper_Level(Implementation(L_ARRAY5_1))==(Machine(L_ARRAY5))
END
&
THEORY LoadedStructureX IS
  Implementation(L_ARRAY5_1)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(L_ARRAY5_1))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(L_ARRAY5_1))==(L_ARRAY4);
  Inherited_List_Includes(Implementation(L_ARRAY5_1))==(L_ARRAY4)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(L_ARRAY5_1))==(VAL_ARRAY,STR_ARRAY,SET_ARRAY,SWAP_ARRAY,RIGHT_SHIFT_ARRAY,LEFT_SHIFT_ARRAY,SEARCH_MAX_EQL_ARRAY,SEARCH_MIN_EQL_ARRAY,REVERSE_ARRAY,SEARCH_MIN_GEQ_ARRAY)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(L_ARRAY5_1))==(L_ARRAY4)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(L_ARRAY5_1))==(?);
  Context_List_Variables(Implementation(L_ARRAY5_1))==(?);
  Abstract_List_Variables(Implementation(L_ARRAY5_1))==(arr_vrb);
  Local_List_Variables(Implementation(L_ARRAY5_1))==(?);
  List_Variables(Implementation(L_ARRAY5_1))==(arr_vrb);
  External_List_Variables(Implementation(L_ARRAY5_1))==(arr_vrb)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(L_ARRAY5_1))==(?);
  Abstract_List_VisibleVariables(Implementation(L_ARRAY5_1))==(?);
  External_List_VisibleVariables(Implementation(L_ARRAY5_1))==(?);
  Expanded_List_VisibleVariables(Implementation(L_ARRAY5_1))==(?);
  List_VisibleVariables(Implementation(L_ARRAY5_1))==(?);
  Internal_List_VisibleVariables(Implementation(L_ARRAY5_1))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(L_ARRAY5_1))==(btrue);
  Abstract_List_Invariant(Implementation(L_ARRAY5_1))==(arr_vrb: 0..LAC_maxidx --> LAC_minval..LAC_maxval);
  Expanded_List_Invariant(Implementation(L_ARRAY5_1))==(arr_vrb: 0..LAC_maxidx --> LAC_minval..LAC_maxval);
  Context_List_Invariant(Implementation(L_ARRAY5_1))==(btrue);
  List_Invariant(Implementation(L_ARRAY5_1))==(btrue)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(L_ARRAY5_1))==(btrue);
  Expanded_List_Assertions(Implementation(L_ARRAY5_1))==(btrue);
  Context_List_Assertions(Implementation(L_ARRAY5_1))==(btrue);
  List_Assertions(Implementation(L_ARRAY5_1))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(L_ARRAY5_1))==(@(arr_vrb$0).(arr_vrb$0: 0..LAC_maxidx --> LAC_minval..LAC_maxval ==> arr_vrb:=arr_vrb$0));
  Context_List_Initialisation(Implementation(L_ARRAY5_1))==(skip);
  List_Initialisation(Implementation(L_ARRAY5_1))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(L_ARRAY5_1))==(LAC_minval,LAC_maxval,LAC_maxidx)
END
&
THEORY ListInstanciatedParametersX IS
  Precond_Instanciated_Parameters(Implementation(L_ARRAY5_1),Machine(L_ARRAY4))==(btrue);
  List_Instanciated_Parameters(Implementation(L_ARRAY5_1),Machine(L_ARRAY4))==(LAC_minval,LAC_maxval,LAC_maxidx)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(L_ARRAY5_1),Machine(L_ARRAY4))==(LAC_minval: NAT & LAC_maxval: NAT & LAC_maxidx: NAT1 & LAC_minval<=LAC_maxval);
  List_Constraints(Implementation(L_ARRAY5_1))==(LAC_minval: NAT & LAC_maxval: NAT & LAC_maxidx: NAT1 & LAC_minval<=LAC_maxval);
  List_Context_Constraints(Implementation(L_ARRAY5_1))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(L_ARRAY5_1))==(ASCENDING_SORT_ARRAY,VAL_ARRAY,STR_ARRAY,SET_ARRAY,SWAP_ARRAY,RIGHT_SHIFT_ARRAY,LEFT_SHIFT_ARRAY,SEARCH_MAX_EQL_ARRAY,SEARCH_MIN_EQL_ARRAY,REVERSE_ARRAY,SEARCH_MIN_GEQ_ARRAY);
  List_Operations(Implementation(L_ARRAY5_1))==(ASCENDING_SORT_ARRAY,VAL_ARRAY,STR_ARRAY,SET_ARRAY,SWAP_ARRAY,RIGHT_SHIFT_ARRAY,LEFT_SHIFT_ARRAY,SEARCH_MAX_EQL_ARRAY,SEARCH_MIN_EQL_ARRAY,REVERSE_ARRAY,SEARCH_MIN_GEQ_ARRAY)
END
&
THEORY ListInputX IS
  List_Input(Implementation(L_ARRAY5_1),SEARCH_MIN_GEQ_ARRAY)==(jj,kk,vv);
  List_Input(Implementation(L_ARRAY5_1),REVERSE_ARRAY)==(ii,jj);
  List_Input(Implementation(L_ARRAY5_1),SEARCH_MIN_EQL_ARRAY)==(ii,jj,vv);
  List_Input(Implementation(L_ARRAY5_1),SEARCH_MAX_EQL_ARRAY)==(ii,jj,vv);
  List_Input(Implementation(L_ARRAY5_1),LEFT_SHIFT_ARRAY)==(ii,jj,nn);
  List_Input(Implementation(L_ARRAY5_1),RIGHT_SHIFT_ARRAY)==(ii,jj,nn);
  List_Input(Implementation(L_ARRAY5_1),SWAP_ARRAY)==(ii,jj);
  List_Input(Implementation(L_ARRAY5_1),SET_ARRAY)==(ii,jj,vv);
  List_Input(Implementation(L_ARRAY5_1),STR_ARRAY)==(ii,vv);
  List_Input(Implementation(L_ARRAY5_1),VAL_ARRAY)==(ii);
  List_Input(Implementation(L_ARRAY5_1),ASCENDING_SORT_ARRAY)==(ii,jj)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(L_ARRAY5_1),SEARCH_MIN_GEQ_ARRAY)==(ii,bb);
  List_Output(Implementation(L_ARRAY5_1),REVERSE_ARRAY)==(?);
  List_Output(Implementation(L_ARRAY5_1),SEARCH_MIN_EQL_ARRAY)==(rr,bb);
  List_Output(Implementation(L_ARRAY5_1),SEARCH_MAX_EQL_ARRAY)==(rr,bb);
  List_Output(Implementation(L_ARRAY5_1),LEFT_SHIFT_ARRAY)==(?);
  List_Output(Implementation(L_ARRAY5_1),RIGHT_SHIFT_ARRAY)==(?);
  List_Output(Implementation(L_ARRAY5_1),SWAP_ARRAY)==(?);
  List_Output(Implementation(L_ARRAY5_1),SET_ARRAY)==(?);
  List_Output(Implementation(L_ARRAY5_1),STR_ARRAY)==(?);
  List_Output(Implementation(L_ARRAY5_1),VAL_ARRAY)==(vv);
  List_Output(Implementation(L_ARRAY5_1),ASCENDING_SORT_ARRAY)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(L_ARRAY5_1),SEARCH_MIN_GEQ_ARRAY)==(ii,bb <-- SEARCH_MIN_GEQ_ARRAY(jj,kk,vv));
  List_Header(Implementation(L_ARRAY5_1),REVERSE_ARRAY)==(REVERSE_ARRAY(ii,jj));
  List_Header(Implementation(L_ARRAY5_1),SEARCH_MIN_EQL_ARRAY)==(rr,bb <-- SEARCH_MIN_EQL_ARRAY(ii,jj,vv));
  List_Header(Implementation(L_ARRAY5_1),SEARCH_MAX_EQL_ARRAY)==(rr,bb <-- SEARCH_MAX_EQL_ARRAY(ii,jj,vv));
  List_Header(Implementation(L_ARRAY5_1),LEFT_SHIFT_ARRAY)==(LEFT_SHIFT_ARRAY(ii,jj,nn));
  List_Header(Implementation(L_ARRAY5_1),RIGHT_SHIFT_ARRAY)==(RIGHT_SHIFT_ARRAY(ii,jj,nn));
  List_Header(Implementation(L_ARRAY5_1),SWAP_ARRAY)==(SWAP_ARRAY(ii,jj));
  List_Header(Implementation(L_ARRAY5_1),SET_ARRAY)==(SET_ARRAY(ii,jj,vv));
  List_Header(Implementation(L_ARRAY5_1),STR_ARRAY)==(STR_ARRAY(ii,vv));
  List_Header(Implementation(L_ARRAY5_1),VAL_ARRAY)==(vv <-- VAL_ARRAY(ii));
  List_Header(Implementation(L_ARRAY5_1),ASCENDING_SORT_ARRAY)==(ASCENDING_SORT_ARRAY(ii,jj))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(L_ARRAY5_1),SEARCH_MIN_GEQ_ARRAY)==(kk: 0..LAC_maxidx & kk/=MAXINT & jj: 0..LAC_maxidx & vv: LAC_minval..LAC_maxval & jj<=kk);
  List_Precondition(Implementation(L_ARRAY5_1),SEARCH_MIN_GEQ_ARRAY)==(kk: 0..LAC_maxidx & kk/=MAXINT & jj: 0..LAC_maxidx & vv: LAC_minval..LAC_maxval & jj<=kk);
  Own_Precondition(Implementation(L_ARRAY5_1),REVERSE_ARRAY)==(jj: 0..LAC_maxidx & ii: 0..LAC_maxidx);
  List_Precondition(Implementation(L_ARRAY5_1),REVERSE_ARRAY)==(jj: 0..LAC_maxidx & ii: 0..LAC_maxidx);
  Own_Precondition(Implementation(L_ARRAY5_1),SEARCH_MIN_EQL_ARRAY)==(jj: 0..LAC_maxidx & ii: 0..LAC_maxidx & ii<=jj & vv: LAC_minval..LAC_maxval);
  List_Precondition(Implementation(L_ARRAY5_1),SEARCH_MIN_EQL_ARRAY)==(jj: 0..LAC_maxidx & ii: 0..LAC_maxidx & ii<=jj & vv: LAC_minval..LAC_maxval);
  Own_Precondition(Implementation(L_ARRAY5_1),SEARCH_MAX_EQL_ARRAY)==(jj: 0..LAC_maxidx & ii: 0..LAC_maxidx & ii<=jj & vv: LAC_minval..LAC_maxval);
  List_Precondition(Implementation(L_ARRAY5_1),SEARCH_MAX_EQL_ARRAY)==(jj: 0..LAC_maxidx & ii: 0..LAC_maxidx & ii<=jj & vv: LAC_minval..LAC_maxval);
  Own_Precondition(Implementation(L_ARRAY5_1),LEFT_SHIFT_ARRAY)==(jj: 0..LAC_maxidx & jj<=MAXINT-1 & ii: 0..LAC_maxidx & ii<=jj & nn: NAT & nn<=ii);
  List_Precondition(Implementation(L_ARRAY5_1),LEFT_SHIFT_ARRAY)==(jj: 0..LAC_maxidx & jj<=MAXINT-1 & ii: 0..LAC_maxidx & ii<=jj & nn: NAT & nn<=ii);
  Own_Precondition(Implementation(L_ARRAY5_1),RIGHT_SHIFT_ARRAY)==(jj: 0..LAC_maxidx & ii: 0..LAC_maxidx & nn: 0..LAC_maxidx & jj+nn: 0..LAC_maxidx & ii<=jj);
  List_Precondition(Implementation(L_ARRAY5_1),RIGHT_SHIFT_ARRAY)==(jj: 0..LAC_maxidx & ii: 0..LAC_maxidx & nn: 0..LAC_maxidx & jj+nn: 0..LAC_maxidx & ii<=jj);
  Own_Precondition(Implementation(L_ARRAY5_1),SWAP_ARRAY)==(ii: 0..LAC_maxidx & jj: 0..LAC_maxidx);
  List_Precondition(Implementation(L_ARRAY5_1),SWAP_ARRAY)==(ii: 0..LAC_maxidx & jj: 0..LAC_maxidx);
  Own_Precondition(Implementation(L_ARRAY5_1),SET_ARRAY)==(ii: NAT & jj: NAT & jj/=MAXINT & ii..jj <: 0..LAC_maxidx & vv: LAC_minval..LAC_maxval);
  List_Precondition(Implementation(L_ARRAY5_1),SET_ARRAY)==(ii: NAT & jj: NAT & jj/=MAXINT & ii..jj <: 0..LAC_maxidx & vv: LAC_minval..LAC_maxval);
  Own_Precondition(Implementation(L_ARRAY5_1),STR_ARRAY)==(ii: 0..LAC_maxidx & vv: LAC_minval..LAC_maxval);
  List_Precondition(Implementation(L_ARRAY5_1),STR_ARRAY)==(ii: 0..LAC_maxidx & vv: LAC_minval..LAC_maxval);
  Own_Precondition(Implementation(L_ARRAY5_1),VAL_ARRAY)==(ii: 0..LAC_maxidx);
  List_Precondition(Implementation(L_ARRAY5_1),VAL_ARRAY)==(ii: 0..LAC_maxidx);
  Own_Precondition(Implementation(L_ARRAY5_1),ASCENDING_SORT_ARRAY)==(btrue);
  List_Precondition(Implementation(L_ARRAY5_1),ASCENDING_SORT_ARRAY)==(jj: 0..LAC_maxidx & jj<=MAXINT-1 & ii: 0..LAC_maxidx & ii<=MAXINT-1)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(L_ARRAY5_1),ASCENDING_SORT_ARRAY)==(jj: 0..LAC_maxidx & jj<=MAXINT-1 & ii: 0..LAC_maxidx & ii<=MAXINT-1 | @kk.((ii+1: INT & ii: INT & 1: INT | kk:=ii+1);WHILE kk<=jj DO @(vv,nn,ll,bb).((kk: 0..LAC_maxidx | vv:=arr_vrb(kk));(kk-1: INT & kk: INT & 1: INT | ll:=kk-1);(ll: 0..LAC_maxidx & ll/=MAXINT & ii: 0..LAC_maxidx & vv: LAC_minval..LAC_maxval & ii<=ll | @res.(res = min({xx | xx: ii..ll & arr_vrb(xx)>=vv}\/{ll+1}) ==> nn,bb:=res,bool(res/=ll+1)));(bb = TRUE ==> ((ll: 0..LAC_maxidx & nn: 0..LAC_maxidx & 1: 0..LAC_maxidx & ll+1: 0..LAC_maxidx & nn<=ll | arr_vrb:=arr_vrb<+%xx.(xx: nn+1..ll+1 | arr_vrb(xx-1)));(nn: 0..LAC_maxidx & vv: LAC_minval..LAC_maxval | arr_vrb:=arr_vrb<+{nn|->vv})) [] not(bb = TRUE) ==> skip);(kk+1: INT & kk: INT & 1: INT | kk:=kk+1)) INVARIANT kk: NATURAL & ii+1<=kk & (not(kk = ii+1) => kk<=jj+1) & !xx.(xx: NATURAL & xx>=ii & xx+1<kk => arr_vrb(xx)<=arr_vrb(xx+1)) & #tt.(tt: ii..kk-1 >->> ii..kk-1 & arr_vrb$0<+(tt;arr_vrb$0) = arr_vrb) VARIANT ii+jj+2-kk END));
  List_Substitution(Implementation(L_ARRAY5_1),SEARCH_MIN_GEQ_ARRAY)==(LET res BE res = min({xx | xx: jj..kk & arr_vrb(xx)>=vv}\/{kk+1}) IN ii:=res || bb:=bool(res/=kk+1) END);
  Expanded_List_Substitution(Implementation(L_ARRAY5_1),SEARCH_MIN_GEQ_ARRAY)==(kk: 0..LAC_maxidx & kk/=MAXINT & jj: 0..LAC_maxidx & vv: LAC_minval..LAC_maxval & jj<=kk | @res.(res = min({xx | xx: jj..kk & arr_vrb(xx)>=vv}\/{kk+1}) ==> ii,bb:=res,bool(res/=kk+1)));
  List_Substitution(Implementation(L_ARRAY5_1),REVERSE_ARRAY)==(arr_vrb:=arr_vrb<+%xx.(xx: ii..jj | arr_vrb(jj+ii-xx)));
  Expanded_List_Substitution(Implementation(L_ARRAY5_1),REVERSE_ARRAY)==(jj: 0..LAC_maxidx & ii: 0..LAC_maxidx | arr_vrb:=arr_vrb<+%xx.(xx: ii..jj | arr_vrb(jj+ii-xx)));
  List_Substitution(Implementation(L_ARRAY5_1),SEARCH_MIN_EQL_ARRAY)==(ANY nrr,nbb,sol WHERE nrr: NAT & nbb: BOOL & sol = (ii..jj<|arr_vrb)~[{vv}] & (sol/={} => nrr = min(sol)) & nbb = bool(sol/={}) THEN rr:=nrr || bb:=nbb END);
  Expanded_List_Substitution(Implementation(L_ARRAY5_1),SEARCH_MIN_EQL_ARRAY)==(jj: 0..LAC_maxidx & ii: 0..LAC_maxidx & ii<=jj & vv: LAC_minval..LAC_maxval | @(nrr,nbb,sol).(nrr: NAT & nbb: BOOL & sol = (ii..jj<|arr_vrb)~[{vv}] & (sol/={} => nrr = min(sol)) & nbb = bool(sol/={}) ==> rr,bb:=nrr,nbb));
  List_Substitution(Implementation(L_ARRAY5_1),SEARCH_MAX_EQL_ARRAY)==(ANY nrr,nbb,sol WHERE nrr: NAT & nbb: BOOL & sol = (ii..jj<|arr_vrb)~[{vv}] & (sol/={} => nrr = max(sol)) & nbb = bool(sol/={}) THEN rr:=nrr || bb:=nbb END);
  Expanded_List_Substitution(Implementation(L_ARRAY5_1),SEARCH_MAX_EQL_ARRAY)==(jj: 0..LAC_maxidx & ii: 0..LAC_maxidx & ii<=jj & vv: LAC_minval..LAC_maxval | @(nrr,nbb,sol).(nrr: NAT & nbb: BOOL & sol = (ii..jj<|arr_vrb)~[{vv}] & (sol/={} => nrr = max(sol)) & nbb = bool(sol/={}) ==> rr,bb:=nrr,nbb));
  List_Substitution(Implementation(L_ARRAY5_1),LEFT_SHIFT_ARRAY)==(arr_vrb:=arr_vrb<+%xx.(xx: 0..LAC_maxidx & xx+nn: ii..jj | arr_vrb(xx+nn)));
  Expanded_List_Substitution(Implementation(L_ARRAY5_1),LEFT_SHIFT_ARRAY)==(jj: 0..LAC_maxidx & jj<=MAXINT-1 & ii: 0..LAC_maxidx & ii<=jj & nn: NAT & nn<=ii | arr_vrb:=arr_vrb<+%xx.(xx: 0..LAC_maxidx & xx+nn: ii..jj | arr_vrb(xx+nn)));
  List_Substitution(Implementation(L_ARRAY5_1),RIGHT_SHIFT_ARRAY)==(arr_vrb:=arr_vrb<+%xx.(xx: ii+nn..jj+nn | arr_vrb(xx-nn)));
  Expanded_List_Substitution(Implementation(L_ARRAY5_1),RIGHT_SHIFT_ARRAY)==(jj: 0..LAC_maxidx & ii: 0..LAC_maxidx & nn: 0..LAC_maxidx & jj+nn: 0..LAC_maxidx & ii<=jj | arr_vrb:=arr_vrb<+%xx.(xx: ii+nn..jj+nn | arr_vrb(xx-nn)));
  List_Substitution(Implementation(L_ARRAY5_1),SWAP_ARRAY)==(arr_vrb:=arr_vrb<+{ii|->arr_vrb(jj),jj|->arr_vrb(ii)});
  Expanded_List_Substitution(Implementation(L_ARRAY5_1),SWAP_ARRAY)==(ii: 0..LAC_maxidx & jj: 0..LAC_maxidx | arr_vrb:=arr_vrb<+{ii|->arr_vrb(jj),jj|->arr_vrb(ii)});
  List_Substitution(Implementation(L_ARRAY5_1),SET_ARRAY)==(arr_vrb:=arr_vrb<+(ii..jj)*{vv});
  Expanded_List_Substitution(Implementation(L_ARRAY5_1),SET_ARRAY)==(ii: NAT & jj: NAT & jj/=MAXINT & ii..jj <: 0..LAC_maxidx & vv: LAC_minval..LAC_maxval | arr_vrb:=arr_vrb<+(ii..jj)*{vv});
  List_Substitution(Implementation(L_ARRAY5_1),STR_ARRAY)==(arr_vrb(ii):=vv);
  Expanded_List_Substitution(Implementation(L_ARRAY5_1),STR_ARRAY)==(ii: 0..LAC_maxidx & vv: LAC_minval..LAC_maxval | arr_vrb:=arr_vrb<+{ii|->vv});
  List_Substitution(Implementation(L_ARRAY5_1),VAL_ARRAY)==(vv:=arr_vrb(ii));
  Expanded_List_Substitution(Implementation(L_ARRAY5_1),VAL_ARRAY)==(ii: 0..LAC_maxidx | vv:=arr_vrb(ii));
  List_Substitution(Implementation(L_ARRAY5_1),ASCENDING_SORT_ARRAY)==(VAR kk IN kk:=ii+1;WHILE kk<=jj DO VAR vv,nn,ll,bb IN vv <-- VAL_ARRAY(kk);ll:=kk-1;nn,bb <-- SEARCH_MIN_GEQ_ARRAY(ii,ll,vv);IF bb = TRUE THEN RIGHT_SHIFT_ARRAY(nn,ll,1);STR_ARRAY(nn,vv) END;kk:=kk+1 END INVARIANT kk: NATURAL & ii+1<=kk & (not(kk = ii+1) => kk<=jj+1) & !xx.(xx: NATURAL & xx>=ii & xx+1<kk => arr_vrb(xx)<=arr_vrb(xx+1)) & #tt.(tt: ii..kk-1 >->> ii..kk-1 & arr_vrb$0<+(tt;arr_vrb$0) = arr_vrb) VARIANT ii+jj+2-kk END END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(L_ARRAY5_1))==(?);
  Inherited_List_Constants(Implementation(L_ARRAY5_1))==(?);
  List_Constants(Implementation(L_ARRAY5_1))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(L_ARRAY5_1))==(?);
  Context_List_Defered(Implementation(L_ARRAY5_1))==(?);
  Context_List_Sets(Implementation(L_ARRAY5_1))==(?);
  List_Own_Enumerated(Implementation(L_ARRAY5_1))==(?);
  List_Valuable_Sets(Implementation(L_ARRAY5_1))==(?);
  Inherited_List_Enumerated(Implementation(L_ARRAY5_1))==(?);
  Inherited_List_Defered(Implementation(L_ARRAY5_1))==(?);
  Inherited_List_Sets(Implementation(L_ARRAY5_1))==(?);
  List_Enumerated(Implementation(L_ARRAY5_1))==(?);
  List_Defered(Implementation(L_ARRAY5_1))==(?);
  List_Sets(Implementation(L_ARRAY5_1))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(L_ARRAY5_1))==(?);
  Expanded_List_HiddenConstants(Implementation(L_ARRAY5_1))==(?);
  List_HiddenConstants(Implementation(L_ARRAY5_1))==(?);
  External_List_HiddenConstants(Implementation(L_ARRAY5_1))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(L_ARRAY5_1))==(btrue);
  Context_List_Properties(Implementation(L_ARRAY5_1))==(btrue);
  Inherited_List_Properties(Implementation(L_ARRAY5_1))==(btrue);
  List_Properties(Implementation(L_ARRAY5_1))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(L_ARRAY5_1))==(aa: aa);
  List_Values(Implementation(L_ARRAY5_1))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(L_ARRAY5_1),Machine(L_ARRAY4))==(VAL_ARRAY,STR_ARRAY,SET_ARRAY,SWAP_ARRAY,RIGHT_SHIFT_ARRAY,LEFT_SHIFT_ARRAY,SEARCH_MAX_EQL_ARRAY,SEARCH_MIN_EQL_ARRAY,REVERSE_ARRAY,SEARCH_MIN_GEQ_ARRAY)
END
&
THEORY InheritedEnvX IS
  Operations(Implementation(L_ARRAY5_1))==(Type(ASCENDING_SORT_ARRAY) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SEARCH_MIN_GEQ_ARRAY) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(REVERSE_ARRAY) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SEARCH_MIN_EQL_ARRAY) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SEARCH_MAX_EQL_ARRAY) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(LEFT_SHIFT_ARRAY) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(RIGHT_SHIFT_ARRAY) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SWAP_ARRAY) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SET_ARRAY) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(STR_ARRAY) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(VAL_ARRAY) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(L_ARRAY5_1)) == (? | ? | ? | arr_vrb | ASCENDING_SORT_ARRAY | ? | imported(Machine(L_ARRAY4)) | LAC_minval,LAC_maxval,LAC_maxidx | L_ARRAY5_1);
  List_Of_HiddenCst_Ids(Implementation(L_ARRAY5_1)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(L_ARRAY5_1)) == (?);
  List_Of_VisibleVar_Ids(Implementation(L_ARRAY5_1)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(L_ARRAY5_1)) == (?: ?);
  List_Of_Ids(Machine(L_ARRAY4)) == (? | ? | arr_vrb | ? | VAL_ARRAY,STR_ARRAY,SET_ARRAY,SWAP_ARRAY,RIGHT_SHIFT_ARRAY,LEFT_SHIFT_ARRAY,SEARCH_MAX_EQL_ARRAY,SEARCH_MIN_EQL_ARRAY,REVERSE_ARRAY,SEARCH_MIN_GEQ_ARRAY | ? | ? | LAQ_minval,LAQ_maxval,LAQ_maxidx | L_ARRAY4);
  List_Of_HiddenCst_Ids(Machine(L_ARRAY4)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(L_ARRAY4)) == (?);
  List_Of_VisibleVar_Ids(Machine(L_ARRAY4)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(L_ARRAY4)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Implementation(L_ARRAY5_1)) == (Type(LAC_maxidx) == Prm(btype(INTEGER,?,?));Type(LAC_maxval) == Prm(btype(INTEGER,?,?));Type(LAC_minval) == Prm(btype(INTEGER,?,?)))
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(L_ARRAY5_1),ASCENDING_SORT_ARRAY, 2) == (Type(vv) == Lvl(btype(INTEGER,?,?));Type(nn) == Lvl(btype(INTEGER,?,?));Type(ll) == Lvl(btype(INTEGER,?,?));Type(bb) == Lvl(btype(BOOL,?,?)));
  Variables_Loc(Implementation(L_ARRAY5_1),ASCENDING_SORT_ARRAY, 1) == (Type(kk) == Lvl(btype(INTEGER,?,?)))
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
  List_Local_Operations(Implementation(L_ARRAY5_1))==(?)
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
  TypingPredicate(Implementation(L_ARRAY5_1))==(btrue)
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(L_ARRAY5_1),Machine(L_ARRAY4))==(arr_vrb);
  ImportedVisVariablesList(Implementation(L_ARRAY5_1),Machine(L_ARRAY4))==(?)
END
&
THEORY ListLocalOpInvariantX END
)
