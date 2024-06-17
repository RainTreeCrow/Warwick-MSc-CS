Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(L_ARRAY5_RANGE_1))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(L_ARRAY5_RANGE_1))==(Machine(L_ARRAY5_RANGE));
  Level(Implementation(L_ARRAY5_RANGE_1))==(1);
  Upper_Level(Implementation(L_ARRAY5_RANGE_1))==(Machine(L_ARRAY5_RANGE))
END
&
THEORY LoadedStructureX IS
  Implementation(L_ARRAY5_RANGE_1)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(L_ARRAY5_RANGE_1))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(L_ARRAY5_RANGE_1))==(L_ARRAY4_RANGE);
  Inherited_List_Includes(Implementation(L_ARRAY5_RANGE_1))==(L_ARRAY4_RANGE)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(L_ARRAY5_RANGE_1))==(VAL_ARR_RGE,STR_ARR_RGE,COP_ARR_RGE,CMP_ARR_RGE,DUP_ARR_RGE,SET_ARR_RGE,PCOP_ARR_RGE,PCMP_ARR_RGE,SWAP_RGE,RIGHT_SHIFT_RGE,LEFT_SHIFT_RGE,SEARCH_MIN_EQL_RGE,SEARCH_MAX_EQL_RGE,REVERSE_RGE,SEARCH_MIN_GEQ_RGE)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(L_ARRAY5_RANGE_1))==(L_ARRAY4_RANGE)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(L_ARRAY5_RANGE_1))==(?);
  Context_List_Variables(Implementation(L_ARRAY5_RANGE_1))==(?);
  Abstract_List_Variables(Implementation(L_ARRAY5_RANGE_1))==(arr_rge);
  Local_List_Variables(Implementation(L_ARRAY5_RANGE_1))==(?);
  List_Variables(Implementation(L_ARRAY5_RANGE_1))==(arr_rge);
  External_List_Variables(Implementation(L_ARRAY5_RANGE_1))==(arr_rge)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(L_ARRAY5_RANGE_1))==(?);
  Abstract_List_VisibleVariables(Implementation(L_ARRAY5_RANGE_1))==(?);
  External_List_VisibleVariables(Implementation(L_ARRAY5_RANGE_1))==(?);
  Expanded_List_VisibleVariables(Implementation(L_ARRAY5_RANGE_1))==(?);
  List_VisibleVariables(Implementation(L_ARRAY5_RANGE_1))==(?);
  Internal_List_VisibleVariables(Implementation(L_ARRAY5_RANGE_1))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(L_ARRAY5_RANGE_1))==(btrue);
  Abstract_List_Invariant(Implementation(L_ARRAY5_RANGE_1))==(arr_rge: LACR_minrge..LACR_maxrge --> (0..LACR_maxidx --> LACR_minval..LACR_maxval));
  Expanded_List_Invariant(Implementation(L_ARRAY5_RANGE_1))==(arr_rge: LACR_minrge..LACR_maxrge --> (0..LACR_maxidx --> LACR_minval..LACR_maxval));
  Context_List_Invariant(Implementation(L_ARRAY5_RANGE_1))==(btrue);
  List_Invariant(Implementation(L_ARRAY5_RANGE_1))==(btrue)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(L_ARRAY5_RANGE_1))==(btrue);
  Expanded_List_Assertions(Implementation(L_ARRAY5_RANGE_1))==(btrue);
  Context_List_Assertions(Implementation(L_ARRAY5_RANGE_1))==(btrue);
  List_Assertions(Implementation(L_ARRAY5_RANGE_1))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(L_ARRAY5_RANGE_1))==(@(arr_rge$0).(arr_rge$0: LACR_minrge..LACR_maxrge --> (0..LACR_maxidx --> LACR_minval..LACR_maxval) ==> arr_rge:=arr_rge$0));
  Context_List_Initialisation(Implementation(L_ARRAY5_RANGE_1))==(skip);
  List_Initialisation(Implementation(L_ARRAY5_RANGE_1))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(L_ARRAY5_RANGE_1))==(LACR_minrge,LACR_maxrge,LACR_maxidx,LACR_minval,LACR_maxval)
END
&
THEORY ListInstanciatedParametersX IS
  Precond_Instanciated_Parameters(Implementation(L_ARRAY5_RANGE_1),Machine(L_ARRAY4_RANGE))==(btrue);
  List_Instanciated_Parameters(Implementation(L_ARRAY5_RANGE_1),Machine(L_ARRAY4_RANGE))==(LACR_minrge,LACR_maxrge,LACR_maxidx,LACR_minval,LACR_maxval)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(L_ARRAY5_RANGE_1),Machine(L_ARRAY4_RANGE))==(LACR_maxidx: NAT1 & LACR_minrge: NAT & LACR_maxrge: NAT & LACR_minval: NAT & LACR_maxval: NAT & LACR_minrge<LACR_maxrge & LACR_minval<=LACR_maxval);
  List_Constraints(Implementation(L_ARRAY5_RANGE_1))==(LACR_maxidx: NAT1 & LACR_minrge: NAT & LACR_maxrge: NAT & LACR_minval: NAT & LACR_maxval: NAT & LACR_minrge<LACR_maxrge & LACR_minval<=LACR_maxval);
  List_Context_Constraints(Implementation(L_ARRAY5_RANGE_1))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(L_ARRAY5_RANGE_1))==(ASCENDING_SORT_RGE,VAL_ARR_RGE,STR_ARR_RGE,COP_ARR_RGE,CMP_ARR_RGE,DUP_ARR_RGE,SET_ARR_RGE,PCOP_ARR_RGE,PCMP_ARR_RGE,SWAP_RGE,RIGHT_SHIFT_RGE,LEFT_SHIFT_RGE,SEARCH_MIN_EQL_RGE,SEARCH_MAX_EQL_RGE,REVERSE_RGE,SEARCH_MIN_GEQ_RGE);
  List_Operations(Implementation(L_ARRAY5_RANGE_1))==(ASCENDING_SORT_RGE,VAL_ARR_RGE,STR_ARR_RGE,COP_ARR_RGE,CMP_ARR_RGE,DUP_ARR_RGE,SET_ARR_RGE,PCOP_ARR_RGE,PCMP_ARR_RGE,SWAP_RGE,RIGHT_SHIFT_RGE,LEFT_SHIFT_RGE,SEARCH_MIN_EQL_RGE,SEARCH_MAX_EQL_RGE,REVERSE_RGE,SEARCH_MIN_GEQ_RGE)
