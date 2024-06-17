Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(L_ARRAY4_RANGE_1))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(L_ARRAY4_RANGE_1))==(Machine(L_ARRAY4_RANGE));
  Level(Implementation(L_ARRAY4_RANGE_1))==(1);
  Upper_Level(Implementation(L_ARRAY4_RANGE_1))==(Machine(L_ARRAY4_RANGE))
END
&
THEORY LoadedStructureX IS
  Implementation(L_ARRAY4_RANGE_1)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(L_ARRAY4_RANGE_1))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(L_ARRAY4_RANGE_1))==(L_ARRAY3_RANGE);
  Inherited_List_Includes(Implementation(L_ARRAY4_RANGE_1))==(L_ARRAY3_RANGE)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(L_ARRAY4_RANGE_1))==(VAL_ARR_RGE,STR_ARR_RGE,COP_ARR_RGE,CMP_ARR_RGE,DUP_ARR_RGE,SET_ARR_RGE,PCOP_ARR_RGE,PCMP_ARR_RGE,SWAP_RGE,RIGHT_SHIFT_RGE,LEFT_SHIFT_RGE,SEARCH_MIN_EQL_RGE,SEARCH_MAX_EQL_RGE,REVERSE_RGE)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(L_ARRAY4_RANGE_1))==(L_ARRAY3_RANGE)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(L_ARRAY4_RANGE_1))==(?);
  Context_List_Variables(Implementation(L_ARRAY4_RANGE_1))==(?);
  Abstract_List_Variables(Implementation(L_ARRAY4_RANGE_1))==(arr_rge);
  Local_List_Variables(Implementation(L_ARRAY4_RANGE_1))==(?);
  List_Variables(Implementation(L_ARRAY4_RANGE_1))==(arr_rge);
  External_List_Variables(Implementation(L_ARRAY4_RANGE_1))==(arr_rge)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(L_ARRAY4_RANGE_1))==(?);
  Abstract_List_VisibleVariables(Implementation(L_ARRAY4_RANGE_1))==(?);
  External_List_VisibleVariables(Implementation(L_ARRAY4_RANGE_1))==(?);
  Expanded_List_VisibleVariables(Implementation(L_ARRAY4_RANGE_1))==(?);
  List_VisibleVariables(Implementation(L_ARRAY4_RANGE_1))==(?);
  Internal_List_VisibleVariables(Implementation(L_ARRAY4_RANGE_1))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(L_ARRAY4_RANGE_1))==(btrue);
  Abstract_List_Invariant(Implementation(L_ARRAY4_RANGE_1))==(arr_rge: LAQR_minrge..LAQR_maxrge --> (0..LAQR_maxidx --> LAQR_minval..LAQR_maxval));
  Expanded_List_Invariant(Implementation(L_ARRAY4_RANGE_1))==(arr_rge: LAQR_minrge..LAQR_maxrge --> (0..LAQR_maxidx --> LAQR_minval..LAQR_maxval));
  Context_List_Invariant(Implementation(L_ARRAY4_RANGE_1))==(btrue);
  List_Invariant(Implementation(L_ARRAY4_RANGE_1))==(btrue)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(L_ARRAY4_RANGE_1))==(btrue);
  Expanded_List_Assertions(Implementation(L_ARRAY4_RANGE_1))==(btrue);
  Context_List_Assertions(Implementation(L_ARRAY4_RANGE_1))==(btrue);
  List_Assertions(Implementation(L_ARRAY4_RANGE_1))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(L_ARRAY4_RANGE_1))==(@(arr_rge$0).(arr_rge$0: LAQR_minrge..LAQR_maxrge --> (0..LAQR_maxidx --> LAQR_minval..LAQR_maxval) ==> arr_rge:=arr_rge$0));
  Context_List_Initialisation(Implementation(L_ARRAY4_RANGE_1))==(skip);
  List_Initialisation(Implementation(L_ARRAY4_RANGE_1))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(L_ARRAY4_RANGE_1))==(LAQR_minrge,LAQR_maxrge,LAQR_maxidx,LAQR_minval,LAQR_maxval)
