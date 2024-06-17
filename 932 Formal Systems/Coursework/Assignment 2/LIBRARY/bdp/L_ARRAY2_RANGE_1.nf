Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(L_ARRAY2_RANGE_1))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(L_ARRAY2_RANGE_1))==(Machine(L_ARRAY2_RANGE));
  Level(Implementation(L_ARRAY2_RANGE_1))==(1);
  Upper_Level(Implementation(L_ARRAY2_RANGE_1))==(Machine(L_ARRAY2_RANGE))
END
&
THEORY LoadedStructureX IS
  Implementation(L_ARRAY2_RANGE_1)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(L_ARRAY2_RANGE_1))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(L_ARRAY2_RANGE_1))==(L_ARRAY1_RANGE);
  Inherited_List_Includes(Implementation(L_ARRAY2_RANGE_1))==(L_ARRAY1_RANGE)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(L_ARRAY2_RANGE_1))==(VAL_ARR_RGE,STR_ARR_RGE,COP_ARR_RGE,CMP_ARR_RGE,DUP_ARR_RGE,SET_ARR_RGE,PCOP_ARR_RGE,PCMP_ARR_RGE)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(L_ARRAY2_RANGE_1))==(L_ARRAY1_RANGE)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(L_ARRAY2_RANGE_1))==(?);
  Context_List_Variables(Implementation(L_ARRAY2_RANGE_1))==(?);
  Abstract_List_Variables(Implementation(L_ARRAY2_RANGE_1))==(arr_rge);
  Local_List_Variables(Implementation(L_ARRAY2_RANGE_1))==(?);
  List_Variables(Implementation(L_ARRAY2_RANGE_1))==(arr_rge);
  External_List_Variables(Implementation(L_ARRAY2_RANGE_1))==(arr_rge)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(L_ARRAY2_RANGE_1))==(?);
  Abstract_List_VisibleVariables(Implementation(L_ARRAY2_RANGE_1))==(?);
  External_List_VisibleVariables(Implementation(L_ARRAY2_RANGE_1))==(?);
  Expanded_List_VisibleVariables(Implementation(L_ARRAY2_RANGE_1))==(?);
  List_VisibleVariables(Implementation(L_ARRAY2_RANGE_1))==(?);
  Internal_List_VisibleVariables(Implementation(L_ARRAY2_RANGE_1))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(L_ARRAY2_RANGE_1))==(btrue);
  Abstract_List_Invariant(Implementation(L_ARRAY2_RANGE_1))==(arr_rge: LADR_minrge..LADR_maxrge --> (0..LADR_maxidx --> LADR_VALUE));
  Expanded_List_Invariant(Implementation(L_ARRAY2_RANGE_1))==(arr_rge: LADR_minrge..LADR_maxrge --> (0..LADR_maxidx --> LADR_VALUE));
  Context_List_Invariant(Implementation(L_ARRAY2_RANGE_1))==(btrue);
  List_Invariant(Implementation(L_ARRAY2_RANGE_1))==(btrue)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(L_ARRAY2_RANGE_1))==(btrue);
  Expanded_List_Assertions(Implementation(L_ARRAY2_RANGE_1))==(btrue);
  Context_List_Assertions(Implementation(L_ARRAY2_RANGE_1))==(btrue);
  List_Assertions(Implementation(L_ARRAY2_RANGE_1))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(L_ARRAY2_RANGE_1))==(@(arr_rge$0).(arr_rge$0: LADR_minrge..LADR_maxrge --> (0..LADR_maxidx --> LADR_VALUE) ==> arr_rge:=arr_rge$0));
  Context_List_Initialisation(Implementation(L_ARRAY2_RANGE_1))==(skip);
  List_Initialisation(Implementation(L_ARRAY2_RANGE_1))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(L_ARRAY2_RANGE_1))==(LADR_minrge,LADR_maxrge,LADR_maxidx,LADR_VALUE)
END
&
THEORY ListInstanciatedParametersX IS
  Precond_Instanciated_Parameters(Implementation(L_ARRAY2_RANGE_1),Machine(L_ARRAY1_RANGE))==(btrue);
  List_Instanciated_Parameters(Implementation(L_ARRAY2_RANGE_1),Machine(L_ARRAY1_RANGE))==(LADR_minrge,LADR_maxrge,LADR_maxidx,LADR_VALUE)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(L_ARRAY2_RANGE_1),Machine(L_ARRAY1_RANGE))==(LADR_maxidx: NAT1 & LADR_minrge: NAT & LADR_maxrge: NAT & LADR_minrge<LADR_maxrge & LADR_VALUE: FIN(INTEGER) & not(LADR_VALUE = {}));
  List_Constraints(Implementation(L_ARRAY2_RANGE_1))==(LADR_maxidx: NAT1 & LADR_minrge: NAT & LADR_maxrge: NAT & LADR_minrge<LADR_maxrge & LADR_VALUE: FIN(INTEGER) & not(LADR_VALUE = {}));
  List_Context_Constraints(Implementation(L_ARRAY2_RANGE_1))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(L_ARRAY2_RANGE_1))==(SWAP_RGE,RIGHT_SHIFT_RGE,LEFT_SHIFT_RGE,SEARCH_MIN_EQL_RGE,SEARCH_MAX_EQL_RGE,VAL_ARR_RGE,STR_ARR_RGE,COP_ARR_RGE,CMP_ARR_RGE,DUP_ARR_RGE,SET_ARR_RGE,PCOP_ARR_RGE,PCMP_ARR_RGE);
  List_Operations(Implementation(L_ARRAY2_RANGE_1))==(SWAP_RGE,RIGHT_SHIFT_RGE,LEFT_SHIFT_RGE,SEARCH_MIN_EQL_RGE,SEARCH_MAX_EQL_RGE,VAL_ARR_RGE,STR_ARR_RGE,COP_ARR_RGE,CMP_ARR_RGE,DUP_ARR_RGE,SET_ARR_RGE,PCOP_ARR_RGE,PCMP_ARR_RGE)
