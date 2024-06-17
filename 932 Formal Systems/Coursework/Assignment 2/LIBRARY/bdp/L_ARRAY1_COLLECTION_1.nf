Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(L_ARRAY1_COLLECTION_1))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(L_ARRAY1_COLLECTION_1))==(Machine(L_ARRAY1_COLLECTION));
  Level(Implementation(L_ARRAY1_COLLECTION_1))==(1);
  Upper_Level(Implementation(L_ARRAY1_COLLECTION_1))==(Machine(L_ARRAY1_COLLECTION))
END
&
THEORY LoadedStructureX IS
  Implementation(L_ARRAY1_COLLECTION_1)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(L_ARRAY1_COLLECTION_1))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(L_ARRAY1_COLLECTION_1))==(L_ARRAY_COLLECTION);
  Inherited_List_Includes(Implementation(L_ARRAY1_COLLECTION_1))==(L_ARRAY_COLLECTION)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(L_ARRAY1_COLLECTION_1))==(CRE_ARR_COL,DEL_ARR_COL,VAL_ARR_COL,STR_ARR_COL,COP_ARR_COL,CMP_ARR_COL)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(L_ARRAY1_COLLECTION_1))==(L_ARRAY_COLLECTION)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(L_ARRAY1_COLLECTION_1))==(?);
  Context_List_Variables(Implementation(L_ARRAY1_COLLECTION_1))==(?);
  Abstract_List_Variables(Implementation(L_ARRAY1_COLLECTION_1))==(arr_col);
  Local_List_Variables(Implementation(L_ARRAY1_COLLECTION_1))==(?);
  List_Variables(Implementation(L_ARRAY1_COLLECTION_1))==(arr_col);
  External_List_Variables(Implementation(L_ARRAY1_COLLECTION_1))==(arr_col)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(L_ARRAY1_COLLECTION_1))==(?);
  Abstract_List_VisibleVariables(Implementation(L_ARRAY1_COLLECTION_1))==(?);
  External_List_VisibleVariables(Implementation(L_ARRAY1_COLLECTION_1))==(?);
  Expanded_List_VisibleVariables(Implementation(L_ARRAY1_COLLECTION_1))==(?);
  List_VisibleVariables(Implementation(L_ARRAY1_COLLECTION_1))==(?);
  Internal_List_VisibleVariables(Implementation(L_ARRAY1_COLLECTION_1))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(L_ARRAY1_COLLECTION_1))==(btrue);
  Abstract_List_Invariant(Implementation(L_ARRAY1_COLLECTION_1))==(arr_col: 1..LAUC_maxobj +-> (0..LAUC_maxidx --> LAUC_minval..LAUC_maxval));
  Expanded_List_Invariant(Implementation(L_ARRAY1_COLLECTION_1))==(arr_col: 1..LAUC_maxobj +-> (0..LAUC_maxidx --> LAUC_minval..LAUC_maxval));
  Context_List_Invariant(Implementation(L_ARRAY1_COLLECTION_1))==(btrue);
  List_Invariant(Implementation(L_ARRAY1_COLLECTION_1))==(btrue)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(L_ARRAY1_COLLECTION_1))==(btrue);
  Expanded_List_Assertions(Implementation(L_ARRAY1_COLLECTION_1))==(btrue);
  Context_List_Assertions(Implementation(L_ARRAY1_COLLECTION_1))==(btrue);
  List_Assertions(Implementation(L_ARRAY1_COLLECTION_1))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(L_ARRAY1_COLLECTION_1))==(arr_col:={});
  Context_List_Initialisation(Implementation(L_ARRAY1_COLLECTION_1))==(skip);
  List_Initialisation(Implementation(L_ARRAY1_COLLECTION_1))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(L_ARRAY1_COLLECTION_1))==(LAUC_maxobj,LAUC_maxidx,LAUC_minval,LAUC_maxval)
