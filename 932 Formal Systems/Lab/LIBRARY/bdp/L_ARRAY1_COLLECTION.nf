Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(L_ARRAY1_COLLECTION))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(L_ARRAY1_COLLECTION))==(Machine(L_ARRAY1_COLLECTION));
  Level(Machine(L_ARRAY1_COLLECTION))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(L_ARRAY1_COLLECTION)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(L_ARRAY1_COLLECTION))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(L_ARRAY1_COLLECTION))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(L_ARRAY1_COLLECTION))==(?);
  List_Includes(Machine(L_ARRAY1_COLLECTION))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(L_ARRAY1_COLLECTION))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(L_ARRAY1_COLLECTION))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(L_ARRAY1_COLLECTION))==(?);
  Context_List_Variables(Machine(L_ARRAY1_COLLECTION))==(?);
  Abstract_List_Variables(Machine(L_ARRAY1_COLLECTION))==(?);
  Local_List_Variables(Machine(L_ARRAY1_COLLECTION))==(arr_col);
  List_Variables(Machine(L_ARRAY1_COLLECTION))==(arr_col);
  External_List_Variables(Machine(L_ARRAY1_COLLECTION))==(arr_col)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(L_ARRAY1_COLLECTION))==(?);
  Abstract_List_VisibleVariables(Machine(L_ARRAY1_COLLECTION))==(?);
  External_List_VisibleVariables(Machine(L_ARRAY1_COLLECTION))==(?);
  Expanded_List_VisibleVariables(Machine(L_ARRAY1_COLLECTION))==(?);
  List_VisibleVariables(Machine(L_ARRAY1_COLLECTION))==(?);
  Internal_List_VisibleVariables(Machine(L_ARRAY1_COLLECTION))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(L_ARRAY1_COLLECTION))==(btrue);
  Gluing_List_Invariant(Machine(L_ARRAY1_COLLECTION))==(btrue);
  Expanded_List_Invariant(Machine(L_ARRAY1_COLLECTION))==(btrue);
  Abstract_List_Invariant(Machine(L_ARRAY1_COLLECTION))==(btrue);
  Context_List_Invariant(Machine(L_ARRAY1_COLLECTION))==(btrue);
  List_Invariant(Machine(L_ARRAY1_COLLECTION))==(arr_col: 1..LAUC_maxobj +-> (0..LAUC_maxidx --> LAUC_minval..LAUC_maxval))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(L_ARRAY1_COLLECTION))==(btrue);
  Abstract_List_Assertions(Machine(L_ARRAY1_COLLECTION))==(btrue);
  Context_List_Assertions(Machine(L_ARRAY1_COLLECTION))==(btrue);
  List_Assertions(Machine(L_ARRAY1_COLLECTION))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(L_ARRAY1_COLLECTION))==(arr_col:={});
  Context_List_Initialisation(Machine(L_ARRAY1_COLLECTION))==(skip);
  List_Initialisation(Machine(L_ARRAY1_COLLECTION))==(arr_col:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(L_ARRAY1_COLLECTION))==(LAUC_maxobj,LAUC_maxidx,LAUC_minval,LAUC_maxval)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(L_ARRAY1_COLLECTION))==(btrue);
  List_Constraints(Machine(L_ARRAY1_COLLECTION))==(LAUC_maxobj: NAT1 & LAUC_maxobj/=MAXINT & LAUC_maxidx: NAT & LAUC_minval: NAT & LAUC_maxval: NAT & LAUC_minval<=LAUC_maxval)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(L_ARRAY1_COLLECTION))==(CRE_ARR_COL,DEL_ARR_COL,VAL_ARR_COL,STR_ARR_COL,COP_ARR_COL,CMP_ARR_COL,SET_ARR_COL,PCOP_ARR_COL,PCMP_ARR_COL);
  List_Operations(Machine(L_ARRAY1_COLLECTION))==(CRE_ARR_COL,DEL_ARR_COL,VAL_ARR_COL,STR_ARR_COL,COP_ARR_COL,CMP_ARR_COL,SET_ARR_COL,PCOP_ARR_COL,PCMP_ARR_COL)
