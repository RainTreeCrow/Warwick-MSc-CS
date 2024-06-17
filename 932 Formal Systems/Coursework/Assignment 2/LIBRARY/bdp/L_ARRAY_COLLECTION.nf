Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(L_ARRAY_COLLECTION))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(L_ARRAY_COLLECTION))==(Machine(L_ARRAY_COLLECTION));
  Level(Machine(L_ARRAY_COLLECTION))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(L_ARRAY_COLLECTION)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(L_ARRAY_COLLECTION))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(L_ARRAY_COLLECTION))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(L_ARRAY_COLLECTION))==(?);
  List_Includes(Machine(L_ARRAY_COLLECTION))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(L_ARRAY_COLLECTION))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(L_ARRAY_COLLECTION))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(L_ARRAY_COLLECTION))==(?);
  Context_List_Variables(Machine(L_ARRAY_COLLECTION))==(?);
  Abstract_List_Variables(Machine(L_ARRAY_COLLECTION))==(?);
  Local_List_Variables(Machine(L_ARRAY_COLLECTION))==(arr_col);
  List_Variables(Machine(L_ARRAY_COLLECTION))==(arr_col);
  External_List_Variables(Machine(L_ARRAY_COLLECTION))==(arr_col)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(L_ARRAY_COLLECTION))==(?);
  Abstract_List_VisibleVariables(Machine(L_ARRAY_COLLECTION))==(?);
  External_List_VisibleVariables(Machine(L_ARRAY_COLLECTION))==(?);
  Expanded_List_VisibleVariables(Machine(L_ARRAY_COLLECTION))==(?);
  List_VisibleVariables(Machine(L_ARRAY_COLLECTION))==(?);
  Internal_List_VisibleVariables(Machine(L_ARRAY_COLLECTION))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(L_ARRAY_COLLECTION))==(btrue);
  Gluing_List_Invariant(Machine(L_ARRAY_COLLECTION))==(btrue);
  Expanded_List_Invariant(Machine(L_ARRAY_COLLECTION))==(btrue);
  Abstract_List_Invariant(Machine(L_ARRAY_COLLECTION))==(btrue);
  Context_List_Invariant(Machine(L_ARRAY_COLLECTION))==(btrue);
  List_Invariant(Machine(L_ARRAY_COLLECTION))==(arr_col: 1..LACOLL_maxobj +-> (LACOLL_INDEX --> LACOLL_VALUE))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(L_ARRAY_COLLECTION))==(btrue);
  Abstract_List_Assertions(Machine(L_ARRAY_COLLECTION))==(btrue);
  Context_List_Assertions(Machine(L_ARRAY_COLLECTION))==(btrue);
  List_Assertions(Machine(L_ARRAY_COLLECTION))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(L_ARRAY_COLLECTION))==(arr_col:={});
  Context_List_Initialisation(Machine(L_ARRAY_COLLECTION))==(skip);
  List_Initialisation(Machine(L_ARRAY_COLLECTION))==(arr_col:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(L_ARRAY_COLLECTION))==(LACOLL_maxobj,LACOLL_INDEX,LACOLL_VALUE)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(L_ARRAY_COLLECTION))==(btrue);
  List_Constraints(Machine(L_ARRAY_COLLECTION))==(LACOLL_maxobj: 1..MAXINT-1 & LACOLL_INDEX: FIN(INTEGER) & not(LACOLL_INDEX = {}) & LACOLL_VALUE: FIN(INTEGER) & not(LACOLL_VALUE = {}))
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(L_ARRAY_COLLECTION))==(CRE_ARR_COL,DEL_ARR_COL,VAL_ARR_COL,STR_ARR_COL,COP_ARR_COL,CMP_ARR_COL);
  List_Operations(Machine(L_ARRAY_COLLECTION))==(CRE_ARR_COL,DEL_ARR_COL,VAL_ARR_COL,STR_ARR_COL,COP_ARR_COL,CMP_ARR_COL)