END
&
THEORY ListInstanciatedParametersX IS
  Precond_Instanciated_Parameters(Implementation(L_ARRAY1_COLLECTION_1),Machine(L_ARRAY_COLLECTION))==(btrue);
  List_Instanciated_Parameters(Implementation(L_ARRAY1_COLLECTION_1),Machine(L_ARRAY_COLLECTION))==(LAUC_maxobj,0..LAUC_maxidx,LAUC_minval..LAUC_maxval)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(L_ARRAY1_COLLECTION_1),Machine(L_ARRAY_COLLECTION))==(LAUC_maxobj: 1..MAXINT-1 & 0..LAUC_maxidx: FIN(INTEGER) & not(0..LAUC_maxidx = {}) & LAUC_minval..LAUC_maxval: FIN(INTEGER) & not(LAUC_minval..LAUC_maxval = {}));
  List_Constraints(Implementation(L_ARRAY1_COLLECTION_1))==(LAUC_maxobj: NAT1 & LAUC_maxobj/=MAXINT & LAUC_maxidx: NAT & LAUC_minval: NAT & LAUC_maxval: NAT & LAUC_minval<=LAUC_maxval);
  List_Context_Constraints(Implementation(L_ARRAY1_COLLECTION_1))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(L_ARRAY1_COLLECTION_1))==(SET_ARR_COL,PCOP_ARR_COL,PCMP_ARR_COL,CRE_ARR_COL,DEL_ARR_COL,VAL_ARR_COL,STR_ARR_COL,COP_ARR_COL,CMP_ARR_COL);
  List_Operations(Implementation(L_ARRAY1_COLLECTION_1))==(SET_ARR_COL,PCOP_ARR_COL,PCMP_ARR_COL,CRE_ARR_COL,DEL_ARR_COL,VAL_ARR_COL,STR_ARR_COL,COP_ARR_COL,CMP_ARR_COL)