END
&
THEORY ListInputX IS
  List_Input(Implementation(L_ARRAY5_RANGE_1),SEARCH_MIN_GEQ_RGE)==(rng,jj,kk,vv);
  List_Input(Implementation(L_ARRAY5_RANGE_1),REVERSE_RGE)==(rng,ii,jj);
  List_Input(Implementation(L_ARRAY5_RANGE_1),SEARCH_MAX_EQL_RGE)==(rng,ii,jj,vv);
  List_Input(Implementation(L_ARRAY5_RANGE_1),SEARCH_MIN_EQL_RGE)==(rng,ii,jj,vv);
  List_Input(Implementation(L_ARRAY5_RANGE_1),LEFT_SHIFT_RGE)==(rng,ii,jj,nn);
  List_Input(Implementation(L_ARRAY5_RANGE_1),RIGHT_SHIFT_RGE)==(rng,ii,jj,nn);
  List_Input(Implementation(L_ARRAY5_RANGE_1),SWAP_RGE)==(rng,ii,jj);
  List_Input(Implementation(L_ARRAY5_RANGE_1),PCMP_ARR_RGE)==(rng2,idx2,rng1,ii,jj);
  List_Input(Implementation(L_ARRAY5_RANGE_1),PCOP_ARR_RGE)==(dest,idx_dst,src,ii,jj);
  List_Input(Implementation(L_ARRAY5_RANGE_1),SET_ARR_RGE)==(range,ii,jj,vv);
  List_Input(Implementation(L_ARRAY5_RANGE_1),DUP_ARR_RGE)==(dest1,dest2,src);
  List_Input(Implementation(L_ARRAY5_RANGE_1),CMP_ARR_RGE)==(range1,range2);
  List_Input(Implementation(L_ARRAY5_RANGE_1),COP_ARR_RGE)==(dest,src);
  List_Input(Implementation(L_ARRAY5_RANGE_1),STR_ARR_RGE)==(range,index,value);
  List_Input(Implementation(L_ARRAY5_RANGE_1),VAL_ARR_RGE)==(range,index);
  List_Input(Implementation(L_ARRAY5_RANGE_1),ASCENDING_SORT_RGE)==(rng,ii,jj)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(L_ARRAY5_RANGE_1),SEARCH_MIN_GEQ_RGE)==(ii,bb);
  List_Output(Implementation(L_ARRAY5_RANGE_1),REVERSE_RGE)==(?);
  List_Output(Implementation(L_ARRAY5_RANGE_1),SEARCH_MAX_EQL_RGE)==(rr,bb);
  List_Output(Implementation(L_ARRAY5_RANGE_1),SEARCH_MIN_EQL_RGE)==(rr,bb);
  List_Output(Implementation(L_ARRAY5_RANGE_1),LEFT_SHIFT_RGE)==(?);
  List_Output(Implementation(L_ARRAY5_RANGE_1),RIGHT_SHIFT_RGE)==(?);
  List_Output(Implementation(L_ARRAY5_RANGE_1),SWAP_RGE)==(?);
  List_Output(Implementation(L_ARRAY5_RANGE_1),PCMP_ARR_RGE)==(idx,bb);
  List_Output(Implementation(L_ARRAY5_RANGE_1),PCOP_ARR_RGE)==(?);
  List_Output(Implementation(L_ARRAY5_RANGE_1),SET_ARR_RGE)==(?);
  List_Output(Implementation(L_ARRAY5_RANGE_1),DUP_ARR_RGE)==(?);
  List_Output(Implementation(L_ARRAY5_RANGE_1),CMP_ARR_RGE)==(bb);
  List_Output(Implementation(L_ARRAY5_RANGE_1),COP_ARR_RGE)==(?);
  List_Output(Implementation(L_ARRAY5_RANGE_1),STR_ARR_RGE)==(?);
  List_Output(Implementation(L_ARRAY5_RANGE_1),VAL_ARR_RGE)==(value);
  List_Output(Implementation(L_ARRAY5_RANGE_1),ASCENDING_SORT_RGE)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(L_ARRAY5_RANGE_1),SEARCH_MIN_GEQ_RGE)==(ii,bb <-- SEARCH_MIN_GEQ_RGE(rng,jj,kk,vv));
  List_Header(Implementation(L_ARRAY5_RANGE_1),REVERSE_RGE)==(REVERSE_RGE(rng,ii,jj));
  List_Header(Implementation(L_ARRAY5_RANGE_1),SEARCH_MAX_EQL_RGE)==(rr,bb <-- SEARCH_MAX_EQL_RGE(rng,ii,jj,vv));
  List_Header(Implementation(L_ARRAY5_RANGE_1),SEARCH_MIN_EQL_RGE)==(rr,bb <-- SEARCH_MIN_EQL_RGE(rng,ii,jj,vv));
  List_Header(Implementation(L_ARRAY5_RANGE_1),LEFT_SHIFT_RGE)==(LEFT_SHIFT_RGE(rng,ii,jj,nn));
  List_Header(Implementation(L_ARRAY5_RANGE_1),RIGHT_SHIFT_RGE)==(RIGHT_SHIFT_RGE(rng,ii,jj,nn));
  List_Header(Implementation(L_ARRAY5_RANGE_1),SWAP_RGE)==(SWAP_RGE(rng,ii,jj));
  List_Header(Implementation(L_ARRAY5_RANGE_1),PCMP_ARR_RGE)==(idx,bb <-- PCMP_ARR_RGE(rng2,idx2,rng1,ii,jj));
  List_Header(Implementation(L_ARRAY5_RANGE_1),PCOP_ARR_RGE)==(PCOP_ARR_RGE(dest,idx_dst,src,ii,jj));
  List_Header(Implementation(L_ARRAY5_RANGE_1),SET_ARR_RGE)==(SET_ARR_RGE(range,ii,jj,vv));
  List_Header(Implementation(L_ARRAY5_RANGE_1),DUP_ARR_RGE)==(DUP_ARR_RGE(dest1,dest2,src));
  List_Header(Implementation(L_ARRAY5_RANGE_1),CMP_ARR_RGE)==(bb <-- CMP_ARR_RGE(range1,range2));
  List_Header(Implementation(L_ARRAY5_RANGE_1),COP_ARR_RGE)==(COP_ARR_RGE(dest,src));
  List_Header(Implementation(L_ARRAY5_RANGE_1),STR_ARR_RGE)==(STR_ARR_RGE(range,index,value));
  List_Header(Implementation(L_ARRAY5_RANGE_1),VAL_ARR_RGE)==(value <-- VAL_ARR_RGE(range,index));
  List_Header(Implementation(L_ARRAY5_RANGE_1),ASCENDING_SORT_RGE)==(ASCENDING_SORT_RGE(rng,ii,jj))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(L_ARRAY5_RANGE_1),SEARCH_MIN_GEQ_RGE)==(rng: LACR_minrge..LACR_maxrge & kk: 0..LACR_maxidx & kk/=MAXINT & jj: 0..LACR_maxidx & vv: LACR_minval..LACR_maxval & jj<=kk);
  List_Precondition(Implementation(L_ARRAY5_RANGE_1),SEARCH_MIN_GEQ_RGE)==(rng: LACR_minrge..LACR_maxrge & kk: 0..LACR_maxidx & kk/=MAXINT & jj: 0..LACR_maxidx & vv: LACR_minval..LACR_maxval & jj<=kk);
  Own_Precondition(Implementation(L_ARRAY5_RANGE_1),REVERSE_RGE)==(rng: LACR_minrge..LACR_maxrge & jj: 0..LACR_maxidx & ii: 0..LACR_maxidx);
  List_Precondition(Implementation(L_ARRAY5_RANGE_1),REVERSE_RGE)==(rng: LACR_minrge..LACR_maxrge & jj: 0..LACR_maxidx & ii: 0..LACR_maxidx);
  Own_Precondition(Implementation(L_ARRAY5_RANGE_1),SEARCH_MAX_EQL_RGE)==(rng: LACR_minrge..LACR_maxrge & jj: 0..LACR_maxidx & ii: 0..LACR_maxidx & ii<=jj & vv: LACR_minval..LACR_maxval);
  List_Precondition(Implementation(L_ARRAY5_RANGE_1),SEARCH_MAX_EQL_RGE)==(rng: LACR_minrge..LACR_maxrge & jj: 0..LACR_maxidx & ii: 0..LACR_maxidx & ii<=jj & vv: LACR_minval..LACR_maxval);
  Own_Precondition(Implementation(L_ARRAY5_RANGE_1),SEARCH_MIN_EQL_RGE)==(rng: LACR_minrge..LACR_maxrge & jj: 0..LACR_maxidx & ii: 0..LACR_maxidx & ii<=jj & vv: LACR_minval..LACR_maxval);
  List_Precondition(Implementation(L_ARRAY5_RANGE_1),SEARCH_MIN_EQL_RGE)==(rng: LACR_minrge..LACR_maxrge & jj: 0..LACR_maxidx & ii: 0..LACR_maxidx & ii<=jj & vv: LACR_minval..LACR_maxval);
  Own_Precondition(Implementation(L_ARRAY5_RANGE_1),LEFT_SHIFT_RGE)==(rng: LACR_minrge..LACR_maxrge & jj: 0..LACR_maxidx & jj<=MAXINT-1 & ii: 0..LACR_maxidx & ii<=jj & nn: NAT & nn<=ii);
  List_Precondition(Implementation(L_ARRAY5_RANGE_1),LEFT_SHIFT_RGE)==(rng: LACR_minrge..LACR_maxrge & jj: 0..LACR_maxidx & jj<=MAXINT-1 & ii: 0..LACR_maxidx & ii<=jj & nn: NAT & nn<=ii);
  Own_Precondition(Implementation(L_ARRAY5_RANGE_1),RIGHT_SHIFT_RGE)==(rng: LACR_minrge..LACR_maxrge & jj: 0..LACR_maxidx & ii: 0..LACR_maxidx & nn: 0..LACR_maxidx & jj+nn: 0..LACR_maxidx & ii<=jj);
  List_Precondition(Implementation(L_ARRAY5_RANGE_1),RIGHT_SHIFT_RGE)==(rng: LACR_minrge..LACR_maxrge & jj: 0..LACR_maxidx & ii: 0..LACR_maxidx & nn: 0..LACR_maxidx & jj+nn: 0..LACR_maxidx & ii<=jj);
  Own_Precondition(Implementation(L_ARRAY5_RANGE_1),SWAP_RGE)==(rng: LACR_minrge..LACR_maxrge & ii: 0..LACR_maxidx & jj: 0..LACR_maxidx);
  List_Precondition(Implementation(L_ARRAY5_RANGE_1),SWAP_RGE)==(rng: LACR_minrge..LACR_maxrge & ii: 0..LACR_maxidx & jj: 0..LACR_maxidx);
  Own_Precondition(Implementation(L_ARRAY5_RANGE_1),PCMP_ARR_RGE)==(rng2: LACR_minrge..LACR_maxrge & idx2: 0..LACR_maxidx & rng1: LACR_minrge..LACR_maxrge & ii: 0..LACR_maxidx & jj: 0..LACR_maxidx & ii<=jj & idx2+jj-ii: 0..LACR_maxidx);
  List_Precondition(Implementation(L_ARRAY5_RANGE_1),PCMP_ARR_RGE)==(rng2: LACR_minrge..LACR_maxrge & idx2: 0..LACR_maxidx & rng1: LACR_minrge..LACR_maxrge & ii: 0..LACR_maxidx & jj: 0..LACR_maxidx & ii<=jj & idx2+jj-ii: 0..LACR_maxidx);
  Own_Precondition(Implementation(L_ARRAY5_RANGE_1),PCOP_ARR_RGE)==(dest: LACR_minrge..LACR_maxrge & idx_dst: 0..LACR_maxidx & src: LACR_minrge..LACR_maxrge & ii: 0..LACR_maxidx & jj: 0..LACR_maxidx & dest/=src & jj<=MAXINT-1 & ii<=jj & idx_dst+jj-ii: 0..LACR_maxidx);
  List_Precondition(Implementation(L_ARRAY5_RANGE_1),PCOP_ARR_RGE)==(dest: LACR_minrge..LACR_maxrge & idx_dst: 0..LACR_maxidx & src: LACR_minrge..LACR_maxrge & ii: 0..LACR_maxidx & jj: 0..LACR_maxidx & dest/=src & jj<=MAXINT-1 & ii<=jj & idx_dst+jj-ii: 0..LACR_maxidx);
  Own_Precondition(Implementation(L_ARRAY5_RANGE_1),SET_ARR_RGE)==(range: LACR_minrge..LACR_maxrge & ii: NAT & jj: NAT & jj/=MAXINT & ii..jj <: 0..LACR_maxidx & vv: LACR_minval..LACR_maxval);
  List_Precondition(Implementation(L_ARRAY5_RANGE_1),SET_ARR_RGE)==(range: LACR_minrge..LACR_maxrge & ii: NAT & jj: NAT & jj/=MAXINT & ii..jj <: 0..LACR_maxidx & vv: LACR_minval..LACR_maxval);
  Own_Precondition(Implementation(L_ARRAY5_RANGE_1),DUP_ARR_RGE)==(dest1: NAT & dest2: NAT & dest2/=MAXINT & dest1..dest2 <: LACR_minrge..LACR_maxrge & src: LACR_minrge..LACR_maxrge);
  List_Precondition(Implementation(L_ARRAY5_RANGE_1),DUP_ARR_RGE)==(dest1: NAT & dest2: NAT & dest2/=MAXINT & dest1..dest2 <: LACR_minrge..LACR_maxrge & src: LACR_minrge..LACR_maxrge);
  Own_Precondition(Implementation(L_ARRAY5_RANGE_1),CMP_ARR_RGE)==(range1: LACR_minrge..LACR_maxrge & range2: LACR_minrge..LACR_maxrge);
  List_Precondition(Implementation(L_ARRAY5_RANGE_1),CMP_ARR_RGE)==(range1: LACR_minrge..LACR_maxrge & range2: LACR_minrge..LACR_maxrge);
  Own_Precondition(Implementation(L_ARRAY5_RANGE_1),COP_ARR_RGE)==(dest: LACR_minrge..LACR_maxrge & src: LACR_minrge..LACR_maxrge);
  List_Precondition(Implementation(L_ARRAY5_RANGE_1),COP_ARR_RGE)==(dest: LACR_minrge..LACR_maxrge & src: LACR_minrge..LACR_maxrge);
  Own_Precondition(Implementation(L_ARRAY5_RANGE_1),STR_ARR_RGE)==(range: LACR_minrge..LACR_maxrge & index: 0..LACR_maxidx & value: LACR_minval..LACR_maxval);
  List_Precondition(Implementation(L_ARRAY5_RANGE_1),STR_ARR_RGE)==(range: LACR_minrge..LACR_maxrge & index: 0..LACR_maxidx & value: LACR_minval..LACR_maxval);
  Own_Precondition(Implementation(L_ARRAY5_RANGE_1),VAL_ARR_RGE)==(range: LACR_minrge..LACR_maxrge & index: 0..LACR_maxidx);
  List_Precondition(Implementation(L_ARRAY5_RANGE_1),VAL_ARR_RGE)==(range: LACR_minrge..LACR_maxrge & index: 0..LACR_maxidx);
  Own_Precondition(Implementation(L_ARRAY5_RANGE_1),ASCENDING_SORT_RGE)==(btrue);
  List_Precondition(Implementation(L_ARRAY5_RANGE_1),ASCENDING_SORT_RGE)==(rng: LACR_minrge..LACR_maxrge & jj: 0..LACR_maxidx & jj<=MAXINT-1 & ii: 0..LACR_maxidx & ii<=MAXINT-1)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(L_ARRAY5_RANGE_1),ASCENDING_SORT_RGE)==(rng: LACR_minrge..LACR_maxrge & jj: 0..LACR_maxidx & jj<=MAXINT-1 & ii: 0..LACR_maxidx & ii<=MAXINT-1 | @kk.((ii+1: INT & ii: INT & 1: INT | kk:=ii+1);WHILE kk<=jj DO @(vv,nn,ll,bb).((rng: LACR_minrge..LACR_maxrge & kk: 0..LACR_maxidx | vv:=arr_rge(rng)(kk));(kk-1: INT & kk: INT & 1: INT | ll:=kk-1);(rng: LACR_minrge..LACR_maxrge & ll: 0..LACR_maxidx & ll/=MAXINT & ii: 0..LACR_maxidx & vv: LACR_minval..LACR_maxval & ii<=ll | @res.(res = min({xx | xx: ii..ll & arr_rge(rng)(xx)>=vv}\/{ll+1}) ==> nn,bb:=res,bool(res/=ll+1)));(bb = TRUE ==> ((rng: LACR_minrge..LACR_maxrge & ll: 0..LACR_maxidx & nn: 0..LACR_maxidx & 1: 0..LACR_maxidx & ll+1: 0..LACR_maxidx & nn<=ll | arr_rge:=arr_rge<+{rng|->(arr_rge(rng)<+%xx.(xx: nn+1..ll+1 | arr_rge(rng)(xx-1)))});(rng: LACR_minrge..LACR_maxrge & nn: 0..LACR_maxidx & vv: LACR_minval..LACR_maxval | arr_rge:=arr_rge<+{rng|->(arr_rge(rng)<+{nn|->vv})})) [] not(bb = TRUE) ==> skip);(kk+1: INT & kk: INT & 1: INT | kk:=kk+1)) INVARIANT kk: NATURAL & ii+1<=kk & (not(kk = ii+1) => kk<=jj+1) & !xx.(xx: NATURAL & xx>=ii & xx+1<kk => arr_rge(rng)(xx)<=arr_rge(rng)(xx+1)) & #tt.(tt: ii..kk-1 >->> ii..kk-1 & arr_rge$0(rng)<+(tt;arr_rge$0(rng)) = arr_rge(rng)) VARIANT ii+jj+2-kk END));
  List_Substitution(Implementation(L_ARRAY5_RANGE_1),SEARCH_MIN_GEQ_RGE)==(LET res BE res = min({xx | xx: jj..kk & arr_rge(rng)(xx)>=vv}\/{kk+1}) IN ii:=res || bb:=bool(res/=kk+1) END);
  Expanded_List_Substitution(Implementation(L_ARRAY5_RANGE_1),SEARCH_MIN_GEQ_RGE)==(rng: LACR_minrge..LACR_maxrge & kk: 0..LACR_maxidx & kk/=MAXINT & jj: 0..LACR_maxidx & vv: LACR_minval..LACR_maxval & jj<=kk | @res.(res = min({xx | xx: jj..kk & arr_rge(rng)(xx)>=vv}\/{kk+1}) ==> ii,bb:=res,bool(res/=kk+1)));
  List_Substitution(Implementation(L_ARRAY5_RANGE_1),REVERSE_RGE)==(arr_rge(rng):=arr_rge(rng)<+%xx.(xx: ii..jj | arr_rge(rng)(jj+ii-xx)));
  Expanded_List_Substitution(Implementation(L_ARRAY5_RANGE_1),REVERSE_RGE)==(rng: LACR_minrge..LACR_maxrge & jj: 0..LACR_maxidx & ii: 0..LACR_maxidx | arr_rge:=arr_rge<+{rng|->(arr_rge(rng)<+%xx.(xx: ii..jj | arr_rge(rng)(jj+ii-xx)))});
  List_Substitution(Implementation(L_ARRAY5_RANGE_1),SEARCH_MAX_EQL_RGE)==(ANY nrr,nbb,sol WHERE nrr: NAT & nbb: BOOL & sol = (ii..jj<|arr_rge(rng))~[{vv}] & (sol/={} => nrr = max(sol)) & nbb = bool(sol/={}) THEN rr:=nrr || bb:=nbb END);
  Expanded_List_Substitution(Implementation(L_ARRAY5_RANGE_1),SEARCH_MAX_EQL_RGE)==(rng: LACR_minrge..LACR_maxrge & jj: 0..LACR_maxidx & ii: 0..LACR_maxidx & ii<=jj & vv: LACR_minval..LACR_maxval | @(nrr,nbb,sol).(nrr: NAT & nbb: BOOL & sol = (ii..jj<|arr_rge(rng))~[{vv}] & (sol/={} => nrr = max(sol)) & nbb = bool(sol/={}) ==> rr,bb:=nrr,nbb));
  List_Substitution(Implementation(L_ARRAY5_RANGE_1),SEARCH_MIN_EQL_RGE)==(ANY nrr,nbb,sol WHERE nrr: NAT & nbb: BOOL & sol = (ii..jj<|arr_rge(rng))~[{vv}] & (sol/={} => nrr = min(sol)) & nbb = bool(sol/={}) THEN rr:=nrr || bb:=nbb END);
  Expanded_List_Substitution(Implementation(L_ARRAY5_RANGE_1),SEARCH_MIN_EQL_RGE)==(rng: LACR_minrge..LACR_maxrge & jj: 0..LACR_maxidx & ii: 0..LACR_maxidx & ii<=jj & vv: LACR_minval..LACR_maxval | @(nrr,nbb,sol).(nrr: NAT & nbb: BOOL & sol = (ii..jj<|arr_rge(rng))~[{vv}] & (sol/={} => nrr = min(sol)) & nbb = bool(sol/={}) ==> rr,bb:=nrr,nbb));
  List_Substitution(Implementation(L_ARRAY5_RANGE_1),LEFT_SHIFT_RGE)==(arr_rge(rng):=arr_rge(rng)<+%xx.(xx: 0..LACR_maxidx & xx+nn: ii..jj | arr_rge(rng)(xx+nn)));
  Expanded_List_Substitution(Implementation(L_ARRAY5_RANGE_1),LEFT_SHIFT_RGE)==(rng: LACR_minrge..LACR_maxrge & jj: 0..LACR_maxidx & jj<=MAXINT-1 & ii: 0..LACR_maxidx & ii<=jj & nn: NAT & nn<=ii | arr_rge:=arr_rge<+{rng|->(arr_rge(rng)<+%xx.(xx: 0..LACR_maxidx & xx+nn: ii..jj | arr_rge(rng)(xx+nn)))});
  List_Substitution(Implementation(L_ARRAY5_RANGE_1),RIGHT_SHIFT_RGE)==(arr_rge(rng):=arr_rge(rng)<+%xx.(xx: ii+nn..jj+nn | arr_rge(rng)(xx-nn)));
  Expanded_List_Substitution(Implementation(L_ARRAY5_RANGE_1),RIGHT_SHIFT_RGE)==(rng: LACR_minrge..LACR_maxrge & jj: 0..LACR_maxidx & ii: 0..LACR_maxidx & nn: 0..LACR_maxidx & jj+nn: 0..LACR_maxidx & ii<=jj | arr_rge:=arr_rge<+{rng|->(arr_rge(rng)<+%xx.(xx: ii+nn..jj+nn | arr_rge(rng)(xx-nn)))});
  List_Substitution(Implementation(L_ARRAY5_RANGE_1),SWAP_RGE)==(arr_rge(rng):=arr_rge(rng)<+{ii|->arr_rge(rng)(jj),jj|->arr_rge(rng)(ii)});
  Expanded_List_Substitution(Implementation(L_ARRAY5_RANGE_1),SWAP_RGE)==(rng: LACR_minrge..LACR_maxrge & ii: 0..LACR_maxidx & jj: 0..LACR_maxidx | arr_rge:=arr_rge<+{rng|->(arr_rge(rng)<+{ii|->arr_rge(rng)(jj),jj|->arr_rge(rng)(ii)})});
  List_Substitution(Implementation(L_ARRAY5_RANGE_1),PCMP_ARR_RGE)==(ANY nidx,nbb,sol WHERE nidx: NAT & nbb: BOOL & sol = {xx | xx: ii..jj & arr_rge(rng1)(xx)/=arr_rge(rng2)(xx+idx2-ii)} & (sol/={} => nidx = min(sol)) & nbb = bool(sol/={}) THEN idx:=nidx || bb:=nbb END);
  Expanded_List_Substitution(Implementation(L_ARRAY5_RANGE_1),PCMP_ARR_RGE)==(rng2: LACR_minrge..LACR_maxrge & idx2: 0..LACR_maxidx & rng1: LACR_minrge..LACR_maxrge & ii: 0..LACR_maxidx & jj: 0..LACR_maxidx & ii<=jj & idx2+jj-ii: 0..LACR_maxidx | @(nidx,nbb,sol).(nidx: NAT & nbb: BOOL & sol = {xx | xx: ii..jj & arr_rge(rng1)(xx)/=arr_rge(rng2)(xx+idx2-ii)} & (sol/={} => nidx = min(sol)) & nbb = bool(sol/={}) ==> idx,bb:=nidx,nbb));
  List_Substitution(Implementation(L_ARRAY5_RANGE_1),PCOP_ARR_RGE)==(arr_rge(dest):=arr_rge(dest)<+%xx.(xx: idx_dst..idx_dst+jj-ii | arr_rge(src)(xx+ii-idx_dst)));
  Expanded_List_Substitution(Implementation(L_ARRAY5_RANGE_1),PCOP_ARR_RGE)==(dest: LACR_minrge..LACR_maxrge & idx_dst: 0..LACR_maxidx & src: LACR_minrge..LACR_maxrge & ii: 0..LACR_maxidx & jj: 0..LACR_maxidx & dest/=src & jj<=MAXINT-1 & ii<=jj & idx_dst+jj-ii: 0..LACR_maxidx | arr_rge:=arr_rge<+{dest|->(arr_rge(dest)<+%xx.(xx: idx_dst..idx_dst+jj-ii | arr_rge(src)(xx+ii-idx_dst)))});
  List_Substitution(Implementation(L_ARRAY5_RANGE_1),SET_ARR_RGE)==(arr_rge(range):=arr_rge(range)<+(ii..jj)*{vv});
  Expanded_List_Substitution(Implementation(L_ARRAY5_RANGE_1),SET_ARR_RGE)==(range: LACR_minrge..LACR_maxrge & ii: NAT & jj: NAT & jj/=MAXINT & ii..jj <: 0..LACR_maxidx & vv: LACR_minval..LACR_maxval | arr_rge:=arr_rge<+{range|->(arr_rge(range)<+(ii..jj)*{vv})});
  List_Substitution(Implementation(L_ARRAY5_RANGE_1),DUP_ARR_RGE)==(arr_rge:=arr_rge<+(dest1..dest2)*{arr_rge(src)});
  Expanded_List_Substitution(Implementation(L_ARRAY5_RANGE_1),DUP_ARR_RGE)==(dest1: NAT & dest2: NAT & dest2/=MAXINT & dest1..dest2 <: LACR_minrge..LACR_maxrge & src: LACR_minrge..LACR_maxrge | arr_rge:=arr_rge<+(dest1..dest2)*{arr_rge(src)});
  List_Substitution(Implementation(L_ARRAY5_RANGE_1),CMP_ARR_RGE)==(bb:=bool(arr_rge(range1) = arr_rge(range2)));
  Expanded_List_Substitution(Implementation(L_ARRAY5_RANGE_1),CMP_ARR_RGE)==(range1: LACR_minrge..LACR_maxrge & range2: LACR_minrge..LACR_maxrge | bb:=bool(arr_rge(range1) = arr_rge(range2)));
  List_Substitution(Implementation(L_ARRAY5_RANGE_1),COP_ARR_RGE)==(arr_rge:=arr_rge<+{dest|->arr_rge(src)});
  Expanded_List_Substitution(Implementation(L_ARRAY5_RANGE_1),COP_ARR_RGE)==(dest: LACR_minrge..LACR_maxrge & src: LACR_minrge..LACR_maxrge | arr_rge:=arr_rge<+{dest|->arr_rge(src)});
  List_Substitution(Implementation(L_ARRAY5_RANGE_1),STR_ARR_RGE)==(arr_rge(range)(index):=value);
  Expanded_List_Substitution(Implementation(L_ARRAY5_RANGE_1),STR_ARR_RGE)==(range: LACR_minrge..LACR_maxrge & index: 0..LACR_maxidx & value: LACR_minval..LACR_maxval | arr_rge:=arr_rge<+{range|->(arr_rge(range)<+{index|->value})});
  List_Substitution(Implementation(L_ARRAY5_RANGE_1),VAL_ARR_RGE)==(value:=arr_rge(range)(index));
  Expanded_List_Substitution(Implementation(L_ARRAY5_RANGE_1),VAL_ARR_RGE)==(range: LACR_minrge..LACR_maxrge & index: 0..LACR_maxidx | value:=arr_rge(range)(index));
  List_Substitution(Implementation(L_ARRAY5_RANGE_1),ASCENDING_SORT_RGE)==(VAR kk IN kk:=ii+1;WHILE kk<=jj DO VAR vv,nn,ll,bb IN vv <-- VAL_ARR_RGE(rng,kk);ll:=kk-1;nn,bb <-- SEARCH_MIN_GEQ_RGE(rng,ii,ll,vv);IF bb = TRUE THEN RIGHT_SHIFT_RGE(rng,nn,ll,1);STR_ARR_RGE(rng,nn,vv) END;kk:=kk+1 END INVARIANT kk: NATURAL & ii+1<=kk & (not(kk = ii+1) => kk<=jj+1) & !xx.(xx: NATURAL & xx>=ii & xx+1<kk => arr_rge(rng)(xx)<=arr_rge(rng)(xx+1)) & #tt.(tt: ii..kk-1 >->> ii..kk-1 & arr_rge$0(rng)<+(tt;arr_rge$0(rng)) = arr_rge(rng)) VARIANT ii+jj+2-kk END END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(L_ARRAY5_RANGE_1))==(?);
  Inherited_List_Constants(Implementation(L_ARRAY5_RANGE_1))==(?);
  List_Constants(Implementation(L_ARRAY5_RANGE_1))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(L_ARRAY5_RANGE_1))==(?);
  Context_List_Defered(Implementation(L_ARRAY5_RANGE_1))==(?);
  Context_List_Sets(Implementation(L_ARRAY5_RANGE_1))==(?);
  List_Own_Enumerated(Implementation(L_ARRAY5_RANGE_1))==(?);
  List_Valuable_Sets(Implementation(L_ARRAY5_RANGE_1))==(?);
  Inherited_List_Enumerated(Implementation(L_ARRAY5_RANGE_1))==(?);
  Inherited_List_Defered(Implementation(L_ARRAY5_RANGE_1))==(?);
  Inherited_List_Sets(Implementation(L_ARRAY5_RANGE_1))==(?);
  List_Enumerated(Implementation(L_ARRAY5_RANGE_1))==(?);
  List_Defered(Implementation(L_ARRAY5_RANGE_1))==(?);
  List_Sets(Implementation(L_ARRAY5_RANGE_1))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(L_ARRAY5_RANGE_1))==(?);
  Expanded_List_HiddenConstants(Implementation(L_ARRAY5_RANGE_1))==(?);
  List_HiddenConstants(Implementation(L_ARRAY5_RANGE_1))==(?);
  External_List_HiddenConstants(Implementation(L_ARRAY5_RANGE_1))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(L_ARRAY5_RANGE_1))==(btrue);
  Context_List_Properties(Implementation(L_ARRAY5_RANGE_1))==(btrue);
  Inherited_List_Properties(Implementation(L_ARRAY5_RANGE_1))==(btrue);
  List_Properties(Implementation(L_ARRAY5_RANGE_1))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(L_ARRAY5_RANGE_1))==(aa: aa);
  List_Values(Implementation(L_ARRAY5_RANGE_1))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(L_ARRAY5_RANGE_1),Machine(L_ARRAY4_RANGE))==(VAL_ARR_RGE,STR_ARR_RGE,COP_ARR_RGE,CMP_ARR_RGE,DUP_ARR_RGE,SET_ARR_RGE,PCOP_ARR_RGE,PCMP_ARR_RGE,SWAP_RGE,RIGHT_SHIFT_RGE,LEFT_SHIFT_RGE,SEARCH_MIN_EQL_RGE,SEARCH_MAX_EQL_RGE,REVERSE_RGE,SEARCH_MIN_GEQ_RGE)