END
&
THEORY ListInputX IS
  List_Input(Machine(L_ARRAY_COLLECTION),CRE_ARR_COL)==(?);
  List_Input(Machine(L_ARRAY_COLLECTION),DEL_ARR_COL)==(ii);
  List_Input(Machine(L_ARRAY_COLLECTION),VAL_ARR_COL)==(ii,jj);
  List_Input(Machine(L_ARRAY_COLLECTION),STR_ARR_COL)==(ii,jj,vv);
  List_Input(Machine(L_ARRAY_COLLECTION),COP_ARR_COL)==(dest,src);
  List_Input(Machine(L_ARRAY_COLLECTION),CMP_ARR_COL)==(range1,range2)
END
&
THEORY ListOutputX IS
  List_Output(Machine(L_ARRAY_COLLECTION),CRE_ARR_COL)==(ii,bb);
  List_Output(Machine(L_ARRAY_COLLECTION),DEL_ARR_COL)==(?);
  List_Output(Machine(L_ARRAY_COLLECTION),VAL_ARR_COL)==(vv);
  List_Output(Machine(L_ARRAY_COLLECTION),STR_ARR_COL)==(?);
  List_Output(Machine(L_ARRAY_COLLECTION),COP_ARR_COL)==(?);
  List_Output(Machine(L_ARRAY_COLLECTION),CMP_ARR_COL)==(bb)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(L_ARRAY_COLLECTION),CRE_ARR_COL)==(ii,bb <-- CRE_ARR_COL);
  List_Header(Machine(L_ARRAY_COLLECTION),DEL_ARR_COL)==(DEL_ARR_COL(ii));
  List_Header(Machine(L_ARRAY_COLLECTION),VAL_ARR_COL)==(vv <-- VAL_ARR_COL(ii,jj));
  List_Header(Machine(L_ARRAY_COLLECTION),STR_ARR_COL)==(STR_ARR_COL(ii,jj,vv));
  List_Header(Machine(L_ARRAY_COLLECTION),COP_ARR_COL)==(COP_ARR_COL(dest,src));
  List_Header(Machine(L_ARRAY_COLLECTION),CMP_ARR_COL)==(bb <-- CMP_ARR_COL(range1,range2))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(L_ARRAY_COLLECTION),CRE_ARR_COL)==(btrue);
  List_Precondition(Machine(L_ARRAY_COLLECTION),DEL_ARR_COL)==(ii: 1..LACOLL_maxobj & ii: dom(arr_col));
  List_Precondition(Machine(L_ARRAY_COLLECTION),VAL_ARR_COL)==(ii: 1..LACOLL_maxobj & ii: dom(arr_col) & jj: LACOLL_INDEX);
  List_Precondition(Machine(L_ARRAY_COLLECTION),STR_ARR_COL)==(ii: 1..LACOLL_maxobj & ii: dom(arr_col) & jj: LACOLL_INDEX & vv: LACOLL_VALUE);
  List_Precondition(Machine(L_ARRAY_COLLECTION),COP_ARR_COL)==(dest: 1..LACOLL_maxobj & dest: dom(arr_col) & src: 1..LACOLL_maxobj & src: dom(arr_col));
  List_Precondition(Machine(L_ARRAY_COLLECTION),CMP_ARR_COL)==(range1: 1..LACOLL_maxobj & range1: dom(arr_col) & range2: 1..LACOLL_maxobj & range2: dom(arr_col))
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(L_ARRAY_COLLECTION),CMP_ARR_COL)==(range1: 1..LACOLL_maxobj & range1: dom(arr_col) & range2: 1..LACOLL_maxobj & range2: dom(arr_col) | bb:=bool(arr_col(range1) = arr_col(range2)));
  Expanded_List_Substitution(Machine(L_ARRAY_COLLECTION),COP_ARR_COL)==(dest: 1..LACOLL_maxobj & dest: dom(arr_col) & src: 1..LACOLL_maxobj & src: dom(arr_col) | arr_col:=arr_col<+{dest|->arr_col(src)});
  Expanded_List_Substitution(Machine(L_ARRAY_COLLECTION),STR_ARR_COL)==(ii: 1..LACOLL_maxobj & ii: dom(arr_col) & jj: LACOLL_INDEX & vv: LACOLL_VALUE | arr_col:=arr_col<+{ii|->(arr_col(ii)<+{jj|->vv})});
  Expanded_List_Substitution(Machine(L_ARRAY_COLLECTION),VAL_ARR_COL)==(ii: 1..LACOLL_maxobj & ii: dom(arr_col) & jj: LACOLL_INDEX | vv:=arr_col(ii)(jj));
  Expanded_List_Substitution(Machine(L_ARRAY_COLLECTION),DEL_ARR_COL)==(ii: 1..LACOLL_maxobj & ii: dom(arr_col) | arr_col:={ii}<<|arr_col);
  Expanded_List_Substitution(Machine(L_ARRAY_COLLECTION),CRE_ARR_COL)==(btrue | @(nrge,nbb,sol,fct,nac).(nrge: 1..LACOLL_maxobj & nbb: BOOL & sol <: 1..LACOLL_maxobj & sol = (1..LACOLL_maxobj)-dom(arr_col) & fct: LACOLL_INDEX --> LACOLL_VALUE & nac: 1..LACOLL_maxobj +-> (LACOLL_INDEX --> LACOLL_VALUE) & (sol = {} => nac = arr_col) & (sol/={} => nrge: sol & nac = arr_col\/{nrge|->fct}) & nbb = bool(sol/={}) ==> bb,ii,arr_col:=nbb,nrge,nac));
  List_Substitution(Machine(L_ARRAY_COLLECTION),CRE_ARR_COL)==(ANY nrge,nbb,sol,fct,nac WHERE nrge: 1..LACOLL_maxobj & nbb: BOOL & sol <: 1..LACOLL_maxobj & sol = (1..LACOLL_maxobj)-dom(arr_col) & fct: LACOLL_INDEX --> LACOLL_VALUE & nac: 1..LACOLL_maxobj +-> (LACOLL_INDEX --> LACOLL_VALUE) & (sol = {} => nac = arr_col) & (sol/={} => nrge: sol & nac = arr_col\/{nrge|->fct}) & nbb = bool(sol/={}) THEN bb:=nbb || ii:=nrge || arr_col:=nac END);
  List_Substitution(Machine(L_ARRAY_COLLECTION),DEL_ARR_COL)==(arr_col:={ii}<<|arr_col);
  List_Substitution(Machine(L_ARRAY_COLLECTION),VAL_ARR_COL)==(vv:=arr_col(ii)(jj));
  List_Substitution(Machine(L_ARRAY_COLLECTION),STR_ARR_COL)==(arr_col(ii)(jj):=vv);
  List_Substitution(Machine(L_ARRAY_COLLECTION),COP_ARR_COL)==(arr_col:=arr_col<+{dest|->arr_col(src)});
  List_Substitution(Machine(L_ARRAY_COLLECTION),CMP_ARR_COL)==(bb:=bool(arr_col(range1) = arr_col(range2)))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(L_ARRAY_COLLECTION))==(?);
  Inherited_List_Constants(Machine(L_ARRAY_COLLECTION))==(?);
  List_Constants(Machine(L_ARRAY_COLLECTION))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(L_ARRAY_COLLECTION))==(?);
  Context_List_Defered(Machine(L_ARRAY_COLLECTION))==(?);
  Context_List_Sets(Machine(L_ARRAY_COLLECTION))==(?);
  List_Valuable_Sets(Machine(L_ARRAY_COLLECTION))==(?);
  Inherited_List_Enumerated(Machine(L_ARRAY_COLLECTION))==(?);
  Inherited_List_Defered(Machine(L_ARRAY_COLLECTION))==(?);
  Inherited_List_Sets(Machine(L_ARRAY_COLLECTION))==(?);
  List_Enumerated(Machine(L_ARRAY_COLLECTION))==(?);
  List_Defered(Machine(L_ARRAY_COLLECTION))==(?);
  List_Sets(Machine(L_ARRAY_COLLECTION))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(L_ARRAY_COLLECTION))==(?);
  Expanded_List_HiddenConstants(Machine(L_ARRAY_COLLECTION))==(?);
  List_HiddenConstants(Machine(L_ARRAY_COLLECTION))==(?);
  External_List_HiddenConstants(Machine(L_ARRAY_COLLECTION))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(L_ARRAY_COLLECTION))==(btrue);
  Context_List_Properties(Machine(L_ARRAY_COLLECTION))==(btrue);
  Inherited_List_Properties(Machine(L_ARRAY_COLLECTION))==(btrue);
  List_Properties(Machine(L_ARRAY_COLLECTION))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(L_ARRAY_COLLECTION),CRE_ARR_COL)==((Var(nrge) == btype(INTEGER,?,?)),(Var(nbb) == btype(BOOL,?,?)),(Var(sol) == SetOf(btype(INTEGER,?,?))),(Var(fct) == SetOf(atype(LACOLL_INDEX,?,?)*atype(LACOLL_VALUE,?,?))),(Var(nac) == SetOf(btype(INTEGER,?,?)*SetOf(atype(LACOLL_INDEX,?,?)*atype(LACOLL_VALUE,?,?)))));
  List_ANY_Var(Machine(L_ARRAY_COLLECTION),DEL_ARR_COL)==(?);
  List_ANY_Var(Machine(L_ARRAY_COLLECTION),VAL_ARR_COL)==(?);
  List_ANY_Var(Machine(L_ARRAY_COLLECTION),STR_ARR_COL)==(?);
  List_ANY_Var(Machine(L_ARRAY_COLLECTION),COP_ARR_COL)==(?);
  List_ANY_Var(Machine(L_ARRAY_COLLECTION),CMP_ARR_COL)==(?);
  List_ANY_Var(Machine(L_ARRAY_COLLECTION),?)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(L_ARRAY_COLLECTION)) == (? | ? | arr_col | ? | CRE_ARR_COL,DEL_ARR_COL,VAL_ARR_COL,STR_ARR_COL,COP_ARR_COL,CMP_ARR_COL | ? | ? | LACOLL_maxobj,LACOLL_INDEX,LACOLL_VALUE | L_ARRAY_COLLECTION);
  List_Of_HiddenCst_Ids(Machine(L_ARRAY_COLLECTION)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(L_ARRAY_COLLECTION)) == (?);
  List_Of_VisibleVar_Ids(Machine(L_ARRAY_COLLECTION)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(L_ARRAY_COLLECTION)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Machine(L_ARRAY_COLLECTION)) == (Type(LACOLL_VALUE) == Prm(SetOf(atype(LACOLL_VALUE,?,?)));Type(LACOLL_INDEX) == Prm(SetOf(atype(LACOLL_INDEX,?,?)));Type(LACOLL_maxobj) == Prm(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(L_ARRAY_COLLECTION)) == (Type(arr_col) == Mvl(SetOf(btype(INTEGER,?,?)*SetOf(atype(LACOLL_INDEX,?,?)*atype(LACOLL_VALUE,?,?)))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(L_ARRAY_COLLECTION)) == (Type(CMP_ARR_COL) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(COP_ARR_COL) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(STR_ARR_COL) == Cst(No_type,btype(INTEGER,?,?)*atype(LACOLL_INDEX,?,?)*atype(LACOLL_VALUE,?,?));Type(VAL_ARR_COL) == Cst(atype(LACOLL_VALUE,?,?),btype(INTEGER,?,?)*atype(LACOLL_INDEX,?,?));Type(DEL_ARR_COL) == Cst(No_type,btype(INTEGER,?,?));Type(CRE_ARR_COL) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),No_type));
  Observers(Machine(L_ARRAY_COLLECTION)) == (Type(CMP_ARR_COL) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(VAL_ARR_COL) == Cst(atype(LACOLL_VALUE,?,?),btype(INTEGER,?,?)*atype(LACOLL_INDEX,?,?)))
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