END
&
THEORY ListInputX IS
  List_Input(Implementation(L_ARRAY2_RANGE_1),PCMP_ARR_RGE)==(rng2,idx2,rng1,ii,jj);
  List_Input(Implementation(L_ARRAY2_RANGE_1),PCOP_ARR_RGE)==(dest,idx_dst,src,ii,jj);
  List_Input(Implementation(L_ARRAY2_RANGE_1),SET_ARR_RGE)==(range,ii,jj,vv);
  List_Input(Implementation(L_ARRAY2_RANGE_1),DUP_ARR_RGE)==(dest1,dest2,src);
  List_Input(Implementation(L_ARRAY2_RANGE_1),CMP_ARR_RGE)==(range1,range2);
  List_Input(Implementation(L_ARRAY2_RANGE_1),COP_ARR_RGE)==(dest,src);
  List_Input(Implementation(L_ARRAY2_RANGE_1),STR_ARR_RGE)==(range,index,value);
  List_Input(Implementation(L_ARRAY2_RANGE_1),VAL_ARR_RGE)==(range,index);
  List_Input(Implementation(L_ARRAY2_RANGE_1),SWAP_RGE)==(rng,ii,jj);
  List_Input(Implementation(L_ARRAY2_RANGE_1),RIGHT_SHIFT_RGE)==(rng,ii,jj,nn);
  List_Input(Implementation(L_ARRAY2_RANGE_1),LEFT_SHIFT_RGE)==(rng,ii,jj,nn);
  List_Input(Implementation(L_ARRAY2_RANGE_1),SEARCH_MIN_EQL_RGE)==(rng,ii,jj,vv);
  List_Input(Implementation(L_ARRAY2_RANGE_1),SEARCH_MAX_EQL_RGE)==(rng,ii,jj,vv)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(L_ARRAY2_RANGE_1),PCMP_ARR_RGE)==(idx,bb);
  List_Output(Implementation(L_ARRAY2_RANGE_1),PCOP_ARR_RGE)==(?);
  List_Output(Implementation(L_ARRAY2_RANGE_1),SET_ARR_RGE)==(?);
  List_Output(Implementation(L_ARRAY2_RANGE_1),DUP_ARR_RGE)==(?);
  List_Output(Implementation(L_ARRAY2_RANGE_1),CMP_ARR_RGE)==(bb);
  List_Output(Implementation(L_ARRAY2_RANGE_1),COP_ARR_RGE)==(?);
  List_Output(Implementation(L_ARRAY2_RANGE_1),STR_ARR_RGE)==(?);
  List_Output(Implementation(L_ARRAY2_RANGE_1),VAL_ARR_RGE)==(value);
  List_Output(Implementation(L_ARRAY2_RANGE_1),SWAP_RGE)==(?);
  List_Output(Implementation(L_ARRAY2_RANGE_1),RIGHT_SHIFT_RGE)==(?);
  List_Output(Implementation(L_ARRAY2_RANGE_1),LEFT_SHIFT_RGE)==(?);
  List_Output(Implementation(L_ARRAY2_RANGE_1),SEARCH_MIN_EQL_RGE)==(rr,bb);
  List_Output(Implementation(L_ARRAY2_RANGE_1),SEARCH_MAX_EQL_RGE)==(rr,bb)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(L_ARRAY2_RANGE_1),PCMP_ARR_RGE)==(idx,bb <-- PCMP_ARR_RGE(rng2,idx2,rng1,ii,jj));
  List_Header(Implementation(L_ARRAY2_RANGE_1),PCOP_ARR_RGE)==(PCOP_ARR_RGE(dest,idx_dst,src,ii,jj));
  List_Header(Implementation(L_ARRAY2_RANGE_1),SET_ARR_RGE)==(SET_ARR_RGE(range,ii,jj,vv));
  List_Header(Implementation(L_ARRAY2_RANGE_1),DUP_ARR_RGE)==(DUP_ARR_RGE(dest1,dest2,src));
  List_Header(Implementation(L_ARRAY2_RANGE_1),CMP_ARR_RGE)==(bb <-- CMP_ARR_RGE(range1,range2));
  List_Header(Implementation(L_ARRAY2_RANGE_1),COP_ARR_RGE)==(COP_ARR_RGE(dest,src));
  List_Header(Implementation(L_ARRAY2_RANGE_1),STR_ARR_RGE)==(STR_ARR_RGE(range,index,value));
  List_Header(Implementation(L_ARRAY2_RANGE_1),VAL_ARR_RGE)==(value <-- VAL_ARR_RGE(range,index));
  List_Header(Implementation(L_ARRAY2_RANGE_1),SWAP_RGE)==(SWAP_RGE(rng,ii,jj));
  List_Header(Implementation(L_ARRAY2_RANGE_1),RIGHT_SHIFT_RGE)==(RIGHT_SHIFT_RGE(rng,ii,jj,nn));
  List_Header(Implementation(L_ARRAY2_RANGE_1),LEFT_SHIFT_RGE)==(LEFT_SHIFT_RGE(rng,ii,jj,nn));
  List_Header(Implementation(L_ARRAY2_RANGE_1),SEARCH_MIN_EQL_RGE)==(rr,bb <-- SEARCH_MIN_EQL_RGE(rng,ii,jj,vv));
  List_Header(Implementation(L_ARRAY2_RANGE_1),SEARCH_MAX_EQL_RGE)==(rr,bb <-- SEARCH_MAX_EQL_RGE(rng,ii,jj,vv))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(L_ARRAY2_RANGE_1),PCMP_ARR_RGE)==(rng2: LADR_minrge..LADR_maxrge & idx2: 0..LADR_maxidx & rng1: LADR_minrge..LADR_maxrge & ii: 0..LADR_maxidx & jj: 0..LADR_maxidx & ii<=jj & idx2+jj-ii: 0..LADR_maxidx);
  List_Precondition(Implementation(L_ARRAY2_RANGE_1),PCMP_ARR_RGE)==(rng2: LADR_minrge..LADR_maxrge & idx2: 0..LADR_maxidx & rng1: LADR_minrge..LADR_maxrge & ii: 0..LADR_maxidx & jj: 0..LADR_maxidx & ii<=jj & idx2+jj-ii: 0..LADR_maxidx);
  Own_Precondition(Implementation(L_ARRAY2_RANGE_1),PCOP_ARR_RGE)==(dest: LADR_minrge..LADR_maxrge & idx_dst: 0..LADR_maxidx & src: LADR_minrge..LADR_maxrge & ii: 0..LADR_maxidx & jj: 0..LADR_maxidx & dest/=src & jj<=MAXINT-1 & ii<=jj & idx_dst+jj-ii: 0..LADR_maxidx);
  List_Precondition(Implementation(L_ARRAY2_RANGE_1),PCOP_ARR_RGE)==(dest: LADR_minrge..LADR_maxrge & idx_dst: 0..LADR_maxidx & src: LADR_minrge..LADR_maxrge & ii: 0..LADR_maxidx & jj: 0..LADR_maxidx & dest/=src & jj<=MAXINT-1 & ii<=jj & idx_dst+jj-ii: 0..LADR_maxidx);
  Own_Precondition(Implementation(L_ARRAY2_RANGE_1),SET_ARR_RGE)==(range: LADR_minrge..LADR_maxrge & ii: NAT & jj: NAT & jj/=MAXINT & ii..jj <: 0..LADR_maxidx & vv: LADR_VALUE);
  List_Precondition(Implementation(L_ARRAY2_RANGE_1),SET_ARR_RGE)==(range: LADR_minrge..LADR_maxrge & ii: NAT & jj: NAT & jj/=MAXINT & ii..jj <: 0..LADR_maxidx & vv: LADR_VALUE);
  Own_Precondition(Implementation(L_ARRAY2_RANGE_1),DUP_ARR_RGE)==(dest1: NAT & dest2: NAT & dest2/=MAXINT & dest1..dest2 <: LADR_minrge..LADR_maxrge & src: LADR_minrge..LADR_maxrge);
  List_Precondition(Implementation(L_ARRAY2_RANGE_1),DUP_ARR_RGE)==(dest1: NAT & dest2: NAT & dest2/=MAXINT & dest1..dest2 <: LADR_minrge..LADR_maxrge & src: LADR_minrge..LADR_maxrge);
  Own_Precondition(Implementation(L_ARRAY2_RANGE_1),CMP_ARR_RGE)==(range1: LADR_minrge..LADR_maxrge & range2: LADR_minrge..LADR_maxrge);
  List_Precondition(Implementation(L_ARRAY2_RANGE_1),CMP_ARR_RGE)==(range1: LADR_minrge..LADR_maxrge & range2: LADR_minrge..LADR_maxrge);
  Own_Precondition(Implementation(L_ARRAY2_RANGE_1),COP_ARR_RGE)==(dest: LADR_minrge..LADR_maxrge & src: LADR_minrge..LADR_maxrge);
  List_Precondition(Implementation(L_ARRAY2_RANGE_1),COP_ARR_RGE)==(dest: LADR_minrge..LADR_maxrge & src: LADR_minrge..LADR_maxrge);
  Own_Precondition(Implementation(L_ARRAY2_RANGE_1),STR_ARR_RGE)==(range: LADR_minrge..LADR_maxrge & index: 0..LADR_maxidx & value: LADR_VALUE);
  List_Precondition(Implementation(L_ARRAY2_RANGE_1),STR_ARR_RGE)==(range: LADR_minrge..LADR_maxrge & index: 0..LADR_maxidx & value: LADR_VALUE);
  Own_Precondition(Implementation(L_ARRAY2_RANGE_1),VAL_ARR_RGE)==(range: LADR_minrge..LADR_maxrge & index: 0..LADR_maxidx);
  List_Precondition(Implementation(L_ARRAY2_RANGE_1),VAL_ARR_RGE)==(range: LADR_minrge..LADR_maxrge & index: 0..LADR_maxidx);
  Own_Precondition(Implementation(L_ARRAY2_RANGE_1),SWAP_RGE)==(btrue);
  List_Precondition(Implementation(L_ARRAY2_RANGE_1),SWAP_RGE)==(rng: LADR_minrge..LADR_maxrge & ii: 0..LADR_maxidx & jj: 0..LADR_maxidx);
  Own_Precondition(Implementation(L_ARRAY2_RANGE_1),RIGHT_SHIFT_RGE)==(btrue);
  List_Precondition(Implementation(L_ARRAY2_RANGE_1),RIGHT_SHIFT_RGE)==(rng: LADR_minrge..LADR_maxrge & jj: 0..LADR_maxidx & ii: 0..LADR_maxidx & nn: 0..LADR_maxidx & jj+nn: 0..LADR_maxidx & ii<=jj);
  Own_Precondition(Implementation(L_ARRAY2_RANGE_1),LEFT_SHIFT_RGE)==(btrue);
  List_Precondition(Implementation(L_ARRAY2_RANGE_1),LEFT_SHIFT_RGE)==(rng: LADR_minrge..LADR_maxrge & jj: 0..LADR_maxidx & jj<=MAXINT-1 & ii: 0..LADR_maxidx & ii<=jj & nn: NAT & nn<=ii);
  Own_Precondition(Implementation(L_ARRAY2_RANGE_1),SEARCH_MIN_EQL_RGE)==(btrue);
  List_Precondition(Implementation(L_ARRAY2_RANGE_1),SEARCH_MIN_EQL_RGE)==(rng: LADR_minrge..LADR_maxrge & jj: 0..LADR_maxidx & ii: 0..LADR_maxidx & ii<=jj & vv: LADR_VALUE);
  Own_Precondition(Implementation(L_ARRAY2_RANGE_1),SEARCH_MAX_EQL_RGE)==(btrue);
  List_Precondition(Implementation(L_ARRAY2_RANGE_1),SEARCH_MAX_EQL_RGE)==(rng: LADR_minrge..LADR_maxrge & jj: 0..LADR_maxidx & ii: 0..LADR_maxidx & ii<=jj & vv: LADR_VALUE)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(L_ARRAY2_RANGE_1),SEARCH_MAX_EQL_RGE)==(rng: LADR_minrge..LADR_maxrge & jj: 0..LADR_maxidx & ii: 0..LADR_maxidx & ii<=jj & vv: LADR_VALUE | @ss.((jj: INT | rr:=jj);ss:=0;bb:=FALSE;WHILE ss = 0 DO @ww.((rng: LADR_minrge..LADR_maxrge & rr: 0..LADR_maxidx | ww:=arr_rge(rng)(rr));(ww = vv ==> ((1: INT | ss:=1);bb:=TRUE) [] not(ww = vv) ==> (rr = ii ==> (1: INT | ss:=1) [] not(rr = ii) ==> (rr-1: INT & rr: INT & 1: INT | rr:=rr-1)))) INVARIANT rr: NATURAL & ii<=rr & rr<=jj & ss: NATURAL & ss<=1 & bb: BOOL & (ss = 0 => (rr+1..jj<|arr_rge(rng))~[{vv}] = {} & not(rr+1 = ii) & bb = FALSE) & (ss = 1 => (rr+1..jj<|arr_rge(rng))~[{vv}] = {} & bb = bool(not((ii..jj<|arr_rge(rng))~[{vv}] = {}))) & (ss = 1 & bb = TRUE => arr_rge(rng)(rr) = vv) VARIANT 1+rr-ss END));
  Expanded_List_Substitution(Implementation(L_ARRAY2_RANGE_1),SEARCH_MIN_EQL_RGE)==(rng: LADR_minrge..LADR_maxrge & jj: 0..LADR_maxidx & ii: 0..LADR_maxidx & ii<=jj & vv: LADR_VALUE | @ss.((ii: INT | rr:=ii);ss:=0;bb:=FALSE;WHILE ss = 0 DO @ww.((rng: LADR_minrge..LADR_maxrge & rr: 0..LADR_maxidx | ww:=arr_rge(rng)(rr));(ww = vv ==> ((1: INT | ss:=1);bb:=TRUE) [] not(ww = vv) ==> (rr = jj ==> (1: INT | ss:=1) [] not(rr = jj) ==> (rr+1: INT & rr: INT & 1: INT | rr:=rr+1)))) INVARIANT rr: NATURAL & ii<=rr & rr<=jj & ss: NATURAL & ss<=1 & bb: BOOL & (ss = 0 => (ii..rr-1<|arr_rge(rng))~[{vv}] = {} & not(rr-1 = jj) & bb = FALSE) & (ss = 1 => (ii..rr-1<|arr_rge(rng))~[{vv}] = {} & bb = bool(not((ii..jj<|arr_rge(rng))~[{vv}] = {}))) & (ss = 1 & bb = TRUE => arr_rge(rng)(rr) = vv) VARIANT 1+jj-rr-ss END));
  Expanded_List_Substitution(Implementation(L_ARRAY2_RANGE_1),LEFT_SHIFT_RGE)==(rng: LADR_minrge..LADR_maxrge & jj: 0..LADR_maxidx & jj<=MAXINT-1 & ii: 0..LADR_maxidx & ii<=jj & nn: NAT & nn<=ii | @kk.(kk:=ii;WHILE kk<=jj DO @(ll,vv).((rng: LADR_minrge..LADR_maxrge & kk: 0..LADR_maxidx | vv:=arr_rge(rng)(kk));(kk-nn: INT & kk: INT & nn: INT | ll:=kk-nn);(rng: LADR_minrge..LADR_maxrge & ll: 0..LADR_maxidx & vv: LADR_VALUE | arr_rge:=arr_rge<+{rng|->(arr_rge(rng)<+{ll|->vv})});(kk+1: INT & kk: INT & 1: INT | kk:=kk+1)) INVARIANT kk: ii..jj+1 & arr_rge = arr_rge$0<+{rng|->(arr_rge$0(rng)<+%xx.(xx: 0..LADR_maxidx & xx+nn: ii..kk-1 | arr_rge$0(rng)(xx+nn)))} VARIANT jj+1-kk END));
  Expanded_List_Substitution(Implementation(L_ARRAY2_RANGE_1),RIGHT_SHIFT_RGE)==(rng: LADR_minrge..LADR_maxrge & jj: 0..LADR_maxidx & ii: 0..LADR_maxidx & nn: 0..LADR_maxidx & jj+nn: 0..LADR_maxidx & ii<=jj | @(kk,ss).(kk:=jj;ss:=0;WHILE ss = 0 DO @(ll,vv).((rng: LADR_minrge..LADR_maxrge & kk: 0..LADR_maxidx | vv:=arr_rge(rng)(kk));(kk+nn: INT & kk: INT & nn: INT | ll:=kk+nn);(rng: LADR_minrge..LADR_maxrge & ll: 0..LADR_maxidx & vv: LADR_VALUE | arr_rge:=arr_rge<+{rng|->(arr_rge(rng)<+{ll|->vv})});(kk = ii ==> (1: INT | ss:=1) [] not(kk = ii) ==> (kk-1: INT & kk: INT & 1: INT | kk:=kk-1))) INVARIANT kk: ii..jj & ss: NATURAL & ss<=1 & (ss = 0 => arr_rge = arr_rge$0<+{rng|->(arr_rge$0(rng)<+%xx.(xx: kk+1+nn..jj+nn | arr_rge$0(rng)(xx-nn)))}) & (ss = 1 => arr_rge = arr_rge$0<+{rng|->(arr_rge$0(rng)<+%xx.(xx: ii+nn..jj+nn | arr_rge$0(rng)(xx-nn)))}) VARIANT kk+1-ss END));
  Expanded_List_Substitution(Implementation(L_ARRAY2_RANGE_1),SWAP_RGE)==(rng: LADR_minrge..LADR_maxrge & ii: 0..LADR_maxidx & jj: 0..LADR_maxidx | @(vv,ww).((rng: LADR_minrge..LADR_maxrge & ii: 0..LADR_maxidx | vv:=arr_rge(rng)(ii));(rng: LADR_minrge..LADR_maxrge & jj: 0..LADR_maxidx | ww:=arr_rge(rng)(jj));(rng: LADR_minrge..LADR_maxrge & ii: 0..LADR_maxidx & ww: LADR_VALUE | arr_rge:=arr_rge<+{rng|->(arr_rge(rng)<+{ii|->ww})});(rng: LADR_minrge..LADR_maxrge & jj: 0..LADR_maxidx & vv: LADR_VALUE | arr_rge:=arr_rge<+{rng|->(arr_rge(rng)<+{jj|->vv})})));
  List_Substitution(Implementation(L_ARRAY2_RANGE_1),PCMP_ARR_RGE)==(ANY nidx,nbb,sol WHERE nidx: NAT & nbb: BOOL & sol = {xx | xx: ii..jj & arr_rge(rng1)(xx)/=arr_rge(rng2)(xx+idx2-ii)} & (sol/={} => nidx = min(sol)) & nbb = bool(sol/={}) THEN idx:=nidx || bb:=nbb END);
  Expanded_List_Substitution(Implementation(L_ARRAY2_RANGE_1),PCMP_ARR_RGE)==(rng2: LADR_minrge..LADR_maxrge & idx2: 0..LADR_maxidx & rng1: LADR_minrge..LADR_maxrge & ii: 0..LADR_maxidx & jj: 0..LADR_maxidx & ii<=jj & idx2+jj-ii: 0..LADR_maxidx | @(nidx,nbb,sol).(nidx: NAT & nbb: BOOL & sol = {xx | xx: ii..jj & arr_rge(rng1)(xx)/=arr_rge(rng2)(xx+idx2-ii)} & (sol/={} => nidx = min(sol)) & nbb = bool(sol/={}) ==> idx,bb:=nidx,nbb));
  List_Substitution(Implementation(L_ARRAY2_RANGE_1),PCOP_ARR_RGE)==(arr_rge(dest):=arr_rge(dest)<+%xx.(xx: idx_dst..idx_dst+jj-ii | arr_rge(src)(xx+ii-idx_dst)));
  Expanded_List_Substitution(Implementation(L_ARRAY2_RANGE_1),PCOP_ARR_RGE)==(dest: LADR_minrge..LADR_maxrge & idx_dst: 0..LADR_maxidx & src: LADR_minrge..LADR_maxrge & ii: 0..LADR_maxidx & jj: 0..LADR_maxidx & dest/=src & jj<=MAXINT-1 & ii<=jj & idx_dst+jj-ii: 0..LADR_maxidx | arr_rge:=arr_rge<+{dest|->(arr_rge(dest)<+%xx.(xx: idx_dst..idx_dst+jj-ii | arr_rge(src)(xx+ii-idx_dst)))});
  List_Substitution(Implementation(L_ARRAY2_RANGE_1),SET_ARR_RGE)==(arr_rge(range):=arr_rge(range)<+(ii..jj)*{vv});
  Expanded_List_Substitution(Implementation(L_ARRAY2_RANGE_1),SET_ARR_RGE)==(range: LADR_minrge..LADR_maxrge & ii: NAT & jj: NAT & jj/=MAXINT & ii..jj <: 0..LADR_maxidx & vv: LADR_VALUE | arr_rge:=arr_rge<+{range|->(arr_rge(range)<+(ii..jj)*{vv})});
  List_Substitution(Implementation(L_ARRAY2_RANGE_1),DUP_ARR_RGE)==(arr_rge:=arr_rge<+(dest1..dest2)*{arr_rge(src)});
  Expanded_List_Substitution(Implementation(L_ARRAY2_RANGE_1),DUP_ARR_RGE)==(dest1: NAT & dest2: NAT & dest2/=MAXINT & dest1..dest2 <: LADR_minrge..LADR_maxrge & src: LADR_minrge..LADR_maxrge | arr_rge:=arr_rge<+(dest1..dest2)*{arr_rge(src)});
  List_Substitution(Implementation(L_ARRAY2_RANGE_1),CMP_ARR_RGE)==(bb:=bool(arr_rge(range1) = arr_rge(range2)));
  Expanded_List_Substitution(Implementation(L_ARRAY2_RANGE_1),CMP_ARR_RGE)==(range1: LADR_minrge..LADR_maxrge & range2: LADR_minrge..LADR_maxrge | bb:=bool(arr_rge(range1) = arr_rge(range2)));
  List_Substitution(Implementation(L_ARRAY2_RANGE_1),COP_ARR_RGE)==(arr_rge:=arr_rge<+{dest|->arr_rge(src)});
  Expanded_List_Substitution(Implementation(L_ARRAY2_RANGE_1),COP_ARR_RGE)==(dest: LADR_minrge..LADR_maxrge & src: LADR_minrge..LADR_maxrge | arr_rge:=arr_rge<+{dest|->arr_rge(src)});
  List_Substitution(Implementation(L_ARRAY2_RANGE_1),STR_ARR_RGE)==(arr_rge(range)(index):=value);
  Expanded_List_Substitution(Implementation(L_ARRAY2_RANGE_1),STR_ARR_RGE)==(range: LADR_minrge..LADR_maxrge & index: 0..LADR_maxidx & value: LADR_VALUE | arr_rge:=arr_rge<+{range|->(arr_rge(range)<+{index|->value})});
  List_Substitution(Implementation(L_ARRAY2_RANGE_1),VAL_ARR_RGE)==(value:=arr_rge(range)(index));
  Expanded_List_Substitution(Implementation(L_ARRAY2_RANGE_1),VAL_ARR_RGE)==(range: LADR_minrge..LADR_maxrge & index: 0..LADR_maxidx | value:=arr_rge(range)(index));
  List_Substitution(Implementation(L_ARRAY2_RANGE_1),SWAP_RGE)==(VAR vv,ww IN vv <-- VAL_ARR_RGE(rng,ii);ww <-- VAL_ARR_RGE(rng,jj);STR_ARR_RGE(rng,ii,ww);STR_ARR_RGE(rng,jj,vv) END);
  List_Substitution(Implementation(L_ARRAY2_RANGE_1),RIGHT_SHIFT_RGE)==(VAR kk,ss IN kk:=jj;ss:=0;WHILE ss = 0 DO VAR ll,vv IN vv <-- VAL_ARR_RGE(rng,kk);ll:=kk+nn;STR_ARR_RGE(rng,ll,vv);IF kk = ii THEN ss:=1 ELSE kk:=kk-1 END END INVARIANT kk: ii..jj & ss: NATURAL & ss<=1 & (ss = 0 => arr_rge = arr_rge$0<+{rng|->(arr_rge$0(rng)<+%xx.(xx: kk+1+nn..jj+nn | arr_rge$0(rng)(xx-nn)))}) & (ss = 1 => arr_rge = arr_rge$0<+{rng|->(arr_rge$0(rng)<+%xx.(xx: ii+nn..jj+nn | arr_rge$0(rng)(xx-nn)))}) VARIANT kk+1-ss END END);
  List_Substitution(Implementation(L_ARRAY2_RANGE_1),LEFT_SHIFT_RGE)==(VAR kk IN kk:=ii;WHILE kk<=jj DO VAR ll,vv IN vv <-- VAL_ARR_RGE(rng,kk);ll:=kk-nn;STR_ARR_RGE(rng,ll,vv);kk:=kk+1 END INVARIANT kk: ii..jj+1 & arr_rge = arr_rge$0<+{rng|->(arr_rge$0(rng)<+%xx.(xx: 0..LADR_maxidx & xx+nn: ii..kk-1 | arr_rge$0(rng)(xx+nn)))} VARIANT jj+1-kk END END);
  List_Substitution(Implementation(L_ARRAY2_RANGE_1),SEARCH_MIN_EQL_RGE)==(VAR ss IN rr:=ii;ss:=0;bb:=FALSE;WHILE ss = 0 DO VAR ww IN ww <-- VAL_ARR_RGE(rng,rr);IF ww = vv THEN ss:=1;bb:=TRUE ELSIF rr = jj THEN ss:=1 ELSE rr:=rr+1 END END INVARIANT rr: NATURAL & ii<=rr & rr<=jj & ss: NATURAL & ss<=1 & bb: BOOL & (ss = 0 => (ii..rr-1<|arr_rge(rng))~[{vv}] = {} & not(rr-1 = jj) & bb = FALSE) & (ss = 1 => (ii..rr-1<|arr_rge(rng))~[{vv}] = {} & bb = bool(not((ii..jj<|arr_rge(rng))~[{vv}] = {}))) & (ss = 1 & bb = TRUE => arr_rge(rng)(rr) = vv) VARIANT 1+jj-rr-ss END END);
  List_Substitution(Implementation(L_ARRAY2_RANGE_1),SEARCH_MAX_EQL_RGE)==(VAR ss IN rr:=jj;ss:=0;bb:=FALSE;WHILE ss = 0 DO VAR ww IN ww <-- VAL_ARR_RGE(rng,rr);IF ww = vv THEN ss:=1;bb:=TRUE ELSIF rr = ii THEN ss:=1 ELSE rr:=rr-1 END END INVARIANT rr: NATURAL & ii<=rr & rr<=jj & ss: NATURAL & ss<=1 & bb: BOOL & (ss = 0 => (rr+1..jj<|arr_rge(rng))~[{vv}] = {} & not(rr+1 = ii) & bb = FALSE) & (ss = 1 => (rr+1..jj<|arr_rge(rng))~[{vv}] = {} & bb = bool(not((ii..jj<|arr_rge(rng))~[{vv}] = {}))) & (ss = 1 & bb = TRUE => arr_rge(rng)(rr) = vv) VARIANT 1+rr-ss END END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(L_ARRAY2_RANGE_1))==(?);
  Inherited_List_Constants(Implementation(L_ARRAY2_RANGE_1))==(?);
  List_Constants(Implementation(L_ARRAY2_RANGE_1))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(L_ARRAY2_RANGE_1))==(?);
  Context_List_Defered(Implementation(L_ARRAY2_RANGE_1))==(?);
  Context_List_Sets(Implementation(L_ARRAY2_RANGE_1))==(?);
  List_Own_Enumerated(Implementation(L_ARRAY2_RANGE_1))==(?);
  List_Valuable_Sets(Implementation(L_ARRAY2_RANGE_1))==(?);
  Inherited_List_Enumerated(Implementation(L_ARRAY2_RANGE_1))==(?);
  Inherited_List_Defered(Implementation(L_ARRAY2_RANGE_1))==(?);
  Inherited_List_Sets(Implementation(L_ARRAY2_RANGE_1))==(?);
  List_Enumerated(Implementation(L_ARRAY2_RANGE_1))==(?);
  List_Defered(Implementation(L_ARRAY2_RANGE_1))==(?);
  List_Sets(Implementation(L_ARRAY2_RANGE_1))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(L_ARRAY2_RANGE_1))==(?);
  Expanded_List_HiddenConstants(Implementation(L_ARRAY2_RANGE_1))==(?);
  List_HiddenConstants(Implementation(L_ARRAY2_RANGE_1))==(?);
  External_List_HiddenConstants(Implementation(L_ARRAY2_RANGE_1))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(L_ARRAY2_RANGE_1))==(btrue);
  Context_List_Properties(Implementation(L_ARRAY2_RANGE_1))==(btrue);
  Inherited_List_Properties(Implementation(L_ARRAY2_RANGE_1))==(btrue);
  List_Properties(Implementation(L_ARRAY2_RANGE_1))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(L_ARRAY2_RANGE_1))==(aa: aa);
  List_Values(Implementation(L_ARRAY2_RANGE_1))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(L_ARRAY2_RANGE_1),Machine(L_ARRAY1_RANGE))==(VAL_ARR_RGE,STR_ARR_RGE,COP_ARR_RGE,CMP_ARR_RGE,DUP_ARR_RGE,SET_ARR_RGE,PCOP_ARR_RGE,PCMP_ARR_RGE)
