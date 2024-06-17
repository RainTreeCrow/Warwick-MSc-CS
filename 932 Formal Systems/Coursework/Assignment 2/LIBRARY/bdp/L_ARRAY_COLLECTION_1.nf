Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(L_ARRAY_COLLECTION_1))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(L_ARRAY_COLLECTION_1))==(Machine(L_ARRAY_COLLECTION));
  Level(Implementation(L_ARRAY_COLLECTION_1))==(1);
  Upper_Level(Implementation(L_ARRAY_COLLECTION_1))==(Machine(L_ARRAY_COLLECTION))
END
&
THEORY LoadedStructureX IS
  Implementation(L_ARRAY_COLLECTION_1)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(L_ARRAY_COLLECTION_1))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(L_ARRAY_COLLECTION_1))==(mat_vrb.BASIC_ARRAY_RGE,free_lst.L_SEQUENCE);
  Inherited_List_Includes(Implementation(L_ARRAY_COLLECTION_1))==(free_lst.L_SEQUENCE,mat_vrb.BASIC_ARRAY_RGE)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(L_ARRAY_COLLECTION_1))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(L_ARRAY_COLLECTION_1))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(L_ARRAY_COLLECTION_1))==(?);
  Context_List_Variables(Implementation(L_ARRAY_COLLECTION_1))==(?);
  Abstract_List_Variables(Implementation(L_ARRAY_COLLECTION_1))==(arr_col);
  Local_List_Variables(Implementation(L_ARRAY_COLLECTION_1))==(?);
  List_Variables(Implementation(L_ARRAY_COLLECTION_1))==(mat_vrbarr_rge,free_lstseq_vrb);
  External_List_Variables(Implementation(L_ARRAY_COLLECTION_1))==(mat_vrb.arr_rge,free_lst.seq_vrb)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(L_ARRAY_COLLECTION_1))==(?);
  Abstract_List_VisibleVariables(Implementation(L_ARRAY_COLLECTION_1))==(?);
  External_List_VisibleVariables(Implementation(L_ARRAY_COLLECTION_1))==(?);
  Expanded_List_VisibleVariables(Implementation(L_ARRAY_COLLECTION_1))==(?);
  List_VisibleVariables(Implementation(L_ARRAY_COLLECTION_1))==(cptr);
  Internal_List_VisibleVariables(Implementation(L_ARRAY_COLLECTION_1))==(cptr)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(L_ARRAY_COLLECTION_1))==(btrue);
  Abstract_List_Invariant(Implementation(L_ARRAY_COLLECTION_1))==(arr_col: 1..LACOLL_maxobj +-> (LACOLL_INDEX --> LACOLL_VALUE));
  Expanded_List_Invariant(Implementation(L_ARRAY_COLLECTION_1))==(mat_vrbarr_rge: 1..LACOLL_maxobj --> (LACOLL_INDEX --> LACOLL_VALUE) & free_lstseq_vrb: seq(1..LACOLL_maxobj) & size(free_lstseq_vrb)<=LACOLL_maxobj);
  Context_List_Invariant(Implementation(L_ARRAY_COLLECTION_1))==(btrue);
  List_Invariant(Implementation(L_ARRAY_COLLECTION_1))==(cptr: NAT1 & cptr<=LACOLL_maxobj & arr_col = ran(free_lstseq_vrb)<<|(cptr..LACOLL_maxobj<<|mat_vrbarr_rge) & ran(free_lstseq_vrb)/\cptr..LACOLL_maxobj = {} & free_lstseq_vrb: iseq(1..LACOLL_maxobj))
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(L_ARRAY_COLLECTION_1))==(btrue);
  Expanded_List_Assertions(Implementation(L_ARRAY_COLLECTION_1))==(btrue);
  Context_List_Assertions(Implementation(L_ARRAY_COLLECTION_1))==(btrue);
  List_Assertions(Implementation(L_ARRAY_COLLECTION_1))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(L_ARRAY_COLLECTION_1))==(@(arr_rge$0).(arr_rge$0: 1..LACOLL_maxobj --> (LACOLL_INDEX --> LACOLL_VALUE) ==> mat_vrbarr_rge:=arr_rge$0);free_lstseq_vrb:=<>;(1: INT | cptr:=1));
  Context_List_Initialisation(Implementation(L_ARRAY_COLLECTION_1))==(skip);
  List_Initialisation(Implementation(L_ARRAY_COLLECTION_1))==(cptr:=1)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(L_ARRAY_COLLECTION_1))==(LACOLL_maxobj,LACOLL_INDEX,LACOLL_VALUE)
