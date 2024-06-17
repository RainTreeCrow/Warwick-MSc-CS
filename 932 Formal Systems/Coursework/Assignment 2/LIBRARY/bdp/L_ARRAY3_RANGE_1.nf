Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(L_ARRAY3_RANGE_1))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(L_ARRAY3_RANGE_1))==(Machine(L_ARRAY3_RANGE));
  Level(Implementation(L_ARRAY3_RANGE_1))==(1);
  Upper_Level(Implementation(L_ARRAY3_RANGE_1))==(Machine(L_ARRAY3_RANGE))
END
&
THEORY LoadedStructureX IS
  Implementation(L_ARRAY3_RANGE_1)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(L_ARRAY3_RANGE_1))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(L_ARRAY3_RANGE_1))==(L_ARRAY2_RANGE);
  Inherited_List_Includes(Implementation(L_ARRAY3_RANGE_1))==(L_ARRAY2_RANGE)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(L_ARRAY3_RANGE_1))==(VAL_ARR_RGE,STR_ARR_RGE,COP_ARR_RGE,CMP_ARR_RGE,DUP_ARR_RGE,SET_ARR_RGE,PCOP_ARR_RGE,PCMP_ARR_RGE,SWAP_RGE,RIGHT_SHIFT_RGE,LEFT_SHIFT_RGE,SEARCH_MIN_EQL_RGE,SEARCH_MAX_EQL_RGE)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(L_ARRAY3_RANGE_1))==(L_ARRAY2_RANGE)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(L_ARRAY3_RANGE_1))==(?);
  Context_List_Variables(Implementation(L_ARRAY3_RANGE_1))==(?);
  Abstract_List_Variables(Implementation(L_ARRAY3_RANGE_1))==(arr_rge);
  Local_List_Variables(Implementation(L_ARRAY3_RANGE_1))==(?);
  List_Variables(Implementation(L_ARRAY3_RANGE_1))==(arr_rge);
  External_List_Variables(Implementation(L_ARRAY3_RANGE_1))==(arr_rge)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(L_ARRAY3_RANGE_1))==(?);
  Abstract_List_VisibleVariables(Implementation(L_ARRAY3_RANGE_1))==(?);
  External_List_VisibleVariables(Implementation(L_ARRAY3_RANGE_1))==(?);
  Expanded_List_VisibleVariables(Implementation(L_ARRAY3_RANGE_1))==(?);
  List_VisibleVariables(Implementation(L_ARRAY3_RANGE_1))==(?);
  Internal_List_VisibleVariables(Implementation(L_ARRAY3_RANGE_1))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(L_ARRAY3_RANGE_1))==(btrue);
  Abstract_List_Invariant(Implementation(L_ARRAY3_RANGE_1))==(arr_rge: LATR_minrge..LATR_maxrge --> (0..LATR_maxidx --> LATR_VALUE));
  Expanded_List_Invariant(Implementation(L_ARRAY3_RANGE_1))==(arr_rge: LATR_minrge..LATR_maxrge --> (0..LATR_maxidx --> LATR_VALUE));
  Context_List_Invariant(Implementation(L_ARRAY3_RANGE_1))==(btrue);
  List_Invariant(Implementation(L_ARRAY3_RANGE_1))==(btrue)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(L_ARRAY3_RANGE_1))==(btrue);
  Expanded_List_Assertions(Implementation(L_ARRAY3_RANGE_1))==(btrue);
  Context_List_Assertions(Implementation(L_ARRAY3_RANGE_1))==(btrue);
  List_Assertions(Implementation(L_ARRAY3_RANGE_1))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(L_ARRAY3_RANGE_1))==(@(arr_rge$0).(arr_rge$0: LATR_minrge..LATR_maxrge --> (0..LATR_maxidx --> LATR_VALUE) ==> arr_rge:=arr_rge$0));
  Context_List_Initialisation(Implementation(L_ARRAY3_RANGE_1))==(skip);
  List_Initialisation(Implementation(L_ARRAY3_RANGE_1))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(L_ARRAY3_RANGE_1))==(LATR_minrge,LATR_maxrge,LATR_maxidx,LATR_VALUE)