END
&
THEORY ListInstanciatedParametersX IS
  Precond_Instanciated_Parameters(Implementation(L_ARRAY4_RANGE_1),Machine(L_ARRAY3_RANGE))==(btrue);
  List_Instanciated_Parameters(Implementation(L_ARRAY4_RANGE_1),Machine(L_ARRAY3_RANGE))==(LAQR_minrge,LAQR_maxrge,LAQR_maxidx,LAQR_minval..LAQR_maxval)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(L_ARRAY4_RANGE_1),Machine(L_ARRAY3_RANGE))==(LAQR_maxidx: NAT1 & LAQR_minrge: NAT & LAQR_maxrge: NAT & LAQR_minrge<LAQR_maxrge & LAQR_minval..LAQR_maxval: FIN(INTEGER) & not(LAQR_minval..LAQR_maxval = {}));
  List_Constraints(Implementation(L_ARRAY4_RANGE_1))==(LAQR_maxidx: NAT1 & LAQR_minrge: NAT & LAQR_maxrge: NAT & LAQR_minval: NAT & LAQR_maxval: NAT & LAQR_minrge<LAQR_maxrge & LAQR_minval<=LAQR_maxval);
  List_Context_Constraints(Implementation(L_ARRAY4_RANGE_1))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(L_ARRAY4_RANGE_1))==(SEARCH_MIN_GEQ_RGE,VAL_ARR_RGE,STR_ARR_RGE,COP_ARR_RGE,CMP_ARR_RGE,DUP_ARR_RGE,SET_ARR_RGE,PCOP_ARR_RGE,PCMP_ARR_RGE,SWAP_RGE,RIGHT_SHIFT_RGE,LEFT_SHIFT_RGE,SEARCH_MIN_EQL_RGE,SEARCH_MAX_EQL_RGE,REVERSE_RGE);
  List_Operations(Implementation(L_ARRAY4_RANGE_1))==(SEARCH_MIN_GEQ_RGE,VAL_ARR_RGE,STR_ARR_RGE,COP_ARR_RGE,CMP_ARR_RGE,DUP_ARR_RGE,SET_ARR_RGE,PCOP_ARR_RGE,PCMP_ARR_RGE,SWAP_RGE,RIGHT_SHIFT_RGE,LEFT_SHIFT_RGE,SEARCH_MIN_EQL_RGE,SEARCH_MAX_EQL_RGE,REVERSE_RGE)