END
&
THEORY ListInputX IS
  List_Input(Implementation(L_ARRAY1_COLLECTION_1),CMP_ARR_COL)==(range1,range2);
  List_Input(Implementation(L_ARRAY1_COLLECTION_1),COP_ARR_COL)==(dest,src);
  List_Input(Implementation(L_ARRAY1_COLLECTION_1),STR_ARR_COL)==(ii,jj,vv);
  List_Input(Implementation(L_ARRAY1_COLLECTION_1),VAL_ARR_COL)==(ii,jj);
  List_Input(Implementation(L_ARRAY1_COLLECTION_1),DEL_ARR_COL)==(ii);
  List_Input(Implementation(L_ARRAY1_COLLECTION_1),CRE_ARR_COL)==(?);
  List_Input(Implementation(L_ARRAY1_COLLECTION_1),SET_ARR_COL)==(rr,ii,jj,vv);
  List_Input(Implementation(L_ARRAY1_COLLECTION_1),PCOP_ARR_COL)==(dest,idx_dst,src,ii,jj);
  List_Input(Implementation(L_ARRAY1_COLLECTION_1),PCMP_ARR_COL)==(rr2,idx2,rr1,ii,jj)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(L_ARRAY1_COLLECTION_1),CMP_ARR_COL)==(bb);
  List_Output(Implementation(L_ARRAY1_COLLECTION_1),COP_ARR_COL)==(?);
  List_Output(Implementation(L_ARRAY1_COLLECTION_1),STR_ARR_COL)==(?);
  List_Output(Implementation(L_ARRAY1_COLLECTION_1),VAL_ARR_COL)==(vv);
  List_Output(Implementation(L_ARRAY1_COLLECTION_1),DEL_ARR_COL)==(?);
  List_Output(Implementation(L_ARRAY1_COLLECTION_1),CRE_ARR_COL)==(ii,bb);
  List_Output(Implementation(L_ARRAY1_COLLECTION_1),SET_ARR_COL)==(?);
  List_Output(Implementation(L_ARRAY1_COLLECTION_1),PCOP_ARR_COL)==(?);
  List_Output(Implementation(L_ARRAY1_COLLECTION_1),PCMP_ARR_COL)==(idx,bb)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(L_ARRAY1_COLLECTION_1),CMP_ARR_COL)==(bb <-- CMP_ARR_COL(range1,range2));
  List_Header(Implementation(L_ARRAY1_COLLECTION_1),COP_ARR_COL)==(COP_ARR_COL(dest,src));
  List_Header(Implementation(L_ARRAY1_COLLECTION_1),STR_ARR_COL)==(STR_ARR_COL(ii,jj,vv));
  List_Header(Implementation(L_ARRAY1_COLLECTION_1),VAL_ARR_COL)==(vv <-- VAL_ARR_COL(ii,jj));
  List_Header(Implementation(L_ARRAY1_COLLECTION_1),DEL_ARR_COL)==(DEL_ARR_COL(ii));
  List_Header(Implementation(L_ARRAY1_COLLECTION_1),CRE_ARR_COL)==(ii,bb <-- CRE_ARR_COL);
  List_Header(Implementation(L_ARRAY1_COLLECTION_1),SET_ARR_COL)==(SET_ARR_COL(rr,ii,jj,vv));
  List_Header(Implementation(L_ARRAY1_COLLECTION_1),PCOP_ARR_COL)==(PCOP_ARR_COL(dest,idx_dst,src,ii,jj));
  List_Header(Implementation(L_ARRAY1_COLLECTION_1),PCMP_ARR_COL)==(idx,bb <-- PCMP_ARR_COL(rr2,idx2,rr1,ii,jj))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(L_ARRAY1_COLLECTION_1),CMP_ARR_COL)==(range1: 1..LAUC_maxobj & range1: dom(arr_col) & range2: 1..LAUC_maxobj & range2: dom(arr_col));
  List_Precondition(Implementation(L_ARRAY1_COLLECTION_1),CMP_ARR_COL)==(range1: 1..LAUC_maxobj & range1: dom(arr_col) & range2: 1..LAUC_maxobj & range2: dom(arr_col));
  Own_Precondition(Implementation(L_ARRAY1_COLLECTION_1),COP_ARR_COL)==(dest: 1..LAUC_maxobj & dest: dom(arr_col) & src: 1..LAUC_maxobj & src: dom(arr_col));
  List_Precondition(Implementation(L_ARRAY1_COLLECTION_1),COP_ARR_COL)==(dest: 1..LAUC_maxobj & dest: dom(arr_col) & src: 1..LAUC_maxobj & src: dom(arr_col));
  Own_Precondition(Implementation(L_ARRAY1_COLLECTION_1),STR_ARR_COL)==(ii: 1..LAUC_maxobj & ii: dom(arr_col) & jj: 0..LAUC_maxidx & vv: LAUC_minval..LAUC_maxval);
  List_Precondition(Implementation(L_ARRAY1_COLLECTION_1),STR_ARR_COL)==(ii: 1..LAUC_maxobj & ii: dom(arr_col) & jj: 0..LAUC_maxidx & vv: LAUC_minval..LAUC_maxval);
  Own_Precondition(Implementation(L_ARRAY1_COLLECTION_1),VAL_ARR_COL)==(ii: 1..LAUC_maxobj & ii: dom(arr_col) & jj: 0..LAUC_maxidx);
  List_Precondition(Implementation(L_ARRAY1_COLLECTION_1),VAL_ARR_COL)==(ii: 1..LAUC_maxobj & ii: dom(arr_col) & jj: 0..LAUC_maxidx);
  Own_Precondition(Implementation(L_ARRAY1_COLLECTION_1),DEL_ARR_COL)==(ii: 1..LAUC_maxobj & ii: dom(arr_col));
  List_Precondition(Implementation(L_ARRAY1_COLLECTION_1),DEL_ARR_COL)==(ii: 1..LAUC_maxobj & ii: dom(arr_col));
  Own_Precondition(Implementation(L_ARRAY1_COLLECTION_1),CRE_ARR_COL)==(btrue);
  List_Precondition(Implementation(L_ARRAY1_COLLECTION_1),CRE_ARR_COL)==(btrue);
  Own_Precondition(Implementation(L_ARRAY1_COLLECTION_1),SET_ARR_COL)==(btrue);
  List_Precondition(Implementation(L_ARRAY1_COLLECTION_1),SET_ARR_COL)==(rr: 1..LAUC_maxobj & rr: dom(arr_col) & ii: 0..LAUC_maxidx & jj: 0..LAUC_maxidx & jj/=MAXINT & vv: LAUC_minval..LAUC_maxval);
  Own_Precondition(Implementation(L_ARRAY1_COLLECTION_1),PCOP_ARR_COL)==(btrue);
  List_Precondition(Implementation(L_ARRAY1_COLLECTION_1),PCOP_ARR_COL)==(dest: 1..LAUC_maxobj & dest: dom(arr_col) & idx_dst: 0..LAUC_maxidx & src: 1..LAUC_maxobj & src: dom(arr_col) & ii: 0..LAUC_maxidx & jj: 0..LAUC_maxidx & jj/=MAXINT & ii<=jj & dest/=src & idx_dst+jj-ii: 0..LAUC_maxidx);
  Own_Precondition(Implementation(L_ARRAY1_COLLECTION_1),PCMP_ARR_COL)==(btrue);
  List_Precondition(Implementation(L_ARRAY1_COLLECTION_1),PCMP_ARR_COL)==(rr2: 1..LAUC_maxobj & rr2: dom(arr_col) & idx2: 0..LAUC_maxidx & rr1: 1..LAUC_maxobj & rr1: dom(arr_col) & ii: 0..LAUC_maxidx & jj: 0..LAUC_maxidx & ii<=jj & idx2+jj-ii: 0..LAUC_maxidx)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(L_ARRAY1_COLLECTION_1),PCMP_ARR_COL)==(rr2: 1..LAUC_maxobj & rr2: dom(arr_col) & idx2: 0..LAUC_maxidx & rr1: 1..LAUC_maxobj & rr1: dom(arr_col) & ii: 0..LAUC_maxidx & jj: 0..LAUC_maxidx & ii<=jj & idx2+jj-ii: 0..LAUC_maxidx | @ss.((ii: INT | idx:=ii);bb:=FALSE;ss:=0;WHILE ss = 0 DO @(vv,ww).((rr1: 1..LAUC_maxobj & rr1: dom(arr_col) & idx: 0..LAUC_maxidx | vv:=arr_col(rr1)(idx));(idx2-ii: INT & idx2: INT & ii: INT & idx+(idx2-ii): INT & idx: INT & rr2: 1..LAUC_maxobj & rr2: dom(arr_col) & idx+(idx2-ii): 0..LAUC_maxidx | ww:=arr_col(rr2)(idx+(idx2-ii)));(vv/=ww ==> (bb:=TRUE;(1: INT | ss:=1)) [] not(vv/=ww) ==> (idx = jj ==> (1: INT | ss:=1) [] not(idx = jj) ==> (idx+1: INT & idx: INT & 1: INT | idx:=idx+1)))) INVARIANT idx: ii..jj & bb: BOOL & ss: NATURAL & ss<=1 & (ss = 0 => {xx | xx: ii..idx-1 & arr_col(rr1)(xx)/=arr_col(rr2)(xx+idx2-ii)} = {} & bb = FALSE) & (ss = 1 => {xx | xx: ii..idx-1 & arr_col(rr1)(xx)/=arr_col(rr2)(xx+idx2-ii)} = {} & bb = bool(not({xx | xx: ii..jj & arr_col(rr1)(xx)/=arr_col(rr2)(xx+idx2-ii)} = {}))) & (ss = 1 & bb = TRUE => arr_col(rr1)(idx)/=arr_col(rr2)(idx+idx2-ii)) VARIANT jj+1-idx-ss END));
  Expanded_List_Substitution(Implementation(L_ARRAY1_COLLECTION_1),PCOP_ARR_COL)==(dest: 1..LAUC_maxobj & dest: dom(arr_col) & idx_dst: 0..LAUC_maxidx & src: 1..LAUC_maxobj & src: dom(arr_col) & ii: 0..LAUC_maxidx & jj: 0..LAUC_maxidx & jj/=MAXINT & ii<=jj & dest/=src & idx_dst+jj-ii: 0..LAUC_maxidx | @zz.(zz:=ii;WHILE zz<=jj DO @vv.((src: 1..LAUC_maxobj & src: dom(arr_col) & zz: 0..LAUC_maxidx | vv:=arr_col(src)(zz));(zz-ii: INT & zz: INT & ii: INT & idx_dst+(zz-ii): INT & idx_dst: INT & dest: 1..LAUC_maxobj & dest: dom(arr_col) & idx_dst+(zz-ii): 0..LAUC_maxidx & vv: LAUC_minval..LAUC_maxval | arr_col:=arr_col<+{dest|->(arr_col(dest)<+{idx_dst+(zz-ii)|->vv})});(zz+1: INT & zz: INT & 1: INT | zz:=zz+1)) INVARIANT zz: NAT & zz: ii..jj+1 & arr_col = arr_col$0<+{dest|->(arr_col$0(dest)<+%xx.(xx: idx_dst..idx_dst+zz-ii-1 | arr_col$0(src)(xx+ii-idx_dst)))} VARIANT jj+1-zz END));
  Expanded_List_Substitution(Implementation(L_ARRAY1_COLLECTION_1),SET_ARR_COL)==(rr: 1..LAUC_maxobj & rr: dom(arr_col) & ii: 0..LAUC_maxidx & jj: 0..LAUC_maxidx & jj/=MAXINT & vv: LAUC_minval..LAUC_maxval | @zz.(zz:=ii;WHILE zz<=jj DO (rr: 1..LAUC_maxobj & rr: dom(arr_col) & zz: 0..LAUC_maxidx & vv: LAUC_minval..LAUC_maxval | arr_col:=arr_col<+{rr|->(arr_col(rr)<+{zz|->vv})});(zz+1: INT & zz: INT & 1: INT | zz:=zz+1) INVARIANT zz: NAT & zz: ii..jj+1\/{ii} & arr_col = arr_col$0<+{rr|->(arr_col$0(rr)<+(ii..zz-1)*{vv})} VARIANT ii+jj+1-zz END));
  List_Substitution(Implementation(L_ARRAY1_COLLECTION_1),CMP_ARR_COL)==(bb:=bool(arr_col(range1) = arr_col(range2)));
  Expanded_List_Substitution(Implementation(L_ARRAY1_COLLECTION_1),CMP_ARR_COL)==(range1: 1..LAUC_maxobj & range1: dom(arr_col) & range2: 1..LAUC_maxobj & range2: dom(arr_col) | bb:=bool(arr_col(range1) = arr_col(range2)));
  List_Substitution(Implementation(L_ARRAY1_COLLECTION_1),COP_ARR_COL)==(arr_col:=arr_col<+{dest|->arr_col(src)});
  Expanded_List_Substitution(Implementation(L_ARRAY1_COLLECTION_1),COP_ARR_COL)==(dest: 1..LAUC_maxobj & dest: dom(arr_col) & src: 1..LAUC_maxobj & src: dom(arr_col) | arr_col:=arr_col<+{dest|->arr_col(src)});
  List_Substitution(Implementation(L_ARRAY1_COLLECTION_1),STR_ARR_COL)==(arr_col(ii)(jj):=vv);
  Expanded_List_Substitution(Implementation(L_ARRAY1_COLLECTION_1),STR_ARR_COL)==(ii: 1..LAUC_maxobj & ii: dom(arr_col) & jj: 0..LAUC_maxidx & vv: LAUC_minval..LAUC_maxval | arr_col:=arr_col<+{ii|->(arr_col(ii)<+{jj|->vv})});
  List_Substitution(Implementation(L_ARRAY1_COLLECTION_1),VAL_ARR_COL)==(vv:=arr_col(ii)(jj));
  Expanded_List_Substitution(Implementation(L_ARRAY1_COLLECTION_1),VAL_ARR_COL)==(ii: 1..LAUC_maxobj & ii: dom(arr_col) & jj: 0..LAUC_maxidx | vv:=arr_col(ii)(jj));
  List_Substitution(Implementation(L_ARRAY1_COLLECTION_1),DEL_ARR_COL)==(arr_col:={ii}<<|arr_col);
  Expanded_List_Substitution(Implementation(L_ARRAY1_COLLECTION_1),DEL_ARR_COL)==(ii: 1..LAUC_maxobj & ii: dom(arr_col) | arr_col:={ii}<<|arr_col);
  List_Substitution(Implementation(L_ARRAY1_COLLECTION_1),CRE_ARR_COL)==(ANY nrge,nbb,sol,fct,nac WHERE nrge: 1..LAUC_maxobj & nbb: BOOL & sol <: 1..LAUC_maxobj & sol = (1..LAUC_maxobj)-dom(arr_col) & fct: 0..LAUC_maxidx --> LAUC_minval..LAUC_maxval & nac: 1..LAUC_maxobj +-> (0..LAUC_maxidx --> LAUC_minval..LAUC_maxval) & (sol = {} => nac = arr_col) & (sol/={} => nrge: sol & nac = arr_col\/{nrge|->fct}) & nbb = bool(sol/={}) THEN bb:=nbb || ii:=nrge || arr_col:=nac END);
  Expanded_List_Substitution(Implementation(L_ARRAY1_COLLECTION_1),CRE_ARR_COL)==(btrue | @(nrge,nbb,sol,fct,nac).(nrge: 1..LAUC_maxobj & nbb: BOOL & sol <: 1..LAUC_maxobj & sol = (1..LAUC_maxobj)-dom(arr_col) & fct: 0..LAUC_maxidx --> LAUC_minval..LAUC_maxval & nac: 1..LAUC_maxobj +-> (0..LAUC_maxidx --> LAUC_minval..LAUC_maxval) & (sol = {} => nac = arr_col) & (sol/={} => nrge: sol & nac = arr_col\/{nrge|->fct}) & nbb = bool(sol/={}) ==> bb,ii,arr_col:=nbb,nrge,nac));
  List_Substitution(Implementation(L_ARRAY1_COLLECTION_1),SET_ARR_COL)==(VAR zz IN zz:=ii;WHILE zz<=jj DO STR_ARR_COL(rr,zz,vv);zz:=zz+1 INVARIANT zz: NAT & zz: ii..jj+1\/{ii} & arr_col = arr_col$0<+{rr|->(arr_col$0(rr)<+(ii..zz-1)*{vv})} VARIANT ii+jj+1-zz END END);
  List_Substitution(Implementation(L_ARRAY1_COLLECTION_1),PCOP_ARR_COL)==(VAR zz IN zz:=ii;WHILE zz<=jj DO VAR vv IN vv <-- VAL_ARR_COL(src,zz);STR_ARR_COL(dest,idx_dst+(zz-ii),vv);zz:=zz+1 END INVARIANT zz: NAT & zz: ii..jj+1 & arr_col = arr_col$0<+{dest|->(arr_col$0(dest)<+%xx.(xx: idx_dst..idx_dst+zz-ii-1 | arr_col$0(src)(xx+ii-idx_dst)))} VARIANT jj+1-zz END END);
  List_Substitution(Implementation(L_ARRAY1_COLLECTION_1),PCMP_ARR_COL)==(VAR ss IN idx:=ii;bb:=FALSE;ss:=0;WHILE ss = 0 DO VAR vv,ww IN vv <-- VAL_ARR_COL(rr1,idx);ww <-- VAL_ARR_COL(rr2,idx+(idx2-ii));IF vv/=ww THEN bb:=TRUE;ss:=1 ELSIF idx = jj THEN ss:=1 ELSE idx:=idx+1 END END INVARIANT idx: ii..jj & bb: BOOL & ss: NATURAL & ss<=1 & (ss = 0 => {xx | xx: ii..idx-1 & arr_col(rr1)(xx)/=arr_col(rr2)(xx+idx2-ii)} = {} & bb = FALSE) & (ss = 1 => {xx | xx: ii..idx-1 & arr_col(rr1)(xx)/=arr_col(rr2)(xx+idx2-ii)} = {} & bb = bool(not({xx | xx: ii..jj & arr_col(rr1)(xx)/=arr_col(rr2)(xx+idx2-ii)} = {}))) & (ss = 1 & bb = TRUE => arr_col(rr1)(idx)/=arr_col(rr2)(idx+idx2-ii)) VARIANT jj+1-idx-ss END END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(L_ARRAY1_COLLECTION_1))==(?);
  Inherited_List_Constants(Implementation(L_ARRAY1_COLLECTION_1))==(?);
  List_Constants(Implementation(L_ARRAY1_COLLECTION_1))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(L_ARRAY1_COLLECTION_1))==(?);
  Context_List_Defered(Implementation(L_ARRAY1_COLLECTION_1))==(?);
  Context_List_Sets(Implementation(L_ARRAY1_COLLECTION_1))==(?);
  List_Own_Enumerated(Implementation(L_ARRAY1_COLLECTION_1))==(?);
  List_Valuable_Sets(Implementation(L_ARRAY1_COLLECTION_1))==(?);
  Inherited_List_Enumerated(Implementation(L_ARRAY1_COLLECTION_1))==(?);
  Inherited_List_Defered(Implementation(L_ARRAY1_COLLECTION_1))==(?);
  Inherited_List_Sets(Implementation(L_ARRAY1_COLLECTION_1))==(?);
  List_Enumerated(Implementation(L_ARRAY1_COLLECTION_1))==(?);
  List_Defered(Implementation(L_ARRAY1_COLLECTION_1))==(?);
  List_Sets(Implementation(L_ARRAY1_COLLECTION_1))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(L_ARRAY1_COLLECTION_1))==(?);
  Expanded_List_HiddenConstants(Implementation(L_ARRAY1_COLLECTION_1))==(?);
  List_HiddenConstants(Implementation(L_ARRAY1_COLLECTION_1))==(?);
  External_List_HiddenConstants(Implementation(L_ARRAY1_COLLECTION_1))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(L_ARRAY1_COLLECTION_1))==(btrue);
  Context_List_Properties(Implementation(L_ARRAY1_COLLECTION_1))==(btrue);
  Inherited_List_Properties(Implementation(L_ARRAY1_COLLECTION_1))==(btrue);
  List_Properties(Implementation(L_ARRAY1_COLLECTION_1))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(L_ARRAY1_COLLECTION_1))==(aa: aa);
  List_Values(Implementation(L_ARRAY1_COLLECTION_1))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(L_ARRAY1_COLLECTION_1),Machine(L_ARRAY_COLLECTION))==(CRE_ARR_COL,DEL_ARR_COL,VAL_ARR_COL,STR_ARR_COL,COP_ARR_COL,CMP_ARR_COL)