END
&
THEORY ListInstanciatedParametersX IS
  Precond_Instanciated_Parameters(Implementation(L_ARRAY_COLLECTION_1),Machine(free_lst.L_SEQUENCE))==(btrue);
  Precond_Instanciated_Parameters(Implementation(L_ARRAY_COLLECTION_1),Machine(mat_vrb.BASIC_ARRAY_RGE))==(btrue);
  List_Instanciated_Parameters(Implementation(L_ARRAY_COLLECTION_1),Machine(mat_vrb.BASIC_ARRAY_RGE))==(LACOLL_INDEX,LACOLL_VALUE,1..LACOLL_maxobj);
  List_Instanciated_Parameters(Implementation(L_ARRAY_COLLECTION_1),Machine(free_lst.L_SEQUENCE))==(LACOLL_maxobj,1..LACOLL_maxobj)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(L_ARRAY_COLLECTION_1),Machine(free_lst.L_SEQUENCE))==(LACOLL_maxobj: 1..MAXINT-1 & 1..LACOLL_maxobj: FIN(INTEGER) & not(1..LACOLL_maxobj = {}));
  List_Constraints(Implementation(L_ARRAY_COLLECTION_1))==(LACOLL_maxobj: 1..MAXINT-1 & LACOLL_INDEX: FIN(INTEGER) & not(LACOLL_INDEX = {}) & LACOLL_VALUE: FIN(INTEGER) & not(LACOLL_VALUE = {}));
  List_Context_Constraints(Implementation(L_ARRAY_COLLECTION_1))==(btrue);
  List_Constraints(Implementation(L_ARRAY_COLLECTION_1),Machine(mat_vrb.BASIC_ARRAY_RGE))==(LACOLL_INDEX: FIN(INTEGER) & not(LACOLL_INDEX = {}) & LACOLL_VALUE: FIN(INTEGER) & not(LACOLL_VALUE = {}) & 1..LACOLL_maxobj: FIN(INTEGER) & not(1..LACOLL_maxobj = {}))
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(L_ARRAY_COLLECTION_1))==(CRE_ARR_COL,DEL_ARR_COL,VAL_ARR_COL,STR_ARR_COL,COP_ARR_COL,CMP_ARR_COL);
  List_Operations(Implementation(L_ARRAY_COLLECTION_1))==(CRE_ARR_COL,DEL_ARR_COL,VAL_ARR_COL,STR_ARR_COL,COP_ARR_COL,CMP_ARR_COL)
