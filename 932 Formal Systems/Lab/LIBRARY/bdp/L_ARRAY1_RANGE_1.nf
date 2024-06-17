Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(L_ARRAY1_RANGE_1))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(L_ARRAY1_RANGE_1))==(Machine(L_ARRAY1_RANGE));
  Level(Implementation(L_ARRAY1_RANGE_1))==(1);
  Upper_Level(Implementation(L_ARRAY1_RANGE_1))==(Machine(L_ARRAY1_RANGE))
END
&
THEORY LoadedStructureX IS
  Implementation(L_ARRAY1_RANGE_1)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(L_ARRAY1_RANGE_1))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(L_ARRAY1_RANGE_1))==(BASIC_ARRAY_RGE);
  Inherited_List_Includes(Implementation(L_ARRAY1_RANGE_1))==(BASIC_ARRAY_RGE)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(L_ARRAY1_RANGE_1))==(VAL_ARR_RGE,STR_ARR_RGE,COP_ARR_RGE,CMP_ARR_RGE)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(L_ARRAY1_RANGE_1))==(BASIC_ARRAY_RGE)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(L_ARRAY1_RANGE_1))==(?);
  Context_List_Variables(Implementation(L_ARRAY1_RANGE_1))==(?);
  Abstract_List_Variables(Implementation(L_ARRAY1_RANGE_1))==(arr_rge);
  Local_List_Variables(Implementation(L_ARRAY1_RANGE_1))==(?);
  List_Variables(Implementation(L_ARRAY1_RANGE_1))==(arr_rge);
  External_List_Variables(Implementation(L_ARRAY1_RANGE_1))==(arr_rge)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(L_ARRAY1_RANGE_1))==(?);
  Abstract_List_VisibleVariables(Implementation(L_ARRAY1_RANGE_1))==(?);
  External_List_VisibleVariables(Implementation(L_ARRAY1_RANGE_1))==(?);
  Expanded_List_VisibleVariables(Implementation(L_ARRAY1_RANGE_1))==(?);
  List_VisibleVariables(Implementation(L_ARRAY1_RANGE_1))==(?);
  Internal_List_VisibleVariables(Implementation(L_ARRAY1_RANGE_1))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(L_ARRAY1_RANGE_1))==(btrue);
  Abstract_List_Invariant(Implementation(L_ARRAY1_RANGE_1))==(arr_rge: LAUR_minrge..LAUR_maxrge --> (0..LAUR_maxidx --> LAUR_VALUE));
  Expanded_List_Invariant(Implementation(L_ARRAY1_RANGE_1))==(arr_rge: LAUR_minrge..LAUR_maxrge --> (0..LAUR_maxidx --> LAUR_VALUE));
  Context_List_Invariant(Implementation(L_ARRAY1_RANGE_1))==(btrue);
  List_Invariant(Implementation(L_ARRAY1_RANGE_1))==(btrue)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(L_ARRAY1_RANGE_1))==(btrue);
  Expanded_List_Assertions(Implementation(L_ARRAY1_RANGE_1))==(btrue);
  Context_List_Assertions(Implementation(L_ARRAY1_RANGE_1))==(btrue);
  List_Assertions(Implementation(L_ARRAY1_RANGE_1))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(L_ARRAY1_RANGE_1))==(@(arr_rge$0).(arr_rge$0: LAUR_minrge..LAUR_maxrge --> (0..LAUR_maxidx --> LAUR_VALUE) ==> arr_rge:=arr_rge$0));
  Context_List_Initialisation(Implementation(L_ARRAY1_RANGE_1))==(skip);
  List_Initialisation(Implementation(L_ARRAY1_RANGE_1))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(L_ARRAY1_RANGE_1))==(LAUR_minrge,LAUR_maxrge,LAUR_maxidx,LAUR_VALUE)