END
&
THEORY InheritedEnvX IS
  Operations(Implementation(L_ARRAY5_RANGE_1))==(Type(ASCENDING_SORT_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SEARCH_MIN_GEQ_RGE) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(REVERSE_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SEARCH_MAX_EQL_RGE) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SEARCH_MIN_EQL_RGE) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(LEFT_SHIFT_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(RIGHT_SHIFT_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SWAP_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(PCMP_ARR_RGE) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(PCOP_ARR_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SET_ARR_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(DUP_ARR_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(CMP_ARR_RGE) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(COP_ARR_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(STR_ARR_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(VAL_ARR_RGE) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(L_ARRAY5_RANGE_1)) == (? | ? | ? | arr_rge | ASCENDING_SORT_RGE | ? | imported(Machine(L_ARRAY4_RANGE)) | LACR_minrge,LACR_maxrge,LACR_maxidx,LACR_minval,LACR_maxval | L_ARRAY5_RANGE_1);
  List_Of_HiddenCst_Ids(Implementation(L_ARRAY5_RANGE_1)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(L_ARRAY5_RANGE_1)) == (?);
  List_Of_VisibleVar_Ids(Implementation(L_ARRAY5_RANGE_1)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(L_ARRAY5_RANGE_1)) == (?: ?);
  List_Of_Ids(Machine(L_ARRAY4_RANGE)) == (? | ? | arr_rge | ? | VAL_ARR_RGE,STR_ARR_RGE,COP_ARR_RGE,CMP_ARR_RGE,DUP_ARR_RGE,SET_ARR_RGE,PCOP_ARR_RGE,PCMP_ARR_RGE,SWAP_RGE,RIGHT_SHIFT_RGE,LEFT_SHIFT_RGE,SEARCH_MIN_EQL_RGE,SEARCH_MAX_EQL_RGE,REVERSE_RGE,SEARCH_MIN_GEQ_RGE | ? | ? | LAQR_minrge,LAQR_maxrge,LAQR_maxidx,LAQR_minval,LAQR_maxval | L_ARRAY4_RANGE);
  List_Of_HiddenCst_Ids(Machine(L_ARRAY4_RANGE)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(L_ARRAY4_RANGE)) == (?);
  List_Of_VisibleVar_Ids(Machine(L_ARRAY4_RANGE)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(L_ARRAY4_RANGE)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Implementation(L_ARRAY5_RANGE_1)) == (Type(LACR_maxval) == Prm(btype(INTEGER,?,?));Type(LACR_minval) == Prm(btype(INTEGER,?,?));Type(LACR_maxidx) == Prm(btype(INTEGER,?,?));Type(LACR_maxrge) == Prm(btype(INTEGER,?,?));Type(LACR_minrge) == Prm(btype(INTEGER,?,?)))
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(L_ARRAY5_RANGE_1),ASCENDING_SORT_RGE, 2) == (Type(vv) == Lvl(btype(INTEGER,?,?));Type(nn) == Lvl(btype(INTEGER,?,?));Type(ll) == Lvl(btype(INTEGER,?,?));Type(bb) == Lvl(btype(BOOL,?,?)));
  Variables_Loc(Implementation(L_ARRAY5_RANGE_1),ASCENDING_SORT_RGE, 1) == (Type(kk) == Lvl(btype(INTEGER,?,?)))
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
  List_Local_Operations(Implementation(L_ARRAY5_RANGE_1))==(?)
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
  TypingPredicate(Implementation(L_ARRAY5_RANGE_1))==(btrue)
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(L_ARRAY5_RANGE_1),Machine(L_ARRAY4_RANGE))==(arr_rge);
  ImportedVisVariablesList(Implementation(L_ARRAY5_RANGE_1),Machine(L_ARRAY4_RANGE))==(?)
END
&
THEORY ListLocalOpInvariantX END
)