END
&
THEORY InheritedEnvX IS
  Operations(Implementation(L_ARRAY1_COLLECTION_1))==(Type(PCMP_ARR_COL) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(PCOP_ARR_COL) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SET_ARR_COL) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(CMP_ARR_COL) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(COP_ARR_COL) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(STR_ARR_COL) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(VAL_ARR_COL) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(DEL_ARR_COL) == Cst(No_type,btype(INTEGER,?,?));Type(CRE_ARR_COL) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),No_type))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(L_ARRAY1_COLLECTION_1)) == (? | ? | ? | arr_col | SET_ARR_COL,PCOP_ARR_COL,PCMP_ARR_COL | ? | imported(Machine(L_ARRAY_COLLECTION)) | LAUC_maxobj,LAUC_maxidx,LAUC_minval,LAUC_maxval | L_ARRAY1_COLLECTION_1);
  List_Of_HiddenCst_Ids(Implementation(L_ARRAY1_COLLECTION_1)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(L_ARRAY1_COLLECTION_1)) == (?);
  List_Of_VisibleVar_Ids(Implementation(L_ARRAY1_COLLECTION_1)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(L_ARRAY1_COLLECTION_1)) == (?: ?);
  List_Of_Ids(Machine(L_ARRAY_COLLECTION)) == (? | ? | arr_col | ? | CRE_ARR_COL,DEL_ARR_COL,VAL_ARR_COL,STR_ARR_COL,COP_ARR_COL,CMP_ARR_COL | ? | ? | LACOLL_maxobj,LACOLL_INDEX,LACOLL_VALUE | L_ARRAY_COLLECTION);
  List_Of_HiddenCst_Ids(Machine(L_ARRAY_COLLECTION)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(L_ARRAY_COLLECTION)) == (?);
  List_Of_VisibleVar_Ids(Machine(L_ARRAY_COLLECTION)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(L_ARRAY_COLLECTION)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Implementation(L_ARRAY1_COLLECTION_1)) == (Type(LAUC_maxval) == Prm(btype(INTEGER,?,?));Type(LAUC_minval) == Prm(btype(INTEGER,?,?));Type(LAUC_maxidx) == Prm(btype(INTEGER,?,?));Type(LAUC_maxobj) == Prm(btype(INTEGER,?,?)))
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(L_ARRAY1_COLLECTION_1),SET_ARR_COL, 1) == (Type(zz) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(L_ARRAY1_COLLECTION_1),PCOP_ARR_COL, 2) == (Type(vv) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(L_ARRAY1_COLLECTION_1),PCOP_ARR_COL, 1) == (Type(zz) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(L_ARRAY1_COLLECTION_1),PCMP_ARR_COL, 2) == (Type(vv) == Lvl(btype(INTEGER,?,?));Type(ww) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(L_ARRAY1_COLLECTION_1),PCMP_ARR_COL, 1) == (Type(ss) == Lvl(btype(INTEGER,?,?)))
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
  List_Local_Operations(Implementation(L_ARRAY1_COLLECTION_1))==(?)
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
  TypingPredicate(Implementation(L_ARRAY1_COLLECTION_1))==(btrue)
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(L_ARRAY1_COLLECTION_1),Machine(L_ARRAY_COLLECTION))==(arr_col);
  ImportedVisVariablesList(Implementation(L_ARRAY1_COLLECTION_1),Machine(L_ARRAY_COLLECTION))==(?)
END
&
THEORY ListLocalOpInvariantX END
)