END
&
THEORY ListInputX IS
  List_Input(Implementation(L_ARRAY_COLLECTION_1),CRE_ARR_COL)==(?);
  List_Input(Implementation(L_ARRAY_COLLECTION_1),DEL_ARR_COL)==(ii);
  List_Input(Implementation(L_ARRAY_COLLECTION_1),VAL_ARR_COL)==(ii,jj);
  List_Input(Implementation(L_ARRAY_COLLECTION_1),STR_ARR_COL)==(ii,jj,vv);
  List_Input(Implementation(L_ARRAY_COLLECTION_1),COP_ARR_COL)==(dest,src);
  List_Input(Implementation(L_ARRAY_COLLECTION_1),CMP_ARR_COL)==(range1,range2)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(L_ARRAY_COLLECTION_1),CRE_ARR_COL)==(ii,bb);
  List_Output(Implementation(L_ARRAY_COLLECTION_1),DEL_ARR_COL)==(?);
  List_Output(Implementation(L_ARRAY_COLLECTION_1),VAL_ARR_COL)==(vv);
  List_Output(Implementation(L_ARRAY_COLLECTION_1),STR_ARR_COL)==(?);
  List_Output(Implementation(L_ARRAY_COLLECTION_1),COP_ARR_COL)==(?);
  List_Output(Implementation(L_ARRAY_COLLECTION_1),CMP_ARR_COL)==(bb)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(L_ARRAY_COLLECTION_1),CRE_ARR_COL)==(ii,bb <-- CRE_ARR_COL);
  List_Header(Implementation(L_ARRAY_COLLECTION_1),DEL_ARR_COL)==(DEL_ARR_COL(ii));
  List_Header(Implementation(L_ARRAY_COLLECTION_1),VAL_ARR_COL)==(vv <-- VAL_ARR_COL(ii,jj));
  List_Header(Implementation(L_ARRAY_COLLECTION_1),STR_ARR_COL)==(STR_ARR_COL(ii,jj,vv));
  List_Header(Implementation(L_ARRAY_COLLECTION_1),COP_ARR_COL)==(COP_ARR_COL(dest,src));
  List_Header(Implementation(L_ARRAY_COLLECTION_1),CMP_ARR_COL)==(bb <-- CMP_ARR_COL(range1,range2))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(L_ARRAY_COLLECTION_1),CRE_ARR_COL)==(btrue);
  List_Precondition(Implementation(L_ARRAY_COLLECTION_1),CRE_ARR_COL)==(btrue);
  Own_Precondition(Implementation(L_ARRAY_COLLECTION_1),DEL_ARR_COL)==(btrue);
  List_Precondition(Implementation(L_ARRAY_COLLECTION_1),DEL_ARR_COL)==(ii: 1..LACOLL_maxobj & ii: dom(arr_col));
  Own_Precondition(Implementation(L_ARRAY_COLLECTION_1),VAL_ARR_COL)==(btrue);
  List_Precondition(Implementation(L_ARRAY_COLLECTION_1),VAL_ARR_COL)==(ii: 1..LACOLL_maxobj & ii: dom(arr_col) & jj: LACOLL_INDEX);
  Own_Precondition(Implementation(L_ARRAY_COLLECTION_1),STR_ARR_COL)==(btrue);
  List_Precondition(Implementation(L_ARRAY_COLLECTION_1),STR_ARR_COL)==(ii: 1..LACOLL_maxobj & ii: dom(arr_col) & jj: LACOLL_INDEX & vv: LACOLL_VALUE);
  Own_Precondition(Implementation(L_ARRAY_COLLECTION_1),COP_ARR_COL)==(btrue);
  List_Precondition(Implementation(L_ARRAY_COLLECTION_1),COP_ARR_COL)==(dest: 1..LACOLL_maxobj & dest: dom(arr_col) & src: 1..LACOLL_maxobj & src: dom(arr_col));
  Own_Precondition(Implementation(L_ARRAY_COLLECTION_1),CMP_ARR_COL)==(btrue);
  List_Precondition(Implementation(L_ARRAY_COLLECTION_1),CMP_ARR_COL)==(range1: 1..LACOLL_maxobj & range1: dom(arr_col) & range2: 1..LACOLL_maxobj & range2: dom(arr_col))
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(L_ARRAY_COLLECTION_1),CMP_ARR_COL)==(range1: 1..LACOLL_maxobj & range1: dom(arr_col) & range2: 1..LACOLL_maxobj & range2: dom(arr_col) & range1: 1..LACOLL_maxobj & range2: 1..LACOLL_maxobj | bb:=bool(mat_vrbarr_rge(range1) = mat_vrbarr_rge(range2)));
  Expanded_List_Substitution(Implementation(L_ARRAY_COLLECTION_1),COP_ARR_COL)==(dest: 1..LACOLL_maxobj & dest: dom(arr_col) & src: 1..LACOLL_maxobj & src: dom(arr_col) & dest: 1..LACOLL_maxobj & src: 1..LACOLL_maxobj | mat_vrbarr_rge:=mat_vrbarr_rge<+{dest|->mat_vrbarr_rge(src)});
  Expanded_List_Substitution(Implementation(L_ARRAY_COLLECTION_1),STR_ARR_COL)==(ii: 1..LACOLL_maxobj & ii: dom(arr_col) & jj: LACOLL_INDEX & vv: LACOLL_VALUE & ii: 1..LACOLL_maxobj & jj: LACOLL_INDEX & vv: LACOLL_VALUE | mat_vrbarr_rge:=mat_vrbarr_rge<+{ii|->(mat_vrbarr_rge(ii)<+{jj|->vv})});
  Expanded_List_Substitution(Implementation(L_ARRAY_COLLECTION_1),VAL_ARR_COL)==(ii: 1..LACOLL_maxobj & ii: dom(arr_col) & jj: LACOLL_INDEX & ii: 1..LACOLL_maxobj & jj: LACOLL_INDEX | vv:=mat_vrbarr_rge(ii)(jj));
  Expanded_List_Substitution(Implementation(L_ARRAY_COLLECTION_1),DEL_ARR_COL)==(ii: 1..LACOLL_maxobj & ii: dom(arr_col) & ii: 1..LACOLL_maxobj & size(free_lstseq_vrb)/=LACOLL_maxobj | free_lstseq_vrb:=free_lstseq_vrb<-ii);
  Expanded_List_Substitution(Implementation(L_ARRAY_COLLECTION_1),CRE_ARR_COL)==(btrue | @(len_seq,mo).((btrue | len_seq:=size(free_lstseq_vrb));(LACOLL_maxobj+1: INT & LACOLL_maxobj: INT & 1: INT | mo:=LACOLL_maxobj+1);(len_seq/=0 ==> (bb:=TRUE;(size(free_lstseq_vrb)/=0 | ii:=first(free_lstseq_vrb));(size(free_lstseq_vrb)/=0 | free_lstseq_vrb:=tail(free_lstseq_vrb))) [] not(len_seq/=0) ==> (cptr/=mo ==> (bb:=TRUE;(cptr: INT | ii:=cptr);(cptr+1: INT & cptr: INT & 1: INT | cptr:=cptr+1)) [] not(cptr/=mo) ==> (bb:=FALSE;(1: INT | ii:=1))))));
  List_Substitution(Implementation(L_ARRAY_COLLECTION_1),CRE_ARR_COL)==(VAR len_seq,mo IN len_seq <-- free_lst.LEN_SEQ;mo:=LACOLL_maxobj+1;IF len_seq/=0 THEN bb:=TRUE;ii <-- free_lst.FIRST_SEQ;free_lst.TAIL_SEQ ELSE IF cptr/=mo THEN bb:=TRUE;ii:=cptr;cptr:=cptr+1 ELSE bb:=FALSE;ii:=1 END END END);
  List_Substitution(Implementation(L_ARRAY_COLLECTION_1),DEL_ARR_COL)==((free_lst.PUSH_SEQ)(ii));
  List_Substitution(Implementation(L_ARRAY_COLLECTION_1),VAL_ARR_COL)==(vv <-- (mat_vrb.VAL_ARR_RGE)(ii,jj));
  List_Substitution(Implementation(L_ARRAY_COLLECTION_1),STR_ARR_COL)==((mat_vrb.STR_ARR_RGE)(ii,jj,vv));
  List_Substitution(Implementation(L_ARRAY_COLLECTION_1),COP_ARR_COL)==((mat_vrb.COP_ARR_RGE)(dest,src));
  List_Substitution(Implementation(L_ARRAY_COLLECTION_1),CMP_ARR_COL)==(bb <-- (mat_vrb.CMP_ARR_RGE)(range1,range2))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(L_ARRAY_COLLECTION_1))==(?);
  Inherited_List_Constants(Implementation(L_ARRAY_COLLECTION_1))==(?);
  List_Constants(Implementation(L_ARRAY_COLLECTION_1))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(L_ARRAY_COLLECTION_1))==(?);
  Context_List_Defered(Implementation(L_ARRAY_COLLECTION_1))==(?);
  Context_List_Sets(Implementation(L_ARRAY_COLLECTION_1))==(?);
  List_Own_Enumerated(Implementation(L_ARRAY_COLLECTION_1))==(?);
  List_Valuable_Sets(Implementation(L_ARRAY_COLLECTION_1))==(?);
  Inherited_List_Enumerated(Implementation(L_ARRAY_COLLECTION_1))==(?);
  Inherited_List_Defered(Implementation(L_ARRAY_COLLECTION_1))==(?);
  Inherited_List_Sets(Implementation(L_ARRAY_COLLECTION_1))==(?);
  List_Enumerated(Implementation(L_ARRAY_COLLECTION_1))==(?);
  List_Defered(Implementation(L_ARRAY_COLLECTION_1))==(?);
  List_Sets(Implementation(L_ARRAY_COLLECTION_1))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(L_ARRAY_COLLECTION_1))==(?);
  Expanded_List_HiddenConstants(Implementation(L_ARRAY_COLLECTION_1))==(?);
  List_HiddenConstants(Implementation(L_ARRAY_COLLECTION_1))==(?);
  External_List_HiddenConstants(Implementation(L_ARRAY_COLLECTION_1))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(L_ARRAY_COLLECTION_1))==(btrue);
  Context_List_Properties(Implementation(L_ARRAY_COLLECTION_1))==(btrue);
  Inherited_List_Properties(Implementation(L_ARRAY_COLLECTION_1))==(btrue);
  List_Properties(Implementation(L_ARRAY_COLLECTION_1))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(L_ARRAY_COLLECTION_1))==(aa: aa);
  List_Values(Implementation(L_ARRAY_COLLECTION_1))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(L_ARRAY_COLLECTION_1),Machine(L_SEQUENCE))==(LEN_SEQ,IS_FULL_SEQ,IS_INDEX_SEQ,VAL_SEQ,FIRST_SEQ,LAST_SEQ,PUSH_SEQ,POP_SEQ,STR_SEQ,RMV_SEQ,INS_AFT_SEQ,CLR_SEQ,TAIL_SEQ,KEEP_SEQ,CUT_SEQ,PART_SEQ,REV_SEQ,FIND_FIRST_SEQ,FIND_LAST_SEQ);
  List_Included_Operations(Implementation(L_ARRAY_COLLECTION_1),Machine(BASIC_ARRAY_RGE))==(VAL_ARR_RGE,STR_ARR_RGE,COP_ARR_RGE,CMP_ARR_RGE)