END
&
THEORY ListInputX IS
  List_Input(Implementation(L_ARRAY4_RANGE_1),REVERSE_RGE)==(rng,ii,jj);
  List_Input(Implementation(L_ARRAY4_RANGE_1),SEARCH_MAX_EQL_RGE)==(rng,ii,jj,vv);
  List_Input(Implementation(L_ARRAY4_RANGE_1),SEARCH_MIN_EQL_RGE)==(rng,ii,jj,vv);
  List_Input(Implementation(L_ARRAY4_RANGE_1),LEFT_SHIFT_RGE)==(rng,ii,jj,nn);
  List_Input(Implementation(L_ARRAY4_RANGE_1),RIGHT_SHIFT_RGE)==(rng,ii,jj,nn);
  List_Input(Implementation(L_ARRAY4_RANGE_1),SWAP_RGE)==(rng,ii,jj);
  List_Input(Implementation(L_ARRAY4_RANGE_1),PCMP_ARR_RGE)==(rng2,idx2,rng1,ii,jj);
  List_Input(Implementation(L_ARRAY4_RANGE_1),PCOP_ARR_RGE)==(dest,idx_dst,src,ii,jj);
  List_Input(Implementation(L_ARRAY4_RANGE_1),SET_ARR_RGE)==(range,ii,jj,vv);
  List_Input(Implementation(L_ARRAY4_RANGE_1),DUP_ARR_RGE)==(dest1,dest2,src);
  List_Input(Implementation(L_ARRAY4_RANGE_1),CMP_ARR_RGE)==(range1,range2);
  List_Input(Implementation(L_ARRAY4_RANGE_1),COP_ARR_RGE)==(dest,src);
  List_Input(Implementation(L_ARRAY4_RANGE_1),STR_ARR_RGE)==(range,index,value);
  List_Input(Implementation(L_ARRAY4_RANGE_1),VAL_ARR_RGE)==(range,index);
  List_Input(Implementation(L_ARRAY4_RANGE_1),SEARCH_MIN_GEQ_RGE)==(rng,jj,kk,vv)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(L_ARRAY4_RANGE_1),REVERSE_RGE)==(?);
  List_Output(Implementation(L_ARRAY4_RANGE_1),SEARCH_MAX_EQL_RGE)==(rr,bb);
  List_Output(Implementation(L_ARRAY4_RANGE_1),SEARCH_MIN_EQL_RGE)==(rr,bb);
  List_Output(Implementation(L_ARRAY4_RANGE_1),LEFT_SHIFT_RGE)==(?);
  List_Output(Implementation(L_ARRAY4_RANGE_1),RIGHT_SHIFT_RGE)==(?);
  List_Output(Implementation(L_ARRAY4_RANGE_1),SWAP_RGE)==(?);
  List_Output(Implementation(L_ARRAY4_RANGE_1),PCMP_ARR_RGE)==(idx,bb);
  List_Output(Implementation(L_ARRAY4_RANGE_1),PCOP_ARR_RGE)==(?);
  List_Output(Implementation(L_ARRAY4_RANGE_1),SET_ARR_RGE)==(?);
  List_Output(Implementation(L_ARRAY4_RANGE_1),DUP_ARR_RGE)==(?);
  List_Output(Implementation(L_ARRAY4_RANGE_1),CMP_ARR_RGE)==(bb);
  List_Output(Implementation(L_ARRAY4_RANGE_1),COP_ARR_RGE)==(?);
  List_Output(Implementation(L_ARRAY4_RANGE_1),STR_ARR_RGE)==(?);
  List_Output(Implementation(L_ARRAY4_RANGE_1),VAL_ARR_RGE)==(value);
  List_Output(Implementation(L_ARRAY4_RANGE_1),SEARCH_MIN_GEQ_RGE)==(ii,bb)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(L_ARRAY4_RANGE_1),REVERSE_RGE)==(REVERSE_RGE(rng,ii,jj));
  List_Header(Implementation(L_ARRAY4_RANGE_1),SEARCH_MAX_EQL_RGE)==(rr,bb <-- SEARCH_MAX_EQL_RGE(rng,ii,jj,vv));
  List_Header(Implementation(L_ARRAY4_RANGE_1),SEARCH_MIN_EQL_RGE)==(rr,bb <-- SEARCH_MIN_EQL_RGE(rng,ii,jj,vv));
  List_Header(Implementation(L_ARRAY4_RANGE_1),LEFT_SHIFT_RGE)==(LEFT_SHIFT_RGE(rng,ii,jj,nn));
  List_Header(Implementation(L_ARRAY4_RANGE_1),RIGHT_SHIFT_RGE)==(RIGHT_SHIFT_RGE(rng,ii,jj,nn));
  List_Header(Implementation(L_ARRAY4_RANGE_1),SWAP_RGE)==(SWAP_RGE(rng,ii,jj));
  List_Header(Implementation(L_ARRAY4_RANGE_1),PCMP_ARR_RGE)==(idx,bb <-- PCMP_ARR_RGE(rng2,idx2,rng1,ii,jj));
  List_Header(Implementation(L_ARRAY4_RANGE_1),PCOP_ARR_RGE)==(PCOP_ARR_RGE(dest,idx_dst,src,ii,jj));
  List_Header(Implementation(L_ARRAY4_RANGE_1),SET_ARR_RGE)==(SET_ARR_RGE(range,ii,jj,vv));
  List_Header(Implementation(L_ARRAY4_RANGE_1),DUP_ARR_RGE)==(DUP_ARR_RGE(dest1,dest2,src));
  List_Header(Implementation(L_ARRAY4_RANGE_1),CMP_ARR_RGE)==(bb <-- CMP_ARR_RGE(range1,range2));
  List_Header(Implementation(L_ARRAY4_RANGE_1),COP_ARR_RGE)==(COP_ARR_RGE(dest,src));
  List_Header(Implementation(L_ARRAY4_RANGE_1),STR_ARR_RGE)==(STR_ARR_RGE(range,index,value));
  List_Header(Implementation(L_ARRAY4_RANGE_1),VAL_ARR_RGE)==(value <-- VAL_ARR_RGE(range,index));
  List_Header(Implementation(L_ARRAY4_RANGE_1),SEARCH_MIN_GEQ_RGE)==(ii,bb <-- SEARCH_MIN_GEQ_RGE(rng,jj,kk,vv))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(L_ARRAY4_RANGE_1),REVERSE_RGE)==(rng: LAQR_minrge..LAQR_maxrge & jj: 0..LAQR_maxidx & ii: 0..LAQR_maxidx);
  List_Precondition(Implementation(L_ARRAY4_RANGE_1),REVERSE_RGE)==(rng: LAQR_minrge..LAQR_maxrge & jj: 0..LAQR_maxidx & ii: 0..LAQR_maxidx);
  Own_Precondition(Implementation(L_ARRAY4_RANGE_1),SEARCH_MAX_EQL_RGE)==(rng: LAQR_minrge..LAQR_maxrge & jj: 0..LAQR_maxidx & ii: 0..LAQR_maxidx & ii<=jj & vv: LAQR_minval..LAQR_maxval);
  List_Precondition(Implementation(L_ARRAY4_RANGE_1),SEARCH_MAX_EQL_RGE)==(rng: LAQR_minrge..LAQR_maxrge & jj: 0..LAQR_maxidx & ii: 0..LAQR_maxidx & ii<=jj & vv: LAQR_minval..LAQR_maxval);
  Own_Precondition(Implementation(L_ARRAY4_RANGE_1),SEARCH_MIN_EQL_RGE)==(rng: LAQR_minrge..LAQR_maxrge & jj: 0..LAQR_maxidx & ii: 0..LAQR_maxidx & ii<=jj & vv: LAQR_minval..LAQR_maxval);
  List_Precondition(Implementation(L_ARRAY4_RANGE_1),SEARCH_MIN_EQL_RGE)==(rng: LAQR_minrge..LAQR_maxrge & jj: 0..LAQR_maxidx & ii: 0..LAQR_maxidx & ii<=jj & vv: LAQR_minval..LAQR_maxval);
  Own_Precondition(Implementation(L_ARRAY4_RANGE_1),LEFT_SHIFT_RGE)==(rng: LAQR_minrge..LAQR_maxrge & jj: 0..LAQR_maxidx & jj<=MAXINT-1 & ii: 0..LAQR_maxidx & ii<=jj & nn: NAT & nn<=ii);
  List_Precondition(Implementation(L_ARRAY4_RANGE_1),LEFT_SHIFT_RGE)==(rng: LAQR_minrge..LAQR_maxrge & jj: 0..LAQR_maxidx & jj<=MAXINT-1 & ii: 0..LAQR_maxidx & ii<=jj & nn: NAT & nn<=ii);
  Own_Precondition(Implementation(L_ARRAY4_RANGE_1),RIGHT_SHIFT_RGE)==(rng: LAQR_minrge..LAQR_maxrge & jj: 0..LAQR_maxidx & ii: 0..LAQR_maxidx & nn: 0..LAQR_maxidx & jj+nn: 0..LAQR_maxidx & ii<=jj);
  List_Precondition(Implementation(L_ARRAY4_RANGE_1),RIGHT_SHIFT_RGE)==(rng: LAQR_minrge..LAQR_maxrge & jj: 0..LAQR_maxidx & ii: 0..LAQR_maxidx & nn: 0..LAQR_maxidx & jj+nn: 0..LAQR_maxidx & ii<=jj);
  Own_Precondition(Implementation(L_ARRAY4_RANGE_1),SWAP_RGE)==(rng: LAQR_minrge..LAQR_maxrge & ii: 0..LAQR_maxidx & jj: 0..LAQR_maxidx);
  List_Precondition(Implementation(L_ARRAY4_RANGE_1),SWAP_RGE)==(rng: LAQR_minrge..LAQR_maxrge & ii: 0..LAQR_maxidx & jj: 0..LAQR_maxidx);
  Own_Precondition(Implementation(L_ARRAY4_RANGE_1),PCMP_ARR_RGE)==(rng2: LAQR_minrge..LAQR_maxrge & idx2: 0..LAQR_maxidx & rng1: LAQR_minrge..LAQR_maxrge & ii: 0..LAQR_maxidx & jj: 0..LAQR_maxidx & ii<=jj & idx2+jj-ii: 0..LAQR_maxidx);
  List_Precondition(Implementation(L_ARRAY4_RANGE_1),PCMP_ARR_RGE)==(rng2: LAQR_minrge..LAQR_maxrge & idx2: 0..LAQR_maxidx & rng1: LAQR_minrge..LAQR_maxrge & ii: 0..LAQR_maxidx & jj: 0..LAQR_maxidx & ii<=jj & idx2+jj-ii: 0..LAQR_maxidx);
  Own_Precondition(Implementation(L_ARRAY4_RANGE_1),PCOP_ARR_RGE)==(dest: LAQR_minrge..LAQR_maxrge & idx_dst: 0..LAQR_maxidx & src: LAQR_minrge..LAQR_maxrge & ii: 0..LAQR_maxidx & jj: 0..LAQR_maxidx & dest/=src & jj<=MAXINT-1 & ii<=jj & idx_dst+jj-ii: 0..LAQR_maxidx);
  List_Precondition(Implementation(L_ARRAY4_RANGE_1),PCOP_ARR_RGE)==(dest: LAQR_minrge..LAQR_maxrge & idx_dst: 0..LAQR_maxidx & src: LAQR_minrge..LAQR_maxrge & ii: 0..LAQR_maxidx & jj: 0..LAQR_maxidx & dest/=src & jj<=MAXINT-1 & ii<=jj & idx_dst+jj-ii: 0..LAQR_maxidx);
  Own_Precondition(Implementation(L_ARRAY4_RANGE_1),SET_ARR_RGE)==(range: LAQR_minrge..LAQR_maxrge & ii: NAT & jj: NAT & jj/=MAXINT & ii..jj <: 0..LAQR_maxidx & vv: LAQR_minval..LAQR_maxval);
  List_Precondition(Implementation(L_ARRAY4_RANGE_1),SET_ARR_RGE)==(range: LAQR_minrge..LAQR_maxrge & ii: NAT & jj: NAT & jj/=MAXINT & ii..jj <: 0..LAQR_maxidx & vv: LAQR_minval..LAQR_maxval);
  Own_Precondition(Implementation(L_ARRAY4_RANGE_1),DUP_ARR_RGE)==(dest1: NAT & dest2: NAT & dest2/=MAXINT & dest1..dest2 <: LAQR_minrge..LAQR_maxrge & src: LAQR_minrge..LAQR_maxrge);
  List_Precondition(Implementation(L_ARRAY4_RANGE_1),DUP_ARR_RGE)==(dest1: NAT & dest2: NAT & dest2/=MAXINT & dest1..dest2 <: LAQR_minrge..LAQR_maxrge & src: LAQR_minrge..LAQR_maxrge);
  Own_Precondition(Implementation(L_ARRAY4_RANGE_1),CMP_ARR_RGE)==(range1: LAQR_minrge..LAQR_maxrge & range2: LAQR_minrge..LAQR_maxrge);
  List_Precondition(Implementation(L_ARRAY4_RANGE_1),CMP_ARR_RGE)==(range1: LAQR_minrge..LAQR_maxrge & range2: LAQR_minrge..LAQR_maxrge);
  Own_Precondition(Implementation(L_ARRAY4_RANGE_1),COP_ARR_RGE)==(dest: LAQR_minrge..LAQR_maxrge & src: LAQR_minrge..LAQR_maxrge);
  List_Precondition(Implementation(L_ARRAY4_RANGE_1),COP_ARR_RGE)==(dest: LAQR_minrge..LAQR_maxrge & src: LAQR_minrge..LAQR_maxrge);
  Own_Precondition(Implementation(L_ARRAY4_RANGE_1),STR_ARR_RGE)==(range: LAQR_minrge..LAQR_maxrge & index: 0..LAQR_maxidx & value: LAQR_minval..LAQR_maxval);
  List_Precondition(Implementation(L_ARRAY4_RANGE_1),STR_ARR_RGE)==(range: LAQR_minrge..LAQR_maxrge & index: 0..LAQR_maxidx & value: LAQR_minval..LAQR_maxval);
  Own_Precondition(Implementation(L_ARRAY4_RANGE_1),VAL_ARR_RGE)==(range: LAQR_minrge..LAQR_maxrge & index: 0..LAQR_maxidx);
  List_Precondition(Implementation(L_ARRAY4_RANGE_1),VAL_ARR_RGE)==(range: LAQR_minrge..LAQR_maxrge & index: 0..LAQR_maxidx);
  Own_Precondition(Implementation(L_ARRAY4_RANGE_1),SEARCH_MIN_GEQ_RGE)==(btrue);
  List_Precondition(Implementation(L_ARRAY4_RANGE_1),SEARCH_MIN_GEQ_RGE)==(rng: LAQR_minrge..LAQR_maxrge & kk: 0..LAQR_maxidx & kk/=MAXINT & jj: 0..LAQR_maxidx & vv: LAQR_minval..LAQR_maxval & jj<=kk)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(L_ARRAY4_RANGE_1),SEARCH_MIN_GEQ_RGE)==(rng: LAQR_minrge..LAQR_maxrge & kk: 0..LAQR_maxidx & kk/=MAXINT & jj: 0..LAQR_maxidx & vv: LAQR_minval..LAQR_maxval & jj<=kk | @ll.((jj: INT | ii:=jj);(kk+1: INT & kk: INT & 1: INT | ll:=kk+1);bb:=FALSE;WHILE ii<ll & bb = FALSE DO @ww.((rng: LAQR_minrge..LAQR_maxrge & ii: 0..LAQR_maxidx | ww:=arr_rge(rng)(ii));(ww>=vv ==> bb:=TRUE [] not(ww>=vv) ==> skip);(ii+1: INT & ii: INT & 1: INT | ii:=ii+1)) INVARIANT ll = kk+1 & ii: jj..ll & bb = bool(not(ii = jj) & arr_rge(rng)(ii-1)>=vv) & (bb = FALSE => !uu.(uu: jj..ii-1 => arr_rge(rng)(uu)<vv)) & (bb = TRUE => !uu.(uu: jj..ii-2 => arr_rge(rng)(uu)<vv)) VARIANT ll-ii END;(bb = TRUE ==> (ii-1: INT & ii: INT & 1: INT | ii:=ii-1) [] not(bb = TRUE) ==> skip)));
  List_Substitution(Implementation(L_ARRAY4_RANGE_1),REVERSE_RGE)==(arr_rge(rng):=arr_rge(rng)<+%xx.(xx: ii..jj | arr_rge(rng)(jj+ii-xx)));
  Expanded_List_Substitution(Implementation(L_ARRAY4_RANGE_1),REVERSE_RGE)==(rng: LAQR_minrge..LAQR_maxrge & jj: 0..LAQR_maxidx & ii: 0..LAQR_maxidx | arr_rge:=arr_rge<+{rng|->(arr_rge(rng)<+%xx.(xx: ii..jj | arr_rge(rng)(jj+ii-xx)))});
  List_Substitution(Implementation(L_ARRAY4_RANGE_1),SEARCH_MAX_EQL_RGE)==(ANY nrr,nbb,sol WHERE nrr: NAT & nbb: BOOL & sol = (ii..jj<|arr_rge(rng))~[{vv}] & (sol/={} => nrr = max(sol)) & nbb = bool(sol/={}) THEN rr:=nrr || bb:=nbb END);
  Expanded_List_Substitution(Implementation(L_ARRAY4_RANGE_1),SEARCH_MAX_EQL_RGE)==(rng: LAQR_minrge..LAQR_maxrge & jj: 0..LAQR_maxidx & ii: 0..LAQR_maxidx & ii<=jj & vv: LAQR_minval..LAQR_maxval | @(nrr,nbb,sol).(nrr: NAT & nbb: BOOL & sol = (ii..jj<|arr_rge(rng))~[{vv}] & (sol/={} => nrr = max(sol)) & nbb = bool(sol/={}) ==> rr,bb:=nrr,nbb));
  List_Substitution(Implementation(L_ARRAY4_RANGE_1),SEARCH_MIN_EQL_RGE)==(ANY nrr,nbb,sol WHERE nrr: NAT & nbb: BOOL & sol = (ii..jj<|arr_rge(rng))~[{vv}] & (sol/={} => nrr = min(sol)) & nbb = bool(sol/={}) THEN rr:=nrr || bb:=nbb END);
  Expanded_List_Substitution(Implementation(L_ARRAY4_RANGE_1),SEARCH_MIN_EQL_RGE)==(rng: LAQR_minrge..LAQR_maxrge & jj: 0..LAQR_maxidx & ii: 0..LAQR_maxidx & ii<=jj & vv: LAQR_minval..LAQR_maxval | @(nrr,nbb,sol).(nrr: NAT & nbb: BOOL & sol = (ii..jj<|arr_rge(rng))~[{vv}] & (sol/={} => nrr = min(sol)) & nbb = bool(sol/={}) ==> rr,bb:=nrr,nbb));
  List_Substitution(Implementation(L_ARRAY4_RANGE_1),LEFT_SHIFT_RGE)==(arr_rge(rng):=arr_rge(rng)<+%xx.(xx: 0..LAQR_maxidx & xx+nn: ii..jj | arr_rge(rng)(xx+nn)));
  Expanded_List_Substitution(Implementation(L_ARRAY4_RANGE_1),LEFT_SHIFT_RGE)==(rng: LAQR_minrge..LAQR_maxrge & jj: 0..LAQR_maxidx & jj<=MAXINT-1 & ii: 0..LAQR_maxidx & ii<=jj & nn: NAT & nn<=ii | arr_rge:=arr_rge<+{rng|->(arr_rge(rng)<+%xx.(xx: 0..LAQR_maxidx & xx+nn: ii..jj | arr_rge(rng)(xx+nn)))});
  List_Substitution(Implementation(L_ARRAY4_RANGE_1),RIGHT_SHIFT_RGE)==(arr_rge(rng):=arr_rge(rng)<+%xx.(xx: ii+nn..jj+nn | arr_rge(rng)(xx-nn)));
  Expanded_List_Substitution(Implementation(L_ARRAY4_RANGE_1),RIGHT_SHIFT_RGE)==(rng: LAQR_minrge..LAQR_maxrge & jj: 0..LAQR_maxidx & ii: 0..LAQR_maxidx & nn: 0..LAQR_maxidx & jj+nn: 0..LAQR_maxidx & ii<=jj | arr_rge:=arr_rge<+{rng|->(arr_rge(rng)<+%xx.(xx: ii+nn..jj+nn | arr_rge(rng)(xx-nn)))});
  List_Substitution(Implementation(L_ARRAY4_RANGE_1),SWAP_RGE)==(arr_rge(rng):=arr_rge(rng)<+{ii|->arr_rge(rng)(jj),jj|->arr_rge(rng)(ii)});
  Expanded_List_Substitution(Implementation(L_ARRAY4_RANGE_1),SWAP_RGE)==(rng: LAQR_minrge..LAQR_maxrge & ii: 0..LAQR_maxidx & jj: 0..LAQR_maxidx | arr_rge:=arr_rge<+{rng|->(arr_rge(rng)<+{ii|->arr_rge(rng)(jj),jj|->arr_rge(rng)(ii)})});
  List_Substitution(Implementation(L_ARRAY4_RANGE_1),PCMP_ARR_RGE)==(ANY nidx,nbb,sol WHERE nidx: NAT & nbb: BOOL & sol = {xx | xx: ii..jj & arr_rge(rng1)(xx)/=arr_rge(rng2)(xx+idx2-ii)} & (sol/={} => nidx = min(sol)) & nbb = bool(sol/={}) THEN idx:=nidx || bb:=nbb END);
  Expanded_List_Substitution(Implementation(L_ARRAY4_RANGE_1),PCMP_ARR_RGE)==(rng2: LAQR_minrge..LAQR_maxrge & idx2: 0..LAQR_maxidx & rng1: LAQR_minrge..LAQR_maxrge & ii: 0..LAQR_maxidx & jj: 0..LAQR_maxidx & ii<=jj & idx2+jj-ii: 0..LAQR_maxidx | @(nidx,nbb,sol).(nidx: NAT & nbb: BOOL & sol = {xx | xx: ii..jj & arr_rge(rng1)(xx)/=arr_rge(rng2)(xx+idx2-ii)} & (sol/={} => nidx = min(sol)) & nbb = bool(sol/={}) ==> idx,bb:=nidx,nbb));
  List_Substitution(Implementation(L_ARRAY4_RANGE_1),PCOP_ARR_RGE)==(arr_rge(dest):=arr_rge(dest)<+%xx.(xx: idx_dst..idx_dst+jj-ii | arr_rge(src)(xx+ii-idx_dst)));
  Expanded_List_Substitution(Implementation(L_ARRAY4_RANGE_1),PCOP_ARR_RGE)==(dest: LAQR_minrge..LAQR_maxrge & idx_dst: 0..LAQR_maxidx & src: LAQR_minrge..LAQR_maxrge & ii: 0..LAQR_maxidx & jj: 0..LAQR_maxidx & dest/=src & jj<=MAXINT-1 & ii<=jj & idx_dst+jj-ii: 0..LAQR_maxidx | arr_rge:=arr_rge<+{dest|->(arr_rge(dest)<+%xx.(xx: idx_dst..idx_dst+jj-ii | arr_rge(src)(xx+ii-idx_dst)))});
  List_Substitution(Implementation(L_ARRAY4_RANGE_1),SET_ARR_RGE)==(arr_rge(range):=arr_rge(range)<+(ii..jj)*{vv});
  Expanded_List_Substitution(Implementation(L_ARRAY4_RANGE_1),SET_ARR_RGE)==(range: LAQR_minrge..LAQR_maxrge & ii: NAT & jj: NAT & jj/=MAXINT & ii..jj <: 0..LAQR_maxidx & vv: LAQR_minval..LAQR_maxval | arr_rge:=arr_rge<+{range|->(arr_rge(range)<+(ii..jj)*{vv})});
  List_Substitution(Implementation(L_ARRAY4_RANGE_1),DUP_ARR_RGE)==(arr_rge:=arr_rge<+(dest1..dest2)*{arr_rge(src)});
  Expanded_List_Substitution(Implementation(L_ARRAY4_RANGE_1),DUP_ARR_RGE)==(dest1: NAT & dest2: NAT & dest2/=MAXINT & dest1..dest2 <: LAQR_minrge..LAQR_maxrge & src: LAQR_minrge..LAQR_maxrge | arr_rge:=arr_rge<+(dest1..dest2)*{arr_rge(src)});
  List_Substitution(Implementation(L_ARRAY4_RANGE_1),CMP_ARR_RGE)==(bb:=bool(arr_rge(range1) = arr_rge(range2)));
  Expanded_List_Substitution(Implementation(L_ARRAY4_RANGE_1),CMP_ARR_RGE)==(range1: LAQR_minrge..LAQR_maxrge & range2: LAQR_minrge..LAQR_maxrge | bb:=bool(arr_rge(range1) = arr_rge(range2)));
  List_Substitution(Implementation(L_ARRAY4_RANGE_1),COP_ARR_RGE)==(arr_rge:=arr_rge<+{dest|->arr_rge(src)});
  Expanded_List_Substitution(Implementation(L_ARRAY4_RANGE_1),COP_ARR_RGE)==(dest: LAQR_minrge..LAQR_maxrge & src: LAQR_minrge..LAQR_maxrge | arr_rge:=arr_rge<+{dest|->arr_rge(src)});
  List_Substitution(Implementation(L_ARRAY4_RANGE_1),STR_ARR_RGE)==(arr_rge(range)(index):=value);
  Expanded_List_Substitution(Implementation(L_ARRAY4_RANGE_1),STR_ARR_RGE)==(range: LAQR_minrge..LAQR_maxrge & index: 0..LAQR_maxidx & value: LAQR_minval..LAQR_maxval | arr_rge:=arr_rge<+{range|->(arr_rge(range)<+{index|->value})});
  List_Substitution(Implementation(L_ARRAY4_RANGE_1),VAL_ARR_RGE)==(value:=arr_rge(range)(index));
  Expanded_List_Substitution(Implementation(L_ARRAY4_RANGE_1),VAL_ARR_RGE)==(range: LAQR_minrge..LAQR_maxrge & index: 0..LAQR_maxidx | value:=arr_rge(range)(index));
  List_Substitution(Implementation(L_ARRAY4_RANGE_1),SEARCH_MIN_GEQ_RGE)==(VAR ll IN ii:=jj;ll:=kk+1;bb:=FALSE;WHILE ii<ll & bb = FALSE DO VAR ww IN ww <-- VAL_ARR_RGE(rng,ii);IF ww>=vv THEN bb:=TRUE END;ii:=ii+1 END INVARIANT ll = kk+1 & ii: jj..ll & bb = bool(not(ii = jj) & arr_rge(rng)(ii-1)>=vv) & (bb = FALSE => !uu.(uu: jj..ii-1 => arr_rge(rng)(uu)<vv)) & (bb = TRUE => !uu.(uu: jj..ii-2 => arr_rge(rng)(uu)<vv)) VARIANT ll-ii END;IF bb = TRUE THEN ii:=ii-1 END END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(L_ARRAY4_RANGE_1))==(?);
  Inherited_List_Constants(Implementation(L_ARRAY4_RANGE_1))==(?);
  List_Constants(Implementation(L_ARRAY4_RANGE_1))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(L_ARRAY4_RANGE_1))==(?);
  Context_List_Defered(Implementation(L_ARRAY4_RANGE_1))==(?);
  Context_List_Sets(Implementation(L_ARRAY4_RANGE_1))==(?);
  List_Own_Enumerated(Implementation(L_ARRAY4_RANGE_1))==(?);
  List_Valuable_Sets(Implementation(L_ARRAY4_RANGE_1))==(?);
  Inherited_List_Enumerated(Implementation(L_ARRAY4_RANGE_1))==(?);
  Inherited_List_Defered(Implementation(L_ARRAY4_RANGE_1))==(?);
  Inherited_List_Sets(Implementation(L_ARRAY4_RANGE_1))==(?);
  List_Enumerated(Implementation(L_ARRAY4_RANGE_1))==(?);
  List_Defered(Implementation(L_ARRAY4_RANGE_1))==(?);
  List_Sets(Implementation(L_ARRAY4_RANGE_1))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(L_ARRAY4_RANGE_1))==(?);
  Expanded_List_HiddenConstants(Implementation(L_ARRAY4_RANGE_1))==(?);
  List_HiddenConstants(Implementation(L_ARRAY4_RANGE_1))==(?);
  External_List_HiddenConstants(Implementation(L_ARRAY4_RANGE_1))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(L_ARRAY4_RANGE_1))==(btrue);
  Context_List_Properties(Implementation(L_ARRAY4_RANGE_1))==(btrue);
  Inherited_List_Properties(Implementation(L_ARRAY4_RANGE_1))==(btrue);
  List_Properties(Implementation(L_ARRAY4_RANGE_1))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(L_ARRAY4_RANGE_1))==(aa: aa);
  List_Values(Implementation(L_ARRAY4_RANGE_1))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(L_ARRAY4_RANGE_1),Machine(L_ARRAY3_RANGE))==(VAL_ARR_RGE,STR_ARR_RGE,COP_ARR_RGE,CMP_ARR_RGE,DUP_ARR_RGE,SET_ARR_RGE,PCOP_ARR_RGE,PCMP_ARR_RGE,SWAP_RGE,RIGHT_SHIFT_RGE,LEFT_SHIFT_RGE,SEARCH_MIN_EQL_RGE,SEARCH_MAX_EQL_RGE,REVERSE_RGE)