END
&
THEORY ListInstanciatedParametersX IS
  Precond_Instanciated_Parameters(Implementation(L_ARRAY1_RANGE_1),Machine(BASIC_ARRAY_RGE))==(btrue);
  List_Instanciated_Parameters(Implementation(L_ARRAY1_RANGE_1),Machine(BASIC_ARRAY_RGE))==(0..LAUR_maxidx,LAUR_VALUE,LAUR_minrge..LAUR_maxrge)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(L_ARRAY1_RANGE_1),Machine(BASIC_ARRAY_RGE))==(0..LAUR_maxidx: FIN(INTEGER) & not(0..LAUR_maxidx = {}) & LAUR_VALUE: FIN(INTEGER) & not(LAUR_VALUE = {}) & LAUR_minrge..LAUR_maxrge: FIN(INTEGER) & not(LAUR_minrge..LAUR_maxrge = {}));
  List_Constraints(Implementation(L_ARRAY1_RANGE_1))==(LAUR_maxidx: NAT1 & LAUR_minrge: NAT & LAUR_maxrge: NAT & LAUR_minrge<LAUR_maxrge & LAUR_VALUE: FIN(INTEGER) & not(LAUR_VALUE = {}));
  List_Context_Constraints(Implementation(L_ARRAY1_RANGE_1))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(L_ARRAY1_RANGE_1))==(DUP_ARR_RGE,SET_ARR_RGE,PCOP_ARR_RGE,PCMP_ARR_RGE,VAL_ARR_RGE,STR_ARR_RGE,COP_ARR_RGE,CMP_ARR_RGE);
  List_Operations(Implementation(L_ARRAY1_RANGE_1))==(DUP_ARR_RGE,SET_ARR_RGE,PCOP_ARR_RGE,PCMP_ARR_RGE,VAL_ARR_RGE,STR_ARR_RGE,COP_ARR_RGE,CMP_ARR_RGE)