END
&
THEORY ListInputX IS
  List_Input(Machine(L_ARRAY1_COLLECTION),CRE_ARR_COL)==(?);
  List_Input(Machine(L_ARRAY1_COLLECTION),DEL_ARR_COL)==(ii);
  List_Input(Machine(L_ARRAY1_COLLECTION),VAL_ARR_COL)==(ii,jj);
  List_Input(Machine(L_ARRAY1_COLLECTION),STR_ARR_COL)==(ii,jj,vv);
  List_Input(Machine(L_ARRAY1_COLLECTION),COP_ARR_COL)==(dest,src);
  List_Input(Machine(L_ARRAY1_COLLECTION),CMP_ARR_COL)==(range1,range2);
  List_Input(Machine(L_ARRAY1_COLLECTION),SET_ARR_COL)==(rr,ii,jj,vv);
  List_Input(Machine(L_ARRAY1_COLLECTION),PCOP_ARR_COL)==(dest,idx_dst,src,ii,jj);
  List_Input(Machine(L_ARRAY1_COLLECTION),PCMP_ARR_COL)==(rr2,idx2,rr1,ii,jj)
END
&
THEORY ListOutputX IS
  List_Output(Machine(L_ARRAY1_COLLECTION),CRE_ARR_COL)==(ii,bb);
  List_Output(Machine(L_ARRAY1_COLLECTION),DEL_ARR_COL)==(?);
  List_Output(Machine(L_ARRAY1_COLLECTION),VAL_ARR_COL)==(vv);
  List_Output(Machine(L_ARRAY1_COLLECTION),STR_ARR_COL)==(?);
  List_Output(Machine(L_ARRAY1_COLLECTION),COP_ARR_COL)==(?);
  List_Output(Machine(L_ARRAY1_COLLECTION),CMP_ARR_COL)==(bb);
  List_Output(Machine(L_ARRAY1_COLLECTION),SET_ARR_COL)==(?);
  List_Output(Machine(L_ARRAY1_COLLECTION),PCOP_ARR_COL)==(?);
  List_Output(Machine(L_ARRAY1_COLLECTION),PCMP_ARR_COL)==(idx,bb)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(L_ARRAY1_COLLECTION),CRE_ARR_COL)==(ii,bb <-- CRE_ARR_COL);
  List_Header(Machine(L_ARRAY1_COLLECTION),DEL_ARR_COL)==(DEL_ARR_COL(ii));
  List_Header(Machine(L_ARRAY1_COLLECTION),VAL_ARR_COL)==(vv <-- VAL_ARR_COL(ii,jj));
  List_Header(Machine(L_ARRAY1_COLLECTION),STR_ARR_COL)==(STR_ARR_COL(ii,jj,vv));
  List_Header(Machine(L_ARRAY1_COLLECTION),COP_ARR_COL)==(COP_ARR_COL(dest,src));
  List_Header(Machine(L_ARRAY1_COLLECTION),CMP_ARR_COL)==(bb <-- CMP_ARR_COL(range1,range2));
  List_Header(Machine(L_ARRAY1_COLLECTION),SET_ARR_COL)==(SET_ARR_COL(rr,ii,jj,vv));
  List_Header(Machine(L_ARRAY1_COLLECTION),PCOP_ARR_COL)==(PCOP_ARR_COL(dest,idx_dst,src,ii,jj));
  List_Header(Machine(L_ARRAY1_COLLECTION),PCMP_ARR_COL)==(idx,bb <-- PCMP_ARR_COL(rr2,idx2,rr1,ii,jj))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(L_ARRAY1_COLLECTION),CRE_ARR_COL)==(btrue);
  List_Precondition(Machine(L_ARRAY1_COLLECTION),DEL_ARR_COL)==(ii: 1..LAUC_maxobj & ii: dom(arr_col));
  List_Precondition(Machine(L_ARRAY1_COLLECTION),VAL_ARR_COL)==(ii: 1..LAUC_maxobj & ii: dom(arr_col) & jj: 0..LAUC_maxidx);
  List_Precondition(Machine(L_ARRAY1_COLLECTION),STR_ARR_COL)==(ii: 1..LAUC_maxobj & ii: dom(arr_col) & jj: 0..LAUC_maxidx & vv: LAUC_minval..LAUC_maxval);
  List_Precondition(Machine(L_ARRAY1_COLLECTION),COP_ARR_COL)==(dest: 1..LAUC_maxobj & dest: dom(arr_col) & src: 1..LAUC_maxobj & src: dom(arr_col));
  List_Precondition(Machine(L_ARRAY1_COLLECTION),CMP_ARR_COL)==(range1: 1..LAUC_maxobj & range1: dom(arr_col) & range2: 1..LAUC_maxobj & range2: dom(arr_col));
  List_Precondition(Machine(L_ARRAY1_COLLECTION),SET_ARR_COL)==(rr: 1..LAUC_maxobj & rr: dom(arr_col) & ii: 0..LAUC_maxidx & jj: 0..LAUC_maxidx & jj/=MAXINT & vv: LAUC_minval..LAUC_maxval);
  List_Precondition(Machine(L_ARRAY1_COLLECTION),PCOP_ARR_COL)==(dest: 1..LAUC_maxobj & dest: dom(arr_col) & idx_dst: 0..LAUC_maxidx & src: 1..LAUC_maxobj & src: dom(arr_col) & ii: 0..LAUC_maxidx & jj: 0..LAUC_maxidx & jj/=MAXINT & ii<=jj & dest/=src & idx_dst+jj-ii: 0..LAUC_maxidx);
  List_Precondition(Machine(L_ARRAY1_COLLECTION),PCMP_ARR_COL)==(rr2: 1..LAUC_maxobj & rr2: dom(arr_col) & idx2: 0..LAUC_maxidx & rr1: 1..LAUC_maxobj & rr1: dom(arr_col) & ii: 0..LAUC_maxidx & jj: 0..LAUC_maxidx & ii<=jj & idx2+jj-ii: 0..LAUC_maxidx)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(L_ARRAY1_COLLECTION),PCMP_ARR_COL)==(rr2: 1..LAUC_maxobj & rr2: dom(arr_col) & idx2: 0..LAUC_maxidx & rr1: 1..LAUC_maxobj & rr1: dom(arr_col) & ii: 0..LAUC_maxidx & jj: 0..LAUC_maxidx & ii<=jj & idx2+jj-ii: 0..LAUC_maxidx | @(nidx,nbb,sol).(nidx: NAT & nbb: BOOL & sol = {xx | xx: ii..jj & arr_col(rr1)(xx)/=arr_col(rr2)(xx+idx2-ii)} & (sol/={} => nidx = min(sol)) & nbb = bool(sol/={}) ==> idx,bb:=nidx,nbb));
  Expanded_List_Substitution(Machine(L_ARRAY1_COLLECTION),PCOP_ARR_COL)==(dest: 1..LAUC_maxobj & dest: dom(arr_col) & idx_dst: 0..LAUC_maxidx & src: 1..LAUC_maxobj & src: dom(arr_col) & ii: 0..LAUC_maxidx & jj: 0..LAUC_maxidx & jj/=MAXINT & ii<=jj & dest/=src & idx_dst+jj-ii: 0..LAUC_maxidx | arr_col:=arr_col<+{dest|->(arr_col(dest)<+%xx.(xx: idx_dst..idx_dst+jj-ii | arr_col(src)(xx+ii-idx_dst)))});
  Expanded_List_Substitution(Machine(L_ARRAY1_COLLECTION),SET_ARR_COL)==(rr: 1..LAUC_maxobj & rr: dom(arr_col) & ii: 0..LAUC_maxidx & jj: 0..LAUC_maxidx & jj/=MAXINT & vv: LAUC_minval..LAUC_maxval | arr_col:=arr_col<+{rr|->(arr_col(rr)<+(ii..jj)*{vv})});
  Expanded_List_Substitution(Machine(L_ARRAY1_COLLECTION),CMP_ARR_COL)==(range1: 1..LAUC_maxobj & range1: dom(arr_col) & range2: 1..LAUC_maxobj & range2: dom(arr_col) | bb:=bool(arr_col(range1) = arr_col(range2)));
  Expanded_List_Substitution(Machine(L_ARRAY1_COLLECTION),COP_ARR_COL)==(dest: 1..LAUC_maxobj & dest: dom(arr_col) & src: 1..LAUC_maxobj & src: dom(arr_col) | arr_col:=arr_col<+{dest|->arr_col(src)});
  Expanded_List_Substitution(Machine(L_ARRAY1_COLLECTION),STR_ARR_COL)==(ii: 1..LAUC_maxobj & ii: dom(arr_col) & jj: 0..LAUC_maxidx & vv: LAUC_minval..LAUC_maxval | arr_col:=arr_col<+{ii|->(arr_col(ii)<+{jj|->vv})});
  Expanded_List_Substitution(Machine(L_ARRAY1_COLLECTION),VAL_ARR_COL)==(ii: 1..LAUC_maxobj & ii: dom(arr_col) & jj: 0..LAUC_maxidx | vv:=arr_col(ii)(jj));
  Expanded_List_Substitution(Machine(L_ARRAY1_COLLECTION),DEL_ARR_COL)==(ii: 1..LAUC_maxobj & ii: dom(arr_col) | arr_col:={ii}<<|arr_col);
  Expanded_List_Substitution(Machine(L_ARRAY1_COLLECTION),CRE_ARR_COL)==(btrue | @(nrge,nbb,sol,fct,nac).(nrge: 1..LAUC_maxobj & nbb: BOOL & sol <: 1..LAUC_maxobj & sol = (1..LAUC_maxobj)-dom(arr_col) & fct: 0..LAUC_maxidx --> LAUC_minval..LAUC_maxval & nac: 1..LAUC_maxobj +-> (0..LAUC_maxidx --> LAUC_minval..LAUC_maxval) & (sol = {} => nac = arr_col) & (sol/={} => nrge: sol & nac = arr_col\/{nrge|->fct}) & nbb = bool(sol/={}) ==> bb,ii,arr_col:=nbb,nrge,nac));
  List_Substitution(Machine(L_ARRAY1_COLLECTION),CRE_ARR_COL)==(ANY nrge,nbb,sol,fct,nac WHERE nrge: 1..LAUC_maxobj & nbb: BOOL & sol <: 1..LAUC_maxobj & sol = (1..LAUC_maxobj)-dom(arr_col) & fct: 0..LAUC_maxidx --> LAUC_minval..LAUC_maxval & nac: 1..LAUC_maxobj +-> (0..LAUC_maxidx --> LAUC_minval..LAUC_maxval) & (sol = {} => nac = arr_col) & (sol/={} => nrge: sol & nac = arr_col\/{nrge|->fct}) & nbb = bool(sol/={}) THEN bb:=nbb || ii:=nrge || arr_col:=nac END);
  List_Substitution(Machine(L_ARRAY1_COLLECTION),DEL_ARR_COL)==(arr_col:={ii}<<|arr_col);
  List_Substitution(Machine(L_ARRAY1_COLLECTION),VAL_ARR_COL)==(vv:=arr_col(ii)(jj));
  List_Substitution(Machine(L_ARRAY1_COLLECTION),STR_ARR_COL)==(arr_col(ii)(jj):=vv);
  List_Substitution(Machine(L_ARRAY1_COLLECTION),COP_ARR_COL)==(arr_col:=arr_col<+{dest|->arr_col(src)});
  List_Substitution(Machine(L_ARRAY1_COLLECTION),CMP_ARR_COL)==(bb:=bool(arr_col(range1) = arr_col(range2)));
  List_Substitution(Machine(L_ARRAY1_COLLECTION),SET_ARR_COL)==(arr_col(rr):=arr_col(rr)<+(ii..jj)*{vv});
  List_Substitution(Machine(L_ARRAY1_COLLECTION),PCOP_ARR_COL)==(arr_col(dest):=arr_col(dest)<+%xx.(xx: idx_dst..idx_dst+jj-ii | arr_col(src)(xx+ii-idx_dst)));
  List_Substitution(Machine(L_ARRAY1_COLLECTION),PCMP_ARR_COL)==(ANY nidx,nbb,sol WHERE nidx: NAT & nbb: BOOL & sol = {xx | xx: ii..jj & arr_col(rr1)(xx)/=arr_col(rr2)(xx+idx2-ii)} & (sol/={} => nidx = min(sol)) & nbb = bool(sol/={}) THEN idx:=nidx || bb:=nbb END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(L_ARRAY1_COLLECTION))==(?);
  Inherited_List_Constants(Machine(L_ARRAY1_COLLECTION))==(?);
  List_Constants(Machine(L_ARRAY1_COLLECTION))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(L_ARRAY1_COLLECTION))==(?);
  Context_List_Defered(Machine(L_ARRAY1_COLLECTION))==(?);
  Context_List_Sets(Machine(L_ARRAY1_COLLECTION))==(?);
  List_Valuable_Sets(Machine(L_ARRAY1_COLLECTION))==(?);
  Inherited_List_Enumerated(Machine(L_ARRAY1_COLLECTION))==(?);
  Inherited_List_Defered(Machine(L_ARRAY1_COLLECTION))==(?);
  Inherited_List_Sets(Machine(L_ARRAY1_COLLECTION))==(?);
  List_Enumerated(Machine(L_ARRAY1_COLLECTION))==(?);
  List_Defered(Machine(L_ARRAY1_COLLECTION))==(?);
  List_Sets(Machine(L_ARRAY1_COLLECTION))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(L_ARRAY1_COLLECTION))==(?);
  Expanded_List_HiddenConstants(Machine(L_ARRAY1_COLLECTION))==(?);
  List_HiddenConstants(Machine(L_ARRAY1_COLLECTION))==(?);
  External_List_HiddenConstants(Machine(L_ARRAY1_COLLECTION))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(L_ARRAY1_COLLECTION))==(btrue);
  Context_List_Properties(Machine(L_ARRAY1_COLLECTION))==(btrue);
  Inherited_List_Properties(Machine(L_ARRAY1_COLLECTION))==(btrue);
  List_Properties(Machine(L_ARRAY1_COLLECTION))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(L_ARRAY1_COLLECTION),CRE_ARR_COL)==((Var(nrge) == btype(INTEGER,?,?)),(Var(nbb) == btype(BOOL,?,?)),(Var(sol) == SetOf(btype(INTEGER,?,?))),(Var(fct) == SetOf(btype(INTEGER,0,LAUC_maxidx)*btype(INTEGER,LAUC_minval,LAUC_maxval))),(Var(nac) == SetOf(btype(INTEGER,?,?)*SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)))));
  List_ANY_Var(Machine(L_ARRAY1_COLLECTION),DEL_ARR_COL)==(?);
  List_ANY_Var(Machine(L_ARRAY1_COLLECTION),VAL_ARR_COL)==(?);
  List_ANY_Var(Machine(L_ARRAY1_COLLECTION),STR_ARR_COL)==(?);
  List_ANY_Var(Machine(L_ARRAY1_COLLECTION),COP_ARR_COL)==(?);
  List_ANY_Var(Machine(L_ARRAY1_COLLECTION),CMP_ARR_COL)==(?);
  List_ANY_Var(Machine(L_ARRAY1_COLLECTION),SET_ARR_COL)==(?);
  List_ANY_Var(Machine(L_ARRAY1_COLLECTION),PCOP_ARR_COL)==(?);
  List_ANY_Var(Machine(L_ARRAY1_COLLECTION),PCMP_ARR_COL)==((Var(nidx) == btype(INTEGER,?,?)),(Var(nbb) == btype(BOOL,?,?)),(Var(sol) == SetOf(btype(INTEGER,?,?))));
  List_ANY_Var(Machine(L_ARRAY1_COLLECTION),?)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(L_ARRAY1_COLLECTION)) == (? | ? | arr_col | ? | CRE_ARR_COL,DEL_ARR_COL,VAL_ARR_COL,STR_ARR_COL,COP_ARR_COL,CMP_ARR_COL,SET_ARR_COL,PCOP_ARR_COL,PCMP_ARR_COL | ? | ? | LAUC_maxobj,LAUC_maxidx,LAUC_minval,LAUC_maxval | L_ARRAY1_COLLECTION);
  List_Of_HiddenCst_Ids(Machine(L_ARRAY1_COLLECTION)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(L_ARRAY1_COLLECTION)) == (?);
  List_Of_VisibleVar_Ids(Machine(L_ARRAY1_COLLECTION)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(L_ARRAY1_COLLECTION)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Machine(L_ARRAY1_COLLECTION)) == (Type(LAUC_maxval) == Prm(btype(INTEGER,?,?));Type(LAUC_minval) == Prm(btype(INTEGER,?,?));Type(LAUC_maxidx) == Prm(btype(INTEGER,?,?));Type(LAUC_maxobj) == Prm(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(L_ARRAY1_COLLECTION)) == (Type(arr_col) == Mvl(SetOf(btype(INTEGER,?,?)*SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(L_ARRAY1_COLLECTION)) == (Type(PCMP_ARR_COL) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(PCOP_ARR_COL) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SET_ARR_COL) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(CMP_ARR_COL) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(COP_ARR_COL) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(STR_ARR_COL) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(VAL_ARR_COL) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(DEL_ARR_COL) == Cst(No_type,btype(INTEGER,?,?));Type(CRE_ARR_COL) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),No_type));
  Observers(Machine(L_ARRAY1_COLLECTION)) == (Type(PCMP_ARR_COL) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(CMP_ARR_COL) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(VAL_ARR_COL) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)))
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