END
&
THEORY ListInstanciatedParametersX IS
  Precond_Instanciated_Parameters(Implementation(L_ARRAY3_RANGE_1),Machine(L_ARRAY2_RANGE))==(btrue);
  List_Instanciated_Parameters(Implementation(L_ARRAY3_RANGE_1),Machine(L_ARRAY2_RANGE))==(LATR_minrge,LATR_maxrge,LATR_maxidx,LATR_VALUE)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(L_ARRAY3_RANGE_1),Machine(L_ARRAY2_RANGE))==(LATR_maxidx: NAT1 & LATR_minrge: NAT & LATR_maxrge: NAT & LATR_minrge<LATR_maxrge & LATR_VALUE: FIN(INTEGER) & not(LATR_VALUE = {}));
  List_Constraints(Implementation(L_ARRAY3_RANGE_1))==(LATR_maxidx: NAT1 & LATR_minrge: NAT & LATR_maxrge: NAT & LATR_minrge<LATR_maxrge & LATR_VALUE: FIN(INTEGER) & not(LATR_VALUE = {}));
  List_Context_Constraints(Implementation(L_ARRAY3_RANGE_1))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(L_ARRAY3_RANGE_1))==(REVERSE_RGE,VAL_ARR_RGE,STR_ARR_RGE,COP_ARR_RGE,CMP_ARR_RGE,DUP_ARR_RGE,SET_ARR_RGE,PCOP_ARR_RGE,PCMP_ARR_RGE,SWAP_RGE,RIGHT_SHIFT_RGE,LEFT_SHIFT_RGE,SEARCH_MIN_EQL_RGE,SEARCH_MAX_EQL_RGE);
  List_Operations(Implementation(L_ARRAY3_RANGE_1))==(REVERSE_RGE,VAL_ARR_RGE,STR_ARR_RGE,COP_ARR_RGE,CMP_ARR_RGE,DUP_ARR_RGE,SET_ARR_RGE,PCOP_ARR_RGE,PCMP_ARR_RGE,SWAP_RGE,RIGHT_SHIFT_RGE,LEFT_SHIFT_RGE,SEARCH_MIN_EQL_RGE,SEARCH_MAX_EQL_RGE)