END
&
THEORY ListInputX IS
  List_Input(Implementation(L_ARRAY1_RANGE_1),CMP_ARR_RGE)==(range1,range2);
  List_Input(Implementation(L_ARRAY1_RANGE_1),COP_ARR_RGE)==(dest,src);
  List_Input(Implementation(L_ARRAY1_RANGE_1),STR_ARR_RGE)==(range,index,value);
  List_Input(Implementation(L_ARRAY1_RANGE_1),VAL_ARR_RGE)==(range,index);
  List_Input(Implementation(L_ARRAY1_RANGE_1),DUP_ARR_RGE)==(dest1,dest2,src);
  List_Input(Implementation(L_ARRAY1_RANGE_1),SET_ARR_RGE)==(range,ii,jj,vv);
  List_Input(Implementation(L_ARRAY1_RANGE_1),PCOP_ARR_RGE)==(dest,idx_dst,src,ii,jj);
  List_Input(Implementation(L_ARRAY1_RANGE_1),PCMP_ARR_RGE)==(rng2,idx2,rng1,ii,jj)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(L_ARRAY1_RANGE_1),CMP_ARR_RGE)==(bb);
  List_Output(Implementation(L_ARRAY1_RANGE_1),COP_ARR_RGE)==(?);
  List_Output(Implementation(L_ARRAY1_RANGE_1),STR_ARR_RGE)==(?);
  List_Output(Implementation(L_ARRAY1_RANGE_1),VAL_ARR_RGE)==(value);
  List_Output(Implementation(L_ARRAY1_RANGE_1),DUP_ARR_RGE)==(?);
  List_Output(Implementation(L_ARRAY1_RANGE_1),SET_ARR_RGE)==(?);
  List_Output(Implementation(L_ARRAY1_RANGE_1),PCOP_ARR_RGE)==(?);
  List_Output(Implementation(L_ARRAY1_RANGE_1),PCMP_ARR_RGE)==(idx,bb)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(L_ARRAY1_RANGE_1),CMP_ARR_RGE)==(bb <-- CMP_ARR_RGE(range1,range2));
  List_Header(Implementation(L_ARRAY1_RANGE_1),COP_ARR_RGE)==(COP_ARR_RGE(dest,src));
  List_Header(Implementation(L_ARRAY1_RANGE_1),STR_ARR_RGE)==(STR_ARR_RGE(range,index,value));
  List_Header(Implementation(L_ARRAY1_RANGE_1),VAL_ARR_RGE)==(value <-- VAL_ARR_RGE(range,index));
  List_Header(Implementation(L_ARRAY1_RANGE_1),DUP_ARR_RGE)==(DUP_ARR_RGE(dest1,dest2,src));
  List_Header(Implementation(L_ARRAY1_RANGE_1),SET_ARR_RGE)==(SET_ARR_RGE(range,ii,jj,vv));
  List_Header(Implementation(L_ARRAY1_RANGE_1),PCOP_ARR_RGE)==(PCOP_ARR_RGE(dest,idx_dst,src,ii,jj));
  List_Header(Implementation(L_ARRAY1_RANGE_1),PCMP_ARR_RGE)==(idx,bb <-- PCMP_ARR_RGE(rng2,idx2,rng1,ii,jj))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(L_ARRAY1_RANGE_1),CMP_ARR_RGE)==(range1: LAUR_minrge..LAUR_maxrge & range2: LAUR_minrge..LAUR_maxrge);
  List_Precondition(Implementation(L_ARRAY1_RANGE_1),CMP_ARR_RGE)==(range1: LAUR_minrge..LAUR_maxrge & range2: LAUR_minrge..LAUR_maxrge);
  Own_Precondition(Implementation(L_ARRAY1_RANGE_1),COP_ARR_RGE)==(dest: LAUR_minrge..LAUR_maxrge & src: LAUR_minrge..LAUR_maxrge);
  List_Precondition(Implementation(L_ARRAY1_RANGE_1),COP_ARR_RGE)==(dest: LAUR_minrge..LAUR_maxrge & src: LAUR_minrge..LAUR_maxrge);
  Own_Precondition(Implementation(L_ARRAY1_RANGE_1),STR_ARR_RGE)==(range: LAUR_minrge..LAUR_maxrge & index: 0..LAUR_maxidx & value: LAUR_VALUE);
  List_Precondition(Implementation(L_ARRAY1_RANGE_1),STR_ARR_RGE)==(range: LAUR_minrge..LAUR_maxrge & index: 0..LAUR_maxidx & value: LAUR_VALUE);
  Own_Precondition(Implementation(L_ARRAY1_RANGE_1),VAL_ARR_RGE)==(range: LAUR_minrge..LAUR_maxrge & index: 0..LAUR_maxidx);
  List_Precondition(Implementation(L_ARRAY1_RANGE_1),VAL_ARR_RGE)==(range: LAUR_minrge..LAUR_maxrge & index: 0..LAUR_maxidx);
  Own_Precondition(Implementation(L_ARRAY1_RANGE_1),DUP_ARR_RGE)==(btrue);
  List_Precondition(Implementation(L_ARRAY1_RANGE_1),DUP_ARR_RGE)==(dest1: NAT & dest2: NAT & dest2/=MAXINT & dest1..dest2 <: LAUR_minrge..LAUR_maxrge & src: LAUR_minrge..LAUR_maxrge);
  Own_Precondition(Implementation(L_ARRAY1_RANGE_1),SET_ARR_RGE)==(btrue);
  List_Precondition(Implementation(L_ARRAY1_RANGE_1),SET_ARR_RGE)==(range: LAUR_minrge..LAUR_maxrge & ii: NAT & jj: NAT & jj/=MAXINT & ii..jj <: 0..LAUR_maxidx & vv: LAUR_VALUE);
  Own_Precondition(Implementation(L_ARRAY1_RANGE_1),PCOP_ARR_RGE)==(btrue);
  List_Precondition(Implementation(L_ARRAY1_RANGE_1),PCOP_ARR_RGE)==(dest: LAUR_minrge..LAUR_maxrge & idx_dst: 0..LAUR_maxidx & src: LAUR_minrge..LAUR_maxrge & ii: 0..LAUR_maxidx & jj: 0..LAUR_maxidx & dest/=src & jj<=MAXINT-1 & ii<=jj & idx_dst+jj-ii: 0..LAUR_maxidx);
  Own_Precondition(Implementation(L_ARRAY1_RANGE_1),PCMP_ARR_RGE)==(btrue);
  List_Precondition(Implementation(L_ARRAY1_RANGE_1),PCMP_ARR_RGE)==(rng2: LAUR_minrge..LAUR_maxrge & idx2: 0..LAUR_maxidx & rng1: LAUR_minrge..LAUR_maxrge & ii: 0..LAUR_maxidx & jj: 0..LAUR_maxidx & ii<=jj & idx2+jj-ii: 0..LAUR_maxidx)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(L_ARRAY1_RANGE_1),PCMP_ARR_RGE)==(rng2: LAUR_minrge..LAUR_maxrge & idx2: 0..LAUR_maxidx & rng1: LAUR_minrge..LAUR_maxrge & ii: 0..LAUR_maxidx & jj: 0..LAUR_maxidx & ii<=jj & idx2+jj-ii: 0..LAUR_maxidx | @ss.((ii: INT | idx:=ii);bb:=FALSE;ss:=0;WHILE ss = 0 DO @(vv,ww).((rng1: LAUR_minrge..LAUR_maxrge & idx: 0..LAUR_maxidx | vv:=arr_rge(rng1)(idx));(idx2-ii: INT & idx2: INT & ii: INT & idx+(idx2-ii): INT & idx: INT & rng2: LAUR_minrge..LAUR_maxrge & idx+(idx2-ii): 0..LAUR_maxidx | ww:=arr_rge(rng2)(idx+(idx2-ii)));(vv/=ww ==> (bb:=TRUE;(1: INT | ss:=1)) [] not(vv/=ww) ==> (idx = jj ==> (1: INT | ss:=1) [] not(idx = jj) ==> (idx+1: INT & idx: INT & 1: INT | idx:=idx+1)))) INVARIANT idx: NATURAL & ii<=idx & idx<=jj & bb: BOOL & ss: NATURAL & ss<=1 & (ss = 0 => {xx | xx: ii..idx-1 & arr_rge(rng1)(xx)/=arr_rge(rng2)(xx+idx2-ii)} = {} & bb = FALSE) & (ss = 1 => {xx | xx: ii..idx-1 & arr_rge(rng1)(xx)/=arr_rge(rng2)(xx+idx2-ii)} = {} & bb = bool(not({xx | xx: ii..jj & arr_rge(rng1)(xx)/=arr_rge(rng2)(xx+idx2-ii)} = {}))) & (ss = 1 & bb = TRUE => arr_rge(rng1)(idx)/=arr_rge(rng2)(idx+idx2-ii)) VARIANT 1+jj-idx-ss END));
  Expanded_List_Substitution(Implementation(L_ARRAY1_RANGE_1),PCOP_ARR_RGE)==(dest: LAUR_minrge..LAUR_maxrge & idx_dst: 0..LAUR_maxidx & src: LAUR_minrge..LAUR_maxrge & ii: 0..LAUR_maxidx & jj: 0..LAUR_maxidx & dest/=src & jj<=MAXINT-1 & ii<=jj & idx_dst+jj-ii: 0..LAUR_maxidx | @zz.(zz:=ii;WHILE zz<=jj DO @vv.((src: LAUR_minrge..LAUR_maxrge & zz: 0..LAUR_maxidx | vv:=arr_rge(src)(zz));(zz-ii: INT & zz: INT & ii: INT & idx_dst+(zz-ii): INT & idx_dst: INT & dest: LAUR_minrge..LAUR_maxrge & idx_dst+(zz-ii): 0..LAUR_maxidx & vv: LAUR_VALUE | arr_rge:=arr_rge<+{dest|->(arr_rge(dest)<+{idx_dst+(zz-ii)|->vv})});(zz+1: INT & zz: INT & 1: INT | zz:=zz+1)) INVARIANT zz: NAT & zz: ii..jj+1 & arr_rge = arr_rge$0<+{dest|->(arr_rge$0(dest)<+%xx.(xx: idx_dst..idx_dst+zz-ii-1 | arr_rge$0(src)(xx+ii-idx_dst)))} VARIANT jj+1-zz END));
  Expanded_List_Substitution(Implementation(L_ARRAY1_RANGE_1),SET_ARR_RGE)==(range: LAUR_minrge..LAUR_maxrge & ii: NAT & jj: NAT & jj/=MAXINT & ii..jj <: 0..LAUR_maxidx & vv: LAUR_VALUE | @zz.(zz:=ii;WHILE zz<=jj DO (range: LAUR_minrge..LAUR_maxrge & zz: 0..LAUR_maxidx & vv: LAUR_VALUE | arr_rge:=arr_rge<+{range|->(arr_rge(range)<+{zz|->vv})});(zz+1: INT & zz: INT & 1: INT | zz:=zz+1) INVARIANT zz: NAT & zz: ii..jj+1\/{ii} & arr_rge = arr_rge$0<+{range|->(arr_rge$0(range)<+(ii..zz-1)*{vv})} VARIANT ii+jj+1-zz END));
  Expanded_List_Substitution(Implementation(L_ARRAY1_RANGE_1),DUP_ARR_RGE)==(dest1: NAT & dest2: NAT & dest2/=MAXINT & dest1..dest2 <: LAUR_minrge..LAUR_maxrge & src: LAUR_minrge..LAUR_maxrge | @zz.(zz:=dest1;WHILE zz<=dest2 DO (zz: LAUR_minrge..LAUR_maxrge & src: LAUR_minrge..LAUR_maxrge | arr_rge:=arr_rge<+{zz|->arr_rge(src)});(zz+1: INT & zz: INT & 1: INT | zz:=zz+1) INVARIANT zz: NAT & zz: dest1..dest2+1\/{dest1} & arr_rge = arr_rge$0<+(dest1..zz-1)*{arr_rge$0(src)} VARIANT dest1+dest2+1-zz END));
  List_Substitution(Implementation(L_ARRAY1_RANGE_1),CMP_ARR_RGE)==(bb:=bool(arr_rge(range1) = arr_rge(range2)));
  Expanded_List_Substitution(Implementation(L_ARRAY1_RANGE_1),CMP_ARR_RGE)==(range1: LAUR_minrge..LAUR_maxrge & range2: LAUR_minrge..LAUR_maxrge | bb:=bool(arr_rge(range1) = arr_rge(range2)));
  List_Substitution(Implementation(L_ARRAY1_RANGE_1),COP_ARR_RGE)==(arr_rge:=arr_rge<+{dest|->arr_rge(src)});
  Expanded_List_Substitution(Implementation(L_ARRAY1_RANGE_1),COP_ARR_RGE)==(dest: LAUR_minrge..LAUR_maxrge & src: LAUR_minrge..LAUR_maxrge | arr_rge:=arr_rge<+{dest|->arr_rge(src)});
  List_Substitution(Implementation(L_ARRAY1_RANGE_1),STR_ARR_RGE)==(arr_rge(range)(index):=value);
  Expanded_List_Substitution(Implementation(L_ARRAY1_RANGE_1),STR_ARR_RGE)==(range: LAUR_minrge..LAUR_maxrge & index: 0..LAUR_maxidx & value: LAUR_VALUE | arr_rge:=arr_rge<+{range|->(arr_rge(range)<+{index|->value})});
  List_Substitution(Implementation(L_ARRAY1_RANGE_1),VAL_ARR_RGE)==(value:=arr_rge(range)(index));
  Expanded_List_Substitution(Implementation(L_ARRAY1_RANGE_1),VAL_ARR_RGE)==(range: LAUR_minrge..LAUR_maxrge & index: 0..LAUR_maxidx | value:=arr_rge(range)(index));
  List_Substitution(Implementation(L_ARRAY1_RANGE_1),DUP_ARR_RGE)==(VAR zz IN zz:=dest1;WHILE zz<=dest2 DO COP_ARR_RGE(zz,src);zz:=zz+1 INVARIANT zz: NAT & zz: dest1..dest2+1\/{dest1} & arr_rge = arr_rge$0<+(dest1..zz-1)*{arr_rge$0(src)} VARIANT dest1+dest2+1-zz END END);
  List_Substitution(Implementation(L_ARRAY1_RANGE_1),SET_ARR_RGE)==(VAR zz IN zz:=ii;WHILE zz<=jj DO STR_ARR_RGE(range,zz,vv);zz:=zz+1 INVARIANT zz: NAT & zz: ii..jj+1\/{ii} & arr_rge = arr_rge$0<+{range|->(arr_rge$0(range)<+(ii..zz-1)*{vv})} VARIANT ii+jj+1-zz END END);
  List_Substitution(Implementation(L_ARRAY1_RANGE_1),PCOP_ARR_RGE)==(VAR zz IN zz:=ii;WHILE zz<=jj DO VAR vv IN vv <-- VAL_ARR_RGE(src,zz);STR_ARR_RGE(dest,idx_dst+(zz-ii),vv);zz:=zz+1 END INVARIANT zz: NAT & zz: ii..jj+1 & arr_rge = arr_rge$0<+{dest|->(arr_rge$0(dest)<+%xx.(xx: idx_dst..idx_dst+zz-ii-1 | arr_rge$0(src)(xx+ii-idx_dst)))} VARIANT jj+1-zz END END);
  List_Substitution(Implementation(L_ARRAY1_RANGE_1),PCMP_ARR_RGE)==(VAR ss IN idx:=ii;bb:=FALSE;ss:=0;WHILE ss = 0 DO VAR vv,ww IN vv <-- VAL_ARR_RGE(rng1,idx);ww <-- VAL_ARR_RGE(rng2,idx+(idx2-ii));IF vv/=ww THEN bb:=TRUE;ss:=1 ELSIF idx = jj THEN ss:=1 ELSE idx:=idx+1 END END INVARIANT idx: NATURAL & ii<=idx & idx<=jj & bb: BOOL & ss: NATURAL & ss<=1 & (ss = 0 => {xx | xx: ii..idx-1 & arr_rge(rng1)(xx)/=arr_rge(rng2)(xx+idx2-ii)} = {} & bb = FALSE) & (ss = 1 => {xx | xx: ii..idx-1 & arr_rge(rng1)(xx)/=arr_rge(rng2)(xx+idx2-ii)} = {} & bb = bool(not({xx | xx: ii..jj & arr_rge(rng1)(xx)/=arr_rge(rng2)(xx+idx2-ii)} = {}))) & (ss = 1 & bb = TRUE => arr_rge(rng1)(idx)/=arr_rge(rng2)(idx+idx2-ii)) VARIANT 1+jj-idx-ss END END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(L_ARRAY1_RANGE_1))==(?);
  Inherited_List_Constants(Implementation(L_ARRAY1_RANGE_1))==(?);
  List_Constants(Implementation(L_ARRAY1_RANGE_1))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(L_ARRAY1_RANGE_1))==(?);
  Context_List_Defered(Implementation(L_ARRAY1_RANGE_1))==(?);
  Context_List_Sets(Implementation(L_ARRAY1_RANGE_1))==(?);
  List_Own_Enumerated(Implementation(L_ARRAY1_RANGE_1))==(?);
  List_Valuable_Sets(Implementation(L_ARRAY1_RANGE_1))==(?);
  Inherited_List_Enumerated(Implementation(L_ARRAY1_RANGE_1))==(?);
  Inherited_List_Defered(Implementation(L_ARRAY1_RANGE_1))==(?);
  Inherited_List_Sets(Implementation(L_ARRAY1_RANGE_1))==(?);
  List_Enumerated(Implementation(L_ARRAY1_RANGE_1))==(?);
  List_Defered(Implementation(L_ARRAY1_RANGE_1))==(?);
  List_Sets(Implementation(L_ARRAY1_RANGE_1))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(L_ARRAY1_RANGE_1))==(?);
  Expanded_List_HiddenConstants(Implementation(L_ARRAY1_RANGE_1))==(?);
  List_HiddenConstants(Implementation(L_ARRAY1_RANGE_1))==(?);
  External_List_HiddenConstants(Implementation(L_ARRAY1_RANGE_1))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(L_ARRAY1_RANGE_1))==(btrue);
  Context_List_Properties(Implementation(L_ARRAY1_RANGE_1))==(btrue);
  Inherited_List_Properties(Implementation(L_ARRAY1_RANGE_1))==(btrue);
  List_Properties(Implementation(L_ARRAY1_RANGE_1))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(L_ARRAY1_RANGE_1))==(aa: aa);
  List_Values(Implementation(L_ARRAY1_RANGE_1))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(L_ARRAY1_RANGE_1),Machine(BASIC_ARRAY_RGE))==(VAL_ARR_RGE,STR_ARR_RGE,COP_ARR_RGE,CMP_ARR_RGE)