END
&
THEORY InheritedEnvX IS
  Operations(Implementation(L_ARRAY2_RANGE_1))==(Type(SEARCH_MAX_EQL_RGE) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*atype(LADR_VALUE,?,?));Type(SEARCH_MIN_EQL_RGE) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*atype(LADR_VALUE,?,?));Type(LEFT_SHIFT_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(RIGHT_SHIFT_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SWAP_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(PCMP_ARR_RGE) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(PCOP_ARR_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SET_ARR_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*atype(LADR_VALUE,?,?));Type(DUP_ARR_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(CMP_ARR_RGE) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(COP_ARR_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(STR_ARR_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*atype(LADR_VALUE,?,?));Type(VAL_ARR_RGE) == Cst(atype(LADR_VALUE,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(L_ARRAY2_RANGE_1)) == (? | ? | ? | arr_rge | SWAP_RGE,RIGHT_SHIFT_RGE,LEFT_SHIFT_RGE,SEARCH_MIN_EQL_RGE,SEARCH_MAX_EQL_RGE | ? | imported(Machine(L_ARRAY1_RANGE)) | LADR_minrge,LADR_maxrge,LADR_maxidx,LADR_VALUE | L_ARRAY2_RANGE_1);
  List_Of_HiddenCst_Ids(Implementation(L_ARRAY2_RANGE_1)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(L_ARRAY2_RANGE_1)) == (?);
  List_Of_VisibleVar_Ids(Implementation(L_ARRAY2_RANGE_1)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(L_ARRAY2_RANGE_1)) == (?: ?);
  List_Of_Ids(Machine(L_ARRAY1_RANGE)) == (? | ? | arr_rge | ? | VAL_ARR_RGE,STR_ARR_RGE,COP_ARR_RGE,CMP_ARR_RGE,DUP_ARR_RGE,SET_ARR_RGE,PCOP_ARR_RGE,PCMP_ARR_RGE | ? | ? | LAUR_minrge,LAUR_maxrge,LAUR_maxidx,LAUR_VALUE | L_ARRAY1_RANGE);
  List_Of_HiddenCst_Ids(Machine(L_ARRAY1_RANGE)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(L_ARRAY1_RANGE)) == (?);
  List_Of_VisibleVar_Ids(Machine(L_ARRAY1_RANGE)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(L_ARRAY1_RANGE)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Implementation(L_ARRAY2_RANGE_1)) == (Type(LADR_VALUE) == Prm(SetOf(atype(LADR_VALUE,?,?)));Type(LADR_maxidx) == Prm(btype(INTEGER,?,?));Type(LADR_maxrge) == Prm(btype(INTEGER,?,?));Type(LADR_minrge) == Prm(btype(INTEGER,?,?)))
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(L_ARRAY2_RANGE_1),SWAP_RGE, 1) == (Type(vv) == Lvl(atype(LADR_VALUE,?,?));Type(ww) == Lvl(atype(LADR_VALUE,?,?)));
  Variables_Loc(Implementation(L_ARRAY2_RANGE_1),RIGHT_SHIFT_RGE, 2) == (Type(ll) == Lvl(btype(INTEGER,?,?));Type(vv) == Lvl(atype(LADR_VALUE,?,?)));
  Variables_Loc(Implementation(L_ARRAY2_RANGE_1),RIGHT_SHIFT_RGE, 1) == (Type(kk) == Lvl(btype(INTEGER,?,?));Type(ss) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(L_ARRAY2_RANGE_1),LEFT_SHIFT_RGE, 2) == (Type(ll) == Lvl(btype(INTEGER,?,?));Type(vv) == Lvl(atype(LADR_VALUE,?,?)));
  Variables_Loc(Implementation(L_ARRAY2_RANGE_1),LEFT_SHIFT_RGE, 1) == (Type(kk) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(L_ARRAY2_RANGE_1),SEARCH_MIN_EQL_RGE, 2) == (Type(ww) == Lvl(atype(LADR_VALUE,?,?)));
  Variables_Loc(Implementation(L_ARRAY2_RANGE_1),SEARCH_MIN_EQL_RGE, 1) == (Type(ss) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(L_ARRAY2_RANGE_1),SEARCH_MAX_EQL_RGE, 2) == (Type(ww) == Lvl(atype(LADR_VALUE,?,?)));
  Variables_Loc(Implementation(L_ARRAY2_RANGE_1),SEARCH_MAX_EQL_RGE, 1) == (Type(ss) == Lvl(btype(INTEGER,?,?)))
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
  List_Local_Operations(Implementation(L_ARRAY2_RANGE_1))==(?)
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
  TypingPredicate(Implementation(L_ARRAY2_RANGE_1))==(btrue)
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(L_ARRAY2_RANGE_1),Machine(L_ARRAY1_RANGE))==(arr_rge);
  ImportedVisVariablesList(Implementation(L_ARRAY2_RANGE_1),Machine(L_ARRAY1_RANGE))==(?)
END
&
THEORY ListLocalOpInvariantX END
)