END
&
THEORY InheritedEnvX IS
  Operations(Implementation(L_ARRAY4_RANGE_1))==(Type(SEARCH_MIN_GEQ_RGE) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(REVERSE_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SEARCH_MAX_EQL_RGE) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SEARCH_MIN_EQL_RGE) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(LEFT_SHIFT_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(RIGHT_SHIFT_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SWAP_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(PCMP_ARR_RGE) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(PCOP_ARR_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SET_ARR_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(DUP_ARR_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(CMP_ARR_RGE) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(COP_ARR_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(STR_ARR_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(VAL_ARR_RGE) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(L_ARRAY4_RANGE_1)) == (? | ? | ? | arr_rge | SEARCH_MIN_GEQ_RGE | ? | imported(Machine(L_ARRAY3_RANGE)) | LAQR_minrge,LAQR_maxrge,LAQR_maxidx,LAQR_minval,LAQR_maxval | L_ARRAY4_RANGE_1);
  List_Of_HiddenCst_Ids(Implementation(L_ARRAY4_RANGE_1)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(L_ARRAY4_RANGE_1)) == (?);
  List_Of_VisibleVar_Ids(Implementation(L_ARRAY4_RANGE_1)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(L_ARRAY4_RANGE_1)) == (?: ?);
  List_Of_Ids(Machine(L_ARRAY3_RANGE)) == (? | ? | arr_rge | ? | VAL_ARR_RGE,STR_ARR_RGE,COP_ARR_RGE,CMP_ARR_RGE,DUP_ARR_RGE,SET_ARR_RGE,PCOP_ARR_RGE,PCMP_ARR_RGE,SWAP_RGE,RIGHT_SHIFT_RGE,LEFT_SHIFT_RGE,SEARCH_MIN_EQL_RGE,SEARCH_MAX_EQL_RGE,REVERSE_RGE | ? | ? | LATR_minrge,LATR_maxrge,LATR_maxidx,LATR_VALUE | L_ARRAY3_RANGE);
  List_Of_HiddenCst_Ids(Machine(L_ARRAY3_RANGE)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(L_ARRAY3_RANGE)) == (?);
  List_Of_VisibleVar_Ids(Machine(L_ARRAY3_RANGE)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(L_ARRAY3_RANGE)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Implementation(L_ARRAY4_RANGE_1)) == (Type(LAQR_maxval) == Prm(btype(INTEGER,?,?));Type(LAQR_minval) == Prm(btype(INTEGER,?,?));Type(LAQR_maxidx) == Prm(btype(INTEGER,?,?));Type(LAQR_maxrge) == Prm(btype(INTEGER,?,?));Type(LAQR_minrge) == Prm(btype(INTEGER,?,?)))
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(L_ARRAY4_RANGE_1),SEARCH_MIN_GEQ_RGE, 2) == (Type(ww) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(L_ARRAY4_RANGE_1),SEARCH_MIN_GEQ_RGE, 1) == (Type(ll) == Lvl(btype(INTEGER,?,?)))
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
  List_Local_Operations(Implementation(L_ARRAY4_RANGE_1))==(?)
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
  TypingPredicate(Implementation(L_ARRAY4_RANGE_1))==(btrue)
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(L_ARRAY4_RANGE_1),Machine(L_ARRAY3_RANGE))==(arr_rge);
  ImportedVisVariablesList(Implementation(L_ARRAY4_RANGE_1),Machine(L_ARRAY3_RANGE))==(?)
END
&
THEORY ListLocalOpInvariantX END
)