END
&
THEORY InheritedEnvX IS
  Operations(Implementation(L_ARRAY1_RANGE_1))==(Type(PCMP_ARR_RGE) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(PCOP_ARR_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SET_ARR_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*atype(LAUR_VALUE,?,?));Type(DUP_ARR_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(CMP_ARR_RGE) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(COP_ARR_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(STR_ARR_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*atype(LAUR_VALUE,?,?));Type(VAL_ARR_RGE) == Cst(atype(LAUR_VALUE,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(L_ARRAY1_RANGE_1)) == (? | ? | ? | arr_rge | DUP_ARR_RGE,SET_ARR_RGE,PCOP_ARR_RGE,PCMP_ARR_RGE | ? | imported(Machine(BASIC_ARRAY_RGE)) | LAUR_minrge,LAUR_maxrge,LAUR_maxidx,LAUR_VALUE | L_ARRAY1_RANGE_1);
  List_Of_HiddenCst_Ids(Implementation(L_ARRAY1_RANGE_1)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(L_ARRAY1_RANGE_1)) == (?);
  List_Of_VisibleVar_Ids(Implementation(L_ARRAY1_RANGE_1)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(L_ARRAY1_RANGE_1)) == (?: ?);
  List_Of_Ids(Machine(BASIC_ARRAY_RGE)) == (? | ? | arr_rge | ? | VAL_ARR_RGE,STR_ARR_RGE,COP_ARR_RGE,CMP_ARR_RGE | ? | ? | BAR_INDEX,BAR_VALUE,BAR_RANGE | BASIC_ARRAY_RGE);
  List_Of_HiddenCst_Ids(Machine(BASIC_ARRAY_RGE)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(BASIC_ARRAY_RGE)) == (?);
  List_Of_VisibleVar_Ids(Machine(BASIC_ARRAY_RGE)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(BASIC_ARRAY_RGE)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Implementation(L_ARRAY1_RANGE_1)) == (Type(LAUR_VALUE) == Prm(SetOf(atype(LAUR_VALUE,?,?)));Type(LAUR_maxidx) == Prm(btype(INTEGER,?,?));Type(LAUR_maxrge) == Prm(btype(INTEGER,?,?));Type(LAUR_minrge) == Prm(btype(INTEGER,?,?)))
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(L_ARRAY1_RANGE_1),DUP_ARR_RGE, 1) == (Type(zz) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(L_ARRAY1_RANGE_1),SET_ARR_RGE, 1) == (Type(zz) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(L_ARRAY1_RANGE_1),PCOP_ARR_RGE, 2) == (Type(vv) == Lvl(atype(LAUR_VALUE,?,?)));
  Variables_Loc(Implementation(L_ARRAY1_RANGE_1),PCOP_ARR_RGE, 1) == (Type(zz) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(L_ARRAY1_RANGE_1),PCMP_ARR_RGE, 2) == (Type(vv) == Lvl(atype(LAUR_VALUE,?,?));Type(ww) == Lvl(atype(LAUR_VALUE,?,?)));
  Variables_Loc(Implementation(L_ARRAY1_RANGE_1),PCMP_ARR_RGE, 1) == (Type(ss) == Lvl(btype(INTEGER,?,?)))
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
  List_Local_Operations(Implementation(L_ARRAY1_RANGE_1))==(?)
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
  TypingPredicate(Implementation(L_ARRAY1_RANGE_1))==(btrue)
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(L_ARRAY1_RANGE_1),Machine(BASIC_ARRAY_RGE))==(arr_rge);
  ImportedVisVariablesList(Implementation(L_ARRAY1_RANGE_1),Machine(BASIC_ARRAY_RGE))==(?)
END
&
THEORY ListLocalOpInvariantX END
)