END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(L_ARRAY_COLLECTION_1))==(Type(cptr) == Mvv(btype(INTEGER,?,?)));
  Operations(Implementation(L_ARRAY_COLLECTION_1))==(Type(CMP_ARR_COL) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(COP_ARR_COL) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(STR_ARR_COL) == Cst(No_type,btype(INTEGER,?,?)*atype(LACOLL_INDEX,?,?)*atype(LACOLL_VALUE,?,?));Type(VAL_ARR_COL) == Cst(atype(LACOLL_VALUE,?,?),btype(INTEGER,?,?)*atype(LACOLL_INDEX,?,?));Type(DEL_ARR_COL) == Cst(No_type,btype(INTEGER,?,?));Type(CRE_ARR_COL) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),No_type))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(L_ARRAY_COLLECTION_1)) == (? | ? | ? | free_lstseq_vrb,mat_vrbarr_rge | CRE_ARR_COL,DEL_ARR_COL,VAL_ARR_COL,STR_ARR_COL,COP_ARR_COL,CMP_ARR_COL | ? | imported(Machine(mat_vrb.BASIC_ARRAY_RGE)),imported(Machine(free_lst.L_SEQUENCE)) | LACOLL_maxobj,LACOLL_INDEX,LACOLL_VALUE | L_ARRAY_COLLECTION_1);
  List_Of_HiddenCst_Ids(Implementation(L_ARRAY_COLLECTION_1)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(L_ARRAY_COLLECTION_1)) == (?);
  List_Of_VisibleVar_Ids(Implementation(L_ARRAY_COLLECTION_1)) == (cptr | ?);
  List_Of_Ids_SeenBNU(Implementation(L_ARRAY_COLLECTION_1)) == (?: ?);
  List_Of_Ids(Machine(L_SEQUENCE)) == (? | ? | seq_vrb | ? | LEN_SEQ,IS_FULL_SEQ,IS_INDEX_SEQ,VAL_SEQ,FIRST_SEQ,LAST_SEQ,PUSH_SEQ,POP_SEQ,STR_SEQ,RMV_SEQ,INS_AFT_SEQ,CLR_SEQ,TAIL_SEQ,KEEP_SEQ,CUT_SEQ,PART_SEQ,REV_SEQ,FIND_FIRST_SEQ,FIND_LAST_SEQ | ? | ? | LS_maxsize,LS_VALUE | L_SEQUENCE);
  List_Of_HiddenCst_Ids(Machine(L_SEQUENCE)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(L_SEQUENCE)) == (?);
  List_Of_VisibleVar_Ids(Machine(L_SEQUENCE)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(L_SEQUENCE)) == (?: ?);
  List_Of_Ids(Machine(BASIC_ARRAY_RGE)) == (? | ? | arr_rge | ? | VAL_ARR_RGE,STR_ARR_RGE,COP_ARR_RGE,CMP_ARR_RGE | ? | ? | BAR_INDEX,BAR_VALUE,BAR_RANGE | BASIC_ARRAY_RGE);
  List_Of_HiddenCst_Ids(Machine(BASIC_ARRAY_RGE)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(BASIC_ARRAY_RGE)) == (?);
  List_Of_VisibleVar_Ids(Machine(BASIC_ARRAY_RGE)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(BASIC_ARRAY_RGE)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Implementation(L_ARRAY_COLLECTION_1)) == (Type(LACOLL_VALUE) == Prm(SetOf(atype(LACOLL_VALUE,?,?)));Type(LACOLL_INDEX) == Prm(SetOf(atype(LACOLL_INDEX,?,?)));Type(LACOLL_maxobj) == Prm(btype(INTEGER,?,?)))
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(L_ARRAY_COLLECTION_1)) == (Type(cptr) == Mvv(btype(INTEGER,?,?)))
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(L_ARRAY_COLLECTION_1),CRE_ARR_COL, 1) == (Type(len_seq) == Lvl(btype(INTEGER,?,?));Type(mo) == Lvl(btype(INTEGER,?,?)))
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
  List_Local_Operations(Implementation(L_ARRAY_COLLECTION_1))==(?)
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
  TypingPredicate(Implementation(L_ARRAY_COLLECTION_1))==(cptr: INTEGER)
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(L_ARRAY_COLLECTION_1),Machine(mat_vrb.BASIC_ARRAY_RGE))==(mat_vrb.arr_rge);
  ImportedVisVariablesList(Implementation(L_ARRAY_COLLECTION_1),Machine(mat_vrb.BASIC_ARRAY_RGE))==(?);
  ImportedVariablesList(Implementation(L_ARRAY_COLLECTION_1),Machine(free_lst.L_SEQUENCE))==(free_lst.seq_vrb);
  ImportedVisVariablesList(Implementation(L_ARRAY_COLLECTION_1),Machine(free_lst.L_SEQUENCE))==(?)
END
&
THEORY ListLocalOpInvariantX END
)