END
&
THEORY ListInputX IS
  List_Input(Implementation(L_ARRAY3_RANGE_1),SEARCH_MAX_EQL_RGE)==(rng,ii,jj,vv);
  List_Input(Implementation(L_ARRAY3_RANGE_1),SEARCH_MIN_EQL_RGE)==(rng,ii,jj,vv);
  List_Input(Implementation(L_ARRAY3_RANGE_1),LEFT_SHIFT_RGE)==(rng,ii,jj,nn);
  List_Input(Implementation(L_ARRAY3_RANGE_1),RIGHT_SHIFT_RGE)==(rng,ii,jj,nn);
  List_Input(Implementation(L_ARRAY3_RANGE_1),SWAP_RGE)==(rng,ii,jj);
  List_Input(Implementation(L_ARRAY3_RANGE_1),PCMP_ARR_RGE)==(rng2,idx2,rng1,ii,jj);
  List_Input(Implementation(L_ARRAY3_RANGE_1),PCOP_ARR_RGE)==(dest,idx_dst,src,ii,jj);
  List_Input(Implementation(L_ARRAY3_RANGE_1),SET_ARR_RGE)==(range,ii,jj,vv);
  List_Input(Implementation(L_ARRAY3_RANGE_1),DUP_ARR_RGE)==(dest1,dest2,src);
  List_Input(Implementation(L_ARRAY3_RANGE_1),CMP_ARR_RGE)==(range1,range2);
  List_Input(Implementation(L_ARRAY3_RANGE_1),COP_ARR_RGE)==(dest,src);
  List_Input(Implementation(L_ARRAY3_RANGE_1),STR_ARR_RGE)==(range,index,value);
  List_Input(Implementation(L_ARRAY3_RANGE_1),VAL_ARR_RGE)==(range,index);
  List_Input(Implementation(L_ARRAY3_RANGE_1),REVERSE_RGE)==(rng,ii,jj)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(L_ARRAY3_RANGE_1),SEARCH_MAX_EQL_RGE)==(rr,bb);
  List_Output(Implementation(L_ARRAY3_RANGE_1),SEARCH_MIN_EQL_RGE)==(rr,bb);
  List_Output(Implementation(L_ARRAY3_RANGE_1),LEFT_SHIFT_RGE)==(?);
  List_Output(Implementation(L_ARRAY3_RANGE_1),RIGHT_SHIFT_RGE)==(?);
  List_Output(Implementation(L_ARRAY3_RANGE_1),SWAP_RGE)==(?);
  List_Output(Implementation(L_ARRAY3_RANGE_1),PCMP_ARR_RGE)==(idx,bb);
  List_Output(Implementation(L_ARRAY3_RANGE_1),PCOP_ARR_RGE)==(?);
  List_Output(Implementation(L_ARRAY3_RANGE_1),SET_ARR_RGE)==(?);
  List_Output(Implementation(L_ARRAY3_RANGE_1),DUP_ARR_RGE)==(?);
  List_Output(Implementation(L_ARRAY3_RANGE_1),CMP_ARR_RGE)==(bb);
  List_Output(Implementation(L_ARRAY3_RANGE_1),COP_ARR_RGE)==(?);
  List_Output(Implementation(L_ARRAY3_RANGE_1),STR_ARR_RGE)==(?);
  List_Output(Implementation(L_ARRAY3_RANGE_1),VAL_ARR_RGE)==(value);
  List_Output(Implementation(L_ARRAY3_RANGE_1),REVERSE_RGE)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(L_ARRAY3_RANGE_1),SEARCH_MAX_EQL_RGE)==(rr,bb <-- SEARCH_MAX_EQL_RGE(rng,ii,jj,vv));
  List_Header(Implementation(L_ARRAY3_RANGE_1),SEARCH_MIN_EQL_RGE)==(rr,bb <-- SEARCH_MIN_EQL_RGE(rng,ii,jj,vv));
  List_Header(Implementation(L_ARRAY3_RANGE_1),LEFT_SHIFT_RGE)==(LEFT_SHIFT_RGE(rng,ii,jj,nn));
  List_Header(Implementation(L_ARRAY3_RANGE_1),RIGHT_SHIFT_RGE)==(RIGHT_SHIFT_RGE(rng,ii,jj,nn));
  List_Header(Implementation(L_ARRAY3_RANGE_1),SWAP_RGE)==(SWAP_RGE(rng,ii,jj));
  List_Header(Implementation(L_ARRAY3_RANGE_1),PCMP_ARR_RGE)==(idx,bb <-- PCMP_ARR_RGE(rng2,idx2,rng1,ii,jj));
  List_Header(Implementation(L_ARRAY3_RANGE_1),PCOP_ARR_RGE)==(PCOP_ARR_RGE(dest,idx_dst,src,ii,jj));
  List_Header(Implementation(L_ARRAY3_RANGE_1),SET_ARR_RGE)==(SET_ARR_RGE(range,ii,jj,vv));
  List_Header(Implementation(L_ARRAY3_RANGE_1),DUP_ARR_RGE)==(DUP_ARR_RGE(dest1,dest2,src));
  List_Header(Implementation(L_ARRAY3_RANGE_1),CMP_ARR_RGE)==(bb <-- CMP_ARR_RGE(range1,range2));
  List_Header(Implementation(L_ARRAY3_RANGE_1),COP_ARR_RGE)==(COP_ARR_RGE(dest,src));
  List_Header(Implementation(L_ARRAY3_RANGE_1),STR_ARR_RGE)==(STR_ARR_RGE(range,index,value));
  List_Header(Implementation(L_ARRAY3_RANGE_1),VAL_ARR_RGE)==(value <-- VAL_ARR_RGE(range,index));
  List_Header(Implementation(L_ARRAY3_RANGE_1),REVERSE_RGE)==(REVERSE_RGE(rng,ii,jj))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(L_ARRAY3_RANGE_1),SEARCH_MAX_EQL_RGE)==(rng: LATR_minrge..LATR_maxrge & jj: 0..LATR_maxidx & ii: 0..LATR_maxidx & ii<=jj & vv: LATR_VALUE);
  List_Precondition(Implementation(L_ARRAY3_RANGE_1),SEARCH_MAX_EQL_RGE)==(rng: LATR_minrge..LATR_maxrge & jj: 0..LATR_maxidx & ii: 0..LATR_maxidx & ii<=jj & vv: LATR_VALUE);
  Own_Precondition(Implementation(L_ARRAY3_RANGE_1),SEARCH_MIN_EQL_RGE)==(rng: LATR_minrge..LATR_maxrge & jj: 0..LATR_maxidx & ii: 0..LATR_maxidx & ii<=jj & vv: LATR_VALUE);
  List_Precondition(Implementation(L_ARRAY3_RANGE_1),SEARCH_MIN_EQL_RGE)==(rng: LATR_minrge..LATR_maxrge & jj: 0..LATR_maxidx & ii: 0..LATR_maxidx & ii<=jj & vv: LATR_VALUE);
  Own_Precondition(Implementation(L_ARRAY3_RANGE_1),LEFT_SHIFT_RGE)==(rng: LATR_minrge..LATR_maxrge & jj: 0..LATR_maxidx & jj<=MAXINT-1 & ii: 0..LATR_maxidx & ii<=jj & nn: NAT & nn<=ii);
  List_Precondition(Implementation(L_ARRAY3_RANGE_1),LEFT_SHIFT_RGE)==(rng: LATR_minrge..LATR_maxrge & jj: 0..LATR_maxidx & jj<=MAXINT-1 & ii: 0..LATR_maxidx & ii<=jj & nn: NAT & nn<=ii);
  Own_Precondition(Implementation(L_ARRAY3_RANGE_1),RIGHT_SHIFT_RGE)==(rng: LATR_minrge..LATR_maxrge & jj: 0..LATR_maxidx & ii: 0..LATR_maxidx & nn: 0..LATR_maxidx & jj+nn: 0..LATR_maxidx & ii<=jj);
  List_Precondition(Implementation(L_ARRAY3_RANGE_1),RIGHT_SHIFT_RGE)==(rng: LATR_minrge..LATR_maxrge & jj: 0..LATR_maxidx & ii: 0..LATR_maxidx & nn: 0..LATR_maxidx & jj+nn: 0..LATR_maxidx & ii<=jj);
  Own_Precondition(Implementation(L_ARRAY3_RANGE_1),SWAP_RGE)==(rng: LATR_minrge..LATR_maxrge & ii: 0..LATR_maxidx & jj: 0..LATR_maxidx);
  List_Precondition(Implementation(L_ARRAY3_RANGE_1),SWAP_RGE)==(rng: LATR_minrge..LATR_maxrge & ii: 0..LATR_maxidx & jj: 0..LATR_maxidx);
  Own_Precondition(Implementation(L_ARRAY3_RANGE_1),PCMP_ARR_RGE)==(rng2: LATR_minrge..LATR_maxrge & idx2: 0..LATR_maxidx & rng1: LATR_minrge..LATR_maxrge & ii: 0..LATR_maxidx & jj: 0..LATR_maxidx & ii<=jj & idx2+jj-ii: 0..LATR_maxidx);
  List_Precondition(Implementation(L_ARRAY3_RANGE_1),PCMP_ARR_RGE)==(rng2: LATR_minrge..LATR_maxrge & idx2: 0..LATR_maxidx & rng1: LATR_minrge..LATR_maxrge & ii: 0..LATR_maxidx & jj: 0..LATR_maxidx & ii<=jj & idx2+jj-ii: 0..LATR_maxidx);
  Own_Precondition(Implementation(L_ARRAY3_RANGE_1),PCOP_ARR_RGE)==(dest: LATR_minrge..LATR_maxrge & idx_dst: 0..LATR_maxidx & src: LATR_minrge..LATR_maxrge & ii: 0..LATR_maxidx & jj: 0..LATR_maxidx & dest/=src & jj<=MAXINT-1 & ii<=jj & idx_dst+jj-ii: 0..LATR_maxidx);
  List_Precondition(Implementation(L_ARRAY3_RANGE_1),PCOP_ARR_RGE)==(dest: LATR_minrge..LATR_maxrge & idx_dst: 0..LATR_maxidx & src: LATR_minrge..LATR_maxrge & ii: 0..LATR_maxidx & jj: 0..LATR_maxidx & dest/=src & jj<=MAXINT-1 & ii<=jj & idx_dst+jj-ii: 0..LATR_maxidx);
  Own_Precondition(Implementation(L_ARRAY3_RANGE_1),SET_ARR_RGE)==(range: LATR_minrge..LATR_maxrge & ii: NAT & jj: NAT & jj/=MAXINT & ii..jj <: 0..LATR_maxidx & vv: LATR_VALUE);
  List_Precondition(Implementation(L_ARRAY3_RANGE_1),SET_ARR_RGE)==(range: LATR_minrge..LATR_maxrge & ii: NAT & jj: NAT & jj/=MAXINT & ii..jj <: 0..LATR_maxidx & vv: LATR_VALUE);
  Own_Precondition(Implementation(L_ARRAY3_RANGE_1),DUP_ARR_RGE)==(dest1: NAT & dest2: NAT & dest2/=MAXINT & dest1..dest2 <: LATR_minrge..LATR_maxrge & src: LATR_minrge..LATR_maxrge);
  List_Precondition(Implementation(L_ARRAY3_RANGE_1),DUP_ARR_RGE)==(dest1: NAT & dest2: NAT & dest2/=MAXINT & dest1..dest2 <: LATR_minrge..LATR_maxrge & src: LATR_minrge..LATR_maxrge);
  Own_Precondition(Implementation(L_ARRAY3_RANGE_1),CMP_ARR_RGE)==(range1: LATR_minrge..LATR_maxrge & range2: LATR_minrge..LATR_maxrge);
  List_Precondition(Implementation(L_ARRAY3_RANGE_1),CMP_ARR_RGE)==(range1: LATR_minrge..LATR_maxrge & range2: LATR_minrge..LATR_maxrge);
  Own_Precondition(Implementation(L_ARRAY3_RANGE_1),COP_ARR_RGE)==(dest: LATR_minrge..LATR_maxrge & src: LATR_minrge..LATR_maxrge);
  List_Precondition(Implementation(L_ARRAY3_RANGE_1),COP_ARR_RGE)==(dest: LATR_minrge..LATR_maxrge & src: LATR_minrge..LATR_maxrge);
  Own_Precondition(Implementation(L_ARRAY3_RANGE_1),STR_ARR_RGE)==(range: LATR_minrge..LATR_maxrge & index: 0..LATR_maxidx & value: LATR_VALUE);
  List_Precondition(Implementation(L_ARRAY3_RANGE_1),STR_ARR_RGE)==(range: LATR_minrge..LATR_maxrge & index: 0..LATR_maxidx & value: LATR_VALUE);
  Own_Precondition(Implementation(L_ARRAY3_RANGE_1),VAL_ARR_RGE)==(range: LATR_minrge..LATR_maxrge & index: 0..LATR_maxidx);
  List_Precondition(Implementation(L_ARRAY3_RANGE_1),VAL_ARR_RGE)==(range: LATR_minrge..LATR_maxrge & index: 0..LATR_maxidx);
  Own_Precondition(Implementation(L_ARRAY3_RANGE_1),REVERSE_RGE)==(btrue);
  List_Precondition(Implementation(L_ARRAY3_RANGE_1),REVERSE_RGE)==(rng: LATR_minrge..LATR_maxrge & jj: 0..LATR_maxidx & ii: 0..LATR_maxidx)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(L_ARRAY3_RANGE_1),REVERSE_RGE)==(rng: LATR_minrge..LATR_maxrge & jj: 0..LATR_maxidx & ii: 0..LATR_maxidx | @(kk,ll).(kk:=ii;ll:=jj;WHILE kk<ll DO (rng: LATR_minrge..LATR_maxrge & kk: 0..LATR_maxidx & ll: 0..LATR_maxidx | arr_rge:=arr_rge<+{rng|->(arr_rge(rng)<+{kk|->arr_rge(rng)(ll),ll|->arr_rge(rng)(kk)})});(kk+1: INT & kk: INT & 1: INT | kk:=kk+1);(ll-1: INT & ll: INT & 1: INT | ll:=ll-1) INVARIANT kk: NATURAL & ll: NATURAL & kk>=ii & (ii<=jj => kk<=ll+1) & ll<=jj & kk+ll = ii+jj & arr_rge = arr_rge$0<+{rng|->(arr_rge$0(rng)<+%xx.(xx: ii..jj & (xx<kk or xx>ll) | arr_rge$0(rng)(ii+jj-xx)))} VARIANT ii+jj-kk END));
  List_Substitution(Implementation(L_ARRAY3_RANGE_1),SEARCH_MAX_EQL_RGE)==(ANY nrr,nbb,sol WHERE nrr: NAT & nbb: BOOL & sol = (ii..jj<|arr_rge(rng))~[{vv}] & (sol/={} => nrr = max(sol)) & nbb = bool(sol/={}) THEN rr:=nrr || bb:=nbb END);
  Expanded_List_Substitution(Implementation(L_ARRAY3_RANGE_1),SEARCH_MAX_EQL_RGE)==(rng: LATR_minrge..LATR_maxrge & jj: 0..LATR_maxidx & ii: 0..LATR_maxidx & ii<=jj & vv: LATR_VALUE | @(nrr,nbb,sol).(nrr: NAT & nbb: BOOL & sol = (ii..jj<|arr_rge(rng))~[{vv}] & (sol/={} => nrr = max(sol)) & nbb = bool(sol/={}) ==> rr,bb:=nrr,nbb));
  List_Substitution(Implementation(L_ARRAY3_RANGE_1),SEARCH_MIN_EQL_RGE)==(ANY nrr,nbb,sol WHERE nrr: NAT & nbb: BOOL & sol = (ii..jj<|arr_rge(rng))~[{vv}] & (sol/={} => nrr = min(sol)) & nbb = bool(sol/={}) THEN rr:=nrr || bb:=nbb END);
  Expanded_List_Substitution(Implementation(L_ARRAY3_RANGE_1),SEARCH_MIN_EQL_RGE)==(rng: LATR_minrge..LATR_maxrge & jj: 0..LATR_maxidx & ii: 0..LATR_maxidx & ii<=jj & vv: LATR_VALUE | @(nrr,nbb,sol).(nrr: NAT & nbb: BOOL & sol = (ii..jj<|arr_rge(rng))~[{vv}] & (sol/={} => nrr = min(sol)) & nbb = bool(sol/={}) ==> rr,bb:=nrr,nbb));
  List_Substitution(Implementation(L_ARRAY3_RANGE_1),LEFT_SHIFT_RGE)==(arr_rge(rng):=arr_rge(rng)<+%xx.(xx: 0..LATR_maxidx & xx+nn: ii..jj | arr_rge(rng)(xx+nn)));
  Expanded_List_Substitution(Implementation(L_ARRAY3_RANGE_1),LEFT_SHIFT_RGE)==(rng: LATR_minrge..LATR_maxrge & jj: 0..LATR_maxidx & jj<=MAXINT-1 & ii: 0..LATR_maxidx & ii<=jj & nn: NAT & nn<=ii | arr_rge:=arr_rge<+{rng|->(arr_rge(rng)<+%xx.(xx: 0..LATR_maxidx & xx+nn: ii..jj | arr_rge(rng)(xx+nn)))});
  List_Substitution(Implementation(L_ARRAY3_RANGE_1),RIGHT_SHIFT_RGE)==(arr_rge(rng):=arr_rge(rng)<+%xx.(xx: ii+nn..jj+nn | arr_rge(rng)(xx-nn)));
  Expanded_List_Substitution(Implementation(L_ARRAY3_RANGE_1),RIGHT_SHIFT_RGE)==(rng: LATR_minrge..LATR_maxrge & jj: 0..LATR_maxidx & ii: 0..LATR_maxidx & nn: 0..LATR_maxidx & jj+nn: 0..LATR_maxidx & ii<=jj | arr_rge:=arr_rge<+{rng|->(arr_rge(rng)<+%xx.(xx: ii+nn..jj+nn | arr_rge(rng)(xx-nn)))});
  List_Substitution(Implementation(L_ARRAY3_RANGE_1),SWAP_RGE)==(arr_rge(rng):=arr_rge(rng)<+{ii|->arr_rge(rng)(jj),jj|->arr_rge(rng)(ii)});
  Expanded_List_Substitution(Implementation(L_ARRAY3_RANGE_1),SWAP_RGE)==(rng: LATR_minrge..LATR_maxrge & ii: 0..LATR_maxidx & jj: 0..LATR_maxidx | arr_rge:=arr_rge<+{rng|->(arr_rge(rng)<+{ii|->arr_rge(rng)(jj),jj|->arr_rge(rng)(ii)})});
  List_Substitution(Implementation(L_ARRAY3_RANGE_1),PCMP_ARR_RGE)==(ANY nidx,nbb,sol WHERE nidx: NAT & nbb: BOOL & sol = {xx | xx: ii..jj & arr_rge(rng1)(xx)/=arr_rge(rng2)(xx+idx2-ii)} & (sol/={} => nidx = min(sol)) & nbb = bool(sol/={}) THEN idx:=nidx || bb:=nbb END);
  Expanded_List_Substitution(Implementation(L_ARRAY3_RANGE_1),PCMP_ARR_RGE)==(rng2: LATR_minrge..LATR_maxrge & idx2: 0..LATR_maxidx & rng1: LATR_minrge..LATR_maxrge & ii: 0..LATR_maxidx & jj: 0..LATR_maxidx & ii<=jj & idx2+jj-ii: 0..LATR_maxidx | @(nidx,nbb,sol).(nidx: NAT & nbb: BOOL & sol = {xx | xx: ii..jj & arr_rge(rng1)(xx)/=arr_rge(rng2)(xx+idx2-ii)} & (sol/={} => nidx = min(sol)) & nbb = bool(sol/={}) ==> idx,bb:=nidx,nbb));
  List_Substitution(Implementation(L_ARRAY3_RANGE_1),PCOP_ARR_RGE)==(arr_rge(dest):=arr_rge(dest)<+%xx.(xx: idx_dst..idx_dst+jj-ii | arr_rge(src)(xx+ii-idx_dst)));
  Expanded_List_Substitution(Implementation(L_ARRAY3_RANGE_1),PCOP_ARR_RGE)==(dest: LATR_minrge..LATR_maxrge & idx_dst: 0..LATR_maxidx & src: LATR_minrge..LATR_maxrge & ii: 0..LATR_maxidx & jj: 0..LATR_maxidx & dest/=src & jj<=MAXINT-1 & ii<=jj & idx_dst+jj-ii: 0..LATR_maxidx | arr_rge:=arr_rge<+{dest|->(arr_rge(dest)<+%xx.(xx: idx_dst..idx_dst+jj-ii | arr_rge(src)(xx+ii-idx_dst)))});
  List_Substitution(Implementation(L_ARRAY3_RANGE_1),SET_ARR_RGE)==(arr_rge(range):=arr_rge(range)<+(ii..jj)*{vv});
  Expanded_List_Substitution(Implementation(L_ARRAY3_RANGE_1),SET_ARR_RGE)==(range: LATR_minrge..LATR_maxrge & ii: NAT & jj: NAT & jj/=MAXINT & ii..jj <: 0..LATR_maxidx & vv: LATR_VALUE | arr_rge:=arr_rge<+{range|->(arr_rge(range)<+(ii..jj)*{vv})});
  List_Substitution(Implementation(L_ARRAY3_RANGE_1),DUP_ARR_RGE)==(arr_rge:=arr_rge<+(dest1..dest2)*{arr_rge(src)});
  Expanded_List_Substitution(Implementation(L_ARRAY3_RANGE_1),DUP_ARR_RGE)==(dest1: NAT & dest2: NAT & dest2/=MAXINT & dest1..dest2 <: LATR_minrge..LATR_maxrge & src: LATR_minrge..LATR_maxrge | arr_rge:=arr_rge<+(dest1..dest2)*{arr_rge(src)});
  List_Substitution(Implementation(L_ARRAY3_RANGE_1),CMP_ARR_RGE)==(bb:=bool(arr_rge(range1) = arr_rge(range2)));
  Expanded_List_Substitution(Implementation(L_ARRAY3_RANGE_1),CMP_ARR_RGE)==(range1: LATR_minrge..LATR_maxrge & range2: LATR_minrge..LATR_maxrge | bb:=bool(arr_rge(range1) = arr_rge(range2)));
  List_Substitution(Implementation(L_ARRAY3_RANGE_1),COP_ARR_RGE)==(arr_rge:=arr_rge<+{dest|->arr_rge(src)});
  Expanded_List_Substitution(Implementation(L_ARRAY3_RANGE_1),COP_ARR_RGE)==(dest: LATR_minrge..LATR_maxrge & src: LATR_minrge..LATR_maxrge | arr_rge:=arr_rge<+{dest|->arr_rge(src)});
  List_Substitution(Implementation(L_ARRAY3_RANGE_1),STR_ARR_RGE)==(arr_rge(range)(index):=value);
  Expanded_List_Substitution(Implementation(L_ARRAY3_RANGE_1),STR_ARR_RGE)==(range: LATR_minrge..LATR_maxrge & index: 0..LATR_maxidx & value: LATR_VALUE | arr_rge:=arr_rge<+{range|->(arr_rge(range)<+{index|->value})});
  List_Substitution(Implementation(L_ARRAY3_RANGE_1),VAL_ARR_RGE)==(value:=arr_rge(range)(index));
  Expanded_List_Substitution(Implementation(L_ARRAY3_RANGE_1),VAL_ARR_RGE)==(range: LATR_minrge..LATR_maxrge & index: 0..LATR_maxidx | value:=arr_rge(range)(index));
  List_Substitution(Implementation(L_ARRAY3_RANGE_1),REVERSE_RGE)==(VAR kk,ll IN kk:=ii;ll:=jj;WHILE kk<ll DO SWAP_RGE(rng,kk,ll);kk:=kk+1;ll:=ll-1 INVARIANT kk: NATURAL & ll: NATURAL & kk>=ii & (ii<=jj => kk<=ll+1) & ll<=jj & kk+ll = ii+jj & arr_rge = arr_rge$0<+{rng|->(arr_rge$0(rng)<+%xx.(xx: ii..jj & (xx<kk or xx>ll) | arr_rge$0(rng)(ii+jj-xx)))} VARIANT ii+jj-kk END END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(L_ARRAY3_RANGE_1))==(?);
  Inherited_List_Constants(Implementation(L_ARRAY3_RANGE_1))==(?);
  List_Constants(Implementation(L_ARRAY3_RANGE_1))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(L_ARRAY3_RANGE_1))==(?);
  Context_List_Defered(Implementation(L_ARRAY3_RANGE_1))==(?);
  Context_List_Sets(Implementation(L_ARRAY3_RANGE_1))==(?);
  List_Own_Enumerated(Implementation(L_ARRAY3_RANGE_1))==(?);
  List_Valuable_Sets(Implementation(L_ARRAY3_RANGE_1))==(?);
  Inherited_List_Enumerated(Implementation(L_ARRAY3_RANGE_1))==(?);
  Inherited_List_Defered(Implementation(L_ARRAY3_RANGE_1))==(?);
  Inherited_List_Sets(Implementation(L_ARRAY3_RANGE_1))==(?);
  List_Enumerated(Implementation(L_ARRAY3_RANGE_1))==(?);
  List_Defered(Implementation(L_ARRAY3_RANGE_1))==(?);
  List_Sets(Implementation(L_ARRAY3_RANGE_1))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(L_ARRAY3_RANGE_1))==(?);
  Expanded_List_HiddenConstants(Implementation(L_ARRAY3_RANGE_1))==(?);
  List_HiddenConstants(Implementation(L_ARRAY3_RANGE_1))==(?);
  External_List_HiddenConstants(Implementation(L_ARRAY3_RANGE_1))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(L_ARRAY3_RANGE_1))==(btrue);
  Context_List_Properties(Implementation(L_ARRAY3_RANGE_1))==(btrue);
  Inherited_List_Properties(Implementation(L_ARRAY3_RANGE_1))==(btrue);
  List_Properties(Implementation(L_ARRAY3_RANGE_1))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(L_ARRAY3_RANGE_1))==(aa: aa);
  List_Values(Implementation(L_ARRAY3_RANGE_1))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(L_ARRAY3_RANGE_1),Machine(L_ARRAY2_RANGE))==(VAL_ARR_RGE,STR_ARR_RGE,COP_ARR_RGE,CMP_ARR_RGE,DUP_ARR_RGE,SET_ARR_RGE,PCOP_ARR_RGE,PCMP_ARR_RGE,SWAP_RGE,RIGHT_SHIFT_RGE,LEFT_SHIFT_RGE,SEARCH_MIN_EQL_RGE,SEARCH_MAX_EQL_RGE)
END
&
THEORY InheritedEnvX IS
  Operations(Implementation(L_ARRAY3_RANGE_1))==(Type(REVERSE_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SEARCH_MAX_EQL_RGE) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*atype(LATR_VALUE,?,?));Type(SEARCH_MIN_EQL_RGE) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*atype(LATR_VALUE,?,?));Type(LEFT_SHIFT_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(RIGHT_SHIFT_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SWAP_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(PCMP_ARR_RGE) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(PCOP_ARR_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SET_ARR_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*atype(LATR_VALUE,?,?));Type(DUP_ARR_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(CMP_ARR_RGE) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(COP_ARR_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(STR_ARR_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*atype(LATR_VALUE,?,?));Type(VAL_ARR_RGE) == Cst(atype(LATR_VALUE,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(L_ARRAY3_RANGE_1)) == (? | ? | ? | arr_rge | REVERSE_RGE | ? | imported(Machine(L_ARRAY2_RANGE)) | LATR_minrge,LATR_maxrge,LATR_maxidx,LATR_VALUE | L_ARRAY3_RANGE_1);
  List_Of_HiddenCst_Ids(Implementation(L_ARRAY3_RANGE_1)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(L_ARRAY3_RANGE_1)) == (?);
  List_Of_VisibleVar_Ids(Implementation(L_ARRAY3_RANGE_1)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(L_ARRAY3_RANGE_1)) == (?: ?);
  List_Of_Ids(Machine(L_ARRAY2_RANGE)) == (? | ? | arr_rge | ? | VAL_ARR_RGE,STR_ARR_RGE,COP_ARR_RGE,CMP_ARR_RGE,DUP_ARR_RGE,SET_ARR_RGE,PCOP_ARR_RGE,PCMP_ARR_RGE,SWAP_RGE,RIGHT_SHIFT_RGE,LEFT_SHIFT_RGE,SEARCH_MIN_EQL_RGE,SEARCH_MAX_EQL_RGE | ? | ? | LADR_minrge,LADR_maxrge,LADR_maxidx,LADR_VALUE | L_ARRAY2_RANGE);
  List_Of_HiddenCst_Ids(Machine(L_ARRAY2_RANGE)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(L_ARRAY2_RANGE)) == (?);
  List_Of_VisibleVar_Ids(Machine(L_ARRAY2_RANGE)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(L_ARRAY2_RANGE)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Implementation(L_ARRAY3_RANGE_1)) == (Type(LATR_VALUE) == Prm(SetOf(atype(LATR_VALUE,?,?)));Type(LATR_maxidx) == Prm(btype(INTEGER,?,?));Type(LATR_maxrge) == Prm(btype(INTEGER,?,?));Type(LATR_minrge) == Prm(btype(INTEGER,?,?)))
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(L_ARRAY3_RANGE_1),REVERSE_RGE, 1) == (Type(kk) == Lvl(btype(INTEGER,?,?));Type(ll) == Lvl(btype(INTEGER,?,?)))
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
  List_Local_Operations(Implementation(L_ARRAY3_RANGE_1))==(?)
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
  TypingPredicate(Implementation(L_ARRAY3_RANGE_1))==(btrue)
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(L_ARRAY3_RANGE_1),Machine(L_ARRAY2_RANGE))==(arr_rge);
  ImportedVisVariablesList(Implementation(L_ARRAY3_RANGE_1),Machine(L_ARRAY2_RANGE))==(?)
END
&
THEORY ListLocalOpInvariantX END
)
