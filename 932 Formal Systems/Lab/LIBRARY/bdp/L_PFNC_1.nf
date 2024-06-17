Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(L_PFNC_1))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(L_PFNC_1))==(Machine(L_PFNC));
  Level(Implementation(L_PFNC_1))==(1);
  Upper_Level(Implementation(L_PFNC_1))==(Machine(L_PFNC))
END
&
THEORY LoadedStructureX IS
  Implementation(L_PFNC_1)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(L_PFNC_1))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(L_PFNC_1))==(pf_vrb.L_ARRAY5);
  Inherited_List_Includes(Implementation(L_PFNC_1))==(pf_vrb.L_ARRAY5)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(L_PFNC_1))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(L_PFNC_1))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(L_PFNC_1))==(?);
  Context_List_Variables(Implementation(L_PFNC_1))==(?);
  Abstract_List_Variables(Implementation(L_PFNC_1))==(pfnc_vrb);
  Local_List_Variables(Implementation(L_PFNC_1))==(?);
  List_Variables(Implementation(L_PFNC_1))==(pf_vrbarr_vrb);
  External_List_Variables(Implementation(L_PFNC_1))==(pf_vrb.arr_vrb)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(L_PFNC_1))==(?);
  Abstract_List_VisibleVariables(Implementation(L_PFNC_1))==(?);
  External_List_VisibleVariables(Implementation(L_PFNC_1))==(?);
  Expanded_List_VisibleVariables(Implementation(L_PFNC_1))==(?);
  List_VisibleVariables(Implementation(L_PFNC_1))==(?);
  Internal_List_VisibleVariables(Implementation(L_PFNC_1))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(L_PFNC_1))==(btrue);
  Abstract_List_Invariant(Implementation(L_PFNC_1))==(pfnc_vrb: 0..LPF_maxidx +-> LPF_minval..LPF_maxval);
  Expanded_List_Invariant(Implementation(L_PFNC_1))==(pf_vrbarr_vrb: 0..LPF_maxidx --> 0..MAXINT);
  Context_List_Invariant(Implementation(L_PFNC_1))==(btrue);
  List_Invariant(Implementation(L_PFNC_1))==(pf_vrbarr_vrb = (0..LPF_maxidx)*{MAXINT}<+pfnc_vrb)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(L_PFNC_1))==(btrue);
  Expanded_List_Assertions(Implementation(L_PFNC_1))==(btrue);
  Context_List_Assertions(Implementation(L_PFNC_1))==(btrue);
  List_Assertions(Implementation(L_PFNC_1))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(L_PFNC_1))==(@(arr_vrb$0).(arr_vrb$0: 0..LPF_maxidx --> 0..MAXINT ==> pf_vrbarr_vrb:=arr_vrb$0);(0: NAT & LPF_maxidx: NAT & LPF_maxidx/=MAXINT & 0..LPF_maxidx <: 0..LPF_maxidx & MAXINT: 0..MAXINT | pf_vrbarr_vrb:=pf_vrbarr_vrb<+(0..LPF_maxidx)*{MAXINT}));
  Context_List_Initialisation(Implementation(L_PFNC_1))==(skip);
  List_Initialisation(Implementation(L_PFNC_1))==((pf_vrb.SET_ARRAY)(0,LPF_maxidx,MAXINT))
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(L_PFNC_1))==(LPF_minval,LPF_maxval,LPF_maxidx)
END
&
THEORY ListInstanciatedParametersX IS
  Precond_Instanciated_Parameters(Implementation(L_PFNC_1),Machine(pf_vrb.L_ARRAY5))==(btrue);
  List_Instanciated_Parameters(Implementation(L_PFNC_1),Machine(pf_vrb.L_ARRAY5))==(0,MAXINT,LPF_maxidx)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(L_PFNC_1),Machine(pf_vrb.L_ARRAY5))==(0: NAT & MAXINT: NAT & LPF_maxidx: NAT1 & 0<=MAXINT);
  List_Constraints(Implementation(L_PFNC_1))==(LPF_minval: NAT & LPF_maxval: NAT & LPF_minval<=LPF_maxval & LPF_maxval/=MAXINT & LPF_maxidx: NAT1 & LPF_maxidx/=MAXINT);
  List_Context_Constraints(Implementation(L_PFNC_1))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(L_PFNC_1))==(VAL_PFNC,STR_PFNC,XST_PFNC,RMV_PFNC,SET_PFNC,SWAP_PFNC,RIGHT_SHIFT_PFNC,LEFT_SHIFT_PFNC,SEARCH_MAX_EQL_PFNC,SEARCH_MIN_EQL_PFNC,REVERSE_PFNC,ASCENDING_SORT_PFNC);
  List_Operations(Implementation(L_PFNC_1))==(VAL_PFNC,STR_PFNC,XST_PFNC,RMV_PFNC,SET_PFNC,SWAP_PFNC,RIGHT_SHIFT_PFNC,LEFT_SHIFT_PFNC,SEARCH_MAX_EQL_PFNC,SEARCH_MIN_EQL_PFNC,REVERSE_PFNC,ASCENDING_SORT_PFNC)
END
&
THEORY ListInputX IS
  List_Input(Implementation(L_PFNC_1),VAL_PFNC)==(ii);
  List_Input(Implementation(L_PFNC_1),STR_PFNC)==(ii,vv);
  List_Input(Implementation(L_PFNC_1),XST_PFNC)==(ii);
  List_Input(Implementation(L_PFNC_1),RMV_PFNC)==(ii);
  List_Input(Implementation(L_PFNC_1),SET_PFNC)==(ii,jj,vv);
  List_Input(Implementation(L_PFNC_1),SWAP_PFNC)==(ii,jj);
  List_Input(Implementation(L_PFNC_1),RIGHT_SHIFT_PFNC)==(ii,jj,nn);
  List_Input(Implementation(L_PFNC_1),LEFT_SHIFT_PFNC)==(ii,jj,nn);
  List_Input(Implementation(L_PFNC_1),SEARCH_MAX_EQL_PFNC)==(ii,jj,vv);
  List_Input(Implementation(L_PFNC_1),SEARCH_MIN_EQL_PFNC)==(ii,jj,vv);
  List_Input(Implementation(L_PFNC_1),REVERSE_PFNC)==(ii,jj);
  List_Input(Implementation(L_PFNC_1),ASCENDING_SORT_PFNC)==(ii,jj)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(L_PFNC_1),VAL_PFNC)==(vv);
  List_Output(Implementation(L_PFNC_1),STR_PFNC)==(?);
  List_Output(Implementation(L_PFNC_1),XST_PFNC)==(bb);
  List_Output(Implementation(L_PFNC_1),RMV_PFNC)==(?);
  List_Output(Implementation(L_PFNC_1),SET_PFNC)==(?);
  List_Output(Implementation(L_PFNC_1),SWAP_PFNC)==(?);
  List_Output(Implementation(L_PFNC_1),RIGHT_SHIFT_PFNC)==(?);
  List_Output(Implementation(L_PFNC_1),LEFT_SHIFT_PFNC)==(?);
  List_Output(Implementation(L_PFNC_1),SEARCH_MAX_EQL_PFNC)==(rr,bb);
  List_Output(Implementation(L_PFNC_1),SEARCH_MIN_EQL_PFNC)==(rr,bb);
  List_Output(Implementation(L_PFNC_1),REVERSE_PFNC)==(?);
  List_Output(Implementation(L_PFNC_1),ASCENDING_SORT_PFNC)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(L_PFNC_1),VAL_PFNC)==(vv <-- VAL_PFNC(ii));
  List_Header(Implementation(L_PFNC_1),STR_PFNC)==(STR_PFNC(ii,vv));
  List_Header(Implementation(L_PFNC_1),XST_PFNC)==(bb <-- XST_PFNC(ii));
  List_Header(Implementation(L_PFNC_1),RMV_PFNC)==(RMV_PFNC(ii));
  List_Header(Implementation(L_PFNC_1),SET_PFNC)==(SET_PFNC(ii,jj,vv));
  List_Header(Implementation(L_PFNC_1),SWAP_PFNC)==(SWAP_PFNC(ii,jj));
  List_Header(Implementation(L_PFNC_1),RIGHT_SHIFT_PFNC)==(RIGHT_SHIFT_PFNC(ii,jj,nn));
  List_Header(Implementation(L_PFNC_1),LEFT_SHIFT_PFNC)==(LEFT_SHIFT_PFNC(ii,jj,nn));
  List_Header(Implementation(L_PFNC_1),SEARCH_MAX_EQL_PFNC)==(rr,bb <-- SEARCH_MAX_EQL_PFNC(ii,jj,vv));
  List_Header(Implementation(L_PFNC_1),SEARCH_MIN_EQL_PFNC)==(rr,bb <-- SEARCH_MIN_EQL_PFNC(ii,jj,vv));
  List_Header(Implementation(L_PFNC_1),REVERSE_PFNC)==(REVERSE_PFNC(ii,jj));
  List_Header(Implementation(L_PFNC_1),ASCENDING_SORT_PFNC)==(ASCENDING_SORT_PFNC(ii,jj))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(L_PFNC_1),VAL_PFNC)==(btrue);
  List_Precondition(Implementation(L_PFNC_1),VAL_PFNC)==(ii: 0..LPF_maxidx & ii: dom(pfnc_vrb));
  Own_Precondition(Implementation(L_PFNC_1),STR_PFNC)==(btrue);
  List_Precondition(Implementation(L_PFNC_1),STR_PFNC)==(ii: 0..LPF_maxidx & vv: LPF_minval..LPF_maxval);
  Own_Precondition(Implementation(L_PFNC_1),XST_PFNC)==(btrue);
  List_Precondition(Implementation(L_PFNC_1),XST_PFNC)==(ii: 0..LPF_maxidx);
  Own_Precondition(Implementation(L_PFNC_1),RMV_PFNC)==(btrue);
  List_Precondition(Implementation(L_PFNC_1),RMV_PFNC)==(ii: 0..LPF_maxidx & ii: dom(pfnc_vrb));
  Own_Precondition(Implementation(L_PFNC_1),SET_PFNC)==(btrue);
  List_Precondition(Implementation(L_PFNC_1),SET_PFNC)==(ii: NAT & jj: NAT & jj/=MAXINT & ii..jj <: 0..LPF_maxidx & vv: LPF_minval..LPF_maxval);
  Own_Precondition(Implementation(L_PFNC_1),SWAP_PFNC)==(btrue);
  List_Precondition(Implementation(L_PFNC_1),SWAP_PFNC)==(ii: 0..LPF_maxidx & ii: dom(pfnc_vrb) & jj: 0..LPF_maxidx & jj: dom(pfnc_vrb));
  Own_Precondition(Implementation(L_PFNC_1),RIGHT_SHIFT_PFNC)==(btrue);
  List_Precondition(Implementation(L_PFNC_1),RIGHT_SHIFT_PFNC)==(jj: NAT & ii: NAT & nn: NAT & jj+nn: 0..LPF_maxidx & ii<=jj & ii..jj <: dom(pfnc_vrb));
  Own_Precondition(Implementation(L_PFNC_1),LEFT_SHIFT_PFNC)==(btrue);
  List_Precondition(Implementation(L_PFNC_1),LEFT_SHIFT_PFNC)==(jj: NAT & ii: NAT & ii<=jj & ii..jj <: dom(pfnc_vrb) & nn: NAT & nn<=ii);
  Own_Precondition(Implementation(L_PFNC_1),SEARCH_MAX_EQL_PFNC)==(btrue);
  List_Precondition(Implementation(L_PFNC_1),SEARCH_MAX_EQL_PFNC)==(jj: 0..LPF_maxidx & ii: 0..LPF_maxidx & ii<=jj & vv: LPF_minval..LPF_maxval);
  Own_Precondition(Implementation(L_PFNC_1),SEARCH_MIN_EQL_PFNC)==(btrue);
  List_Precondition(Implementation(L_PFNC_1),SEARCH_MIN_EQL_PFNC)==(jj: 0..LPF_maxidx & ii: 0..LPF_maxidx & ii<=jj & vv: LPF_minval..LPF_maxval);
  Own_Precondition(Implementation(L_PFNC_1),REVERSE_PFNC)==(btrue);
  List_Precondition(Implementation(L_PFNC_1),REVERSE_PFNC)==(jj: 0..LPF_maxidx & ii: 0..LPF_maxidx & ii..jj <: dom(pfnc_vrb));
  Own_Precondition(Implementation(L_PFNC_1),ASCENDING_SORT_PFNC)==(btrue);
  List_Precondition(Implementation(L_PFNC_1),ASCENDING_SORT_PFNC)==(jj: 0..LPF_maxidx & ii: 0..LPF_maxidx & ii..jj <: dom(pfnc_vrb))
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(L_PFNC_1),ASCENDING_SORT_PFNC)==(jj: 0..LPF_maxidx & ii: 0..LPF_maxidx & ii..jj <: dom(pfnc_vrb) & jj: 0..LPF_maxidx & jj<=MAXINT-1 & ii: 0..LPF_maxidx & ii<=MAXINT-1 | @(ff,bb).(ff: ii..jj >->> ii..jj & bb: 0..LPF_maxidx +-> 0..MAXINT & bb = (ff;pf_vrbarr_vrb) & !uu.(uu: ii..jj-1 => bb(uu)<=bb(uu+1)) ==> pf_vrbarr_vrb:=pf_vrbarr_vrb<+bb));
  Expanded_List_Substitution(Implementation(L_PFNC_1),REVERSE_PFNC)==(jj: 0..LPF_maxidx & ii: 0..LPF_maxidx & ii..jj <: dom(pfnc_vrb) & jj: 0..LPF_maxidx & ii: 0..LPF_maxidx | pf_vrbarr_vrb:=pf_vrbarr_vrb<+%xx.(xx: ii..jj | pf_vrbarr_vrb(jj+ii-xx)));
  Expanded_List_Substitution(Implementation(L_PFNC_1),SEARCH_MIN_EQL_PFNC)==(jj: 0..LPF_maxidx & ii: 0..LPF_maxidx & ii<=jj & vv: LPF_minval..LPF_maxval & jj: 0..LPF_maxidx & ii: 0..LPF_maxidx & ii<=jj & vv: 0..MAXINT | @(nrr,nbb,sol).(nrr: NAT & nbb: BOOL & sol = (ii..jj<|pf_vrbarr_vrb)~[{vv}] & (sol/={} => nrr = min(sol)) & nbb = bool(sol/={}) ==> rr,bb:=nrr,nbb));
  Expanded_List_Substitution(Implementation(L_PFNC_1),SEARCH_MAX_EQL_PFNC)==(jj: 0..LPF_maxidx & ii: 0..LPF_maxidx & ii<=jj & vv: LPF_minval..LPF_maxval & jj: 0..LPF_maxidx & ii: 0..LPF_maxidx & ii<=jj & vv: 0..MAXINT | @(nrr,nbb,sol).(nrr: NAT & nbb: BOOL & sol = (ii..jj<|pf_vrbarr_vrb)~[{vv}] & (sol/={} => nrr = max(sol)) & nbb = bool(sol/={}) ==> rr,bb:=nrr,nbb));
  Expanded_List_Substitution(Implementation(L_PFNC_1),LEFT_SHIFT_PFNC)==(jj: NAT & ii: NAT & ii<=jj & ii..jj <: dom(pfnc_vrb) & nn: NAT & nn<=ii & jj: 0..LPF_maxidx & jj<=MAXINT-1 & ii: 0..LPF_maxidx & ii<=jj & nn: NAT & nn<=ii | pf_vrbarr_vrb:=pf_vrbarr_vrb<+%xx.(xx: 0..LPF_maxidx & xx+nn: ii..jj | pf_vrbarr_vrb(xx+nn)));
  Expanded_List_Substitution(Implementation(L_PFNC_1),RIGHT_SHIFT_PFNC)==(jj: NAT & ii: NAT & nn: NAT & jj+nn: 0..LPF_maxidx & ii<=jj & ii..jj <: dom(pfnc_vrb) & jj: 0..LPF_maxidx & ii: 0..LPF_maxidx & nn: 0..LPF_maxidx & jj+nn: 0..LPF_maxidx & ii<=jj | pf_vrbarr_vrb:=pf_vrbarr_vrb<+%xx.(xx: ii+nn..jj+nn | pf_vrbarr_vrb(xx-nn)));
  Expanded_List_Substitution(Implementation(L_PFNC_1),SWAP_PFNC)==(ii: 0..LPF_maxidx & ii: dom(pfnc_vrb) & jj: 0..LPF_maxidx & jj: dom(pfnc_vrb) & ii: 0..LPF_maxidx & jj: 0..LPF_maxidx | pf_vrbarr_vrb:=pf_vrbarr_vrb<+{ii|->pf_vrbarr_vrb(jj),jj|->pf_vrbarr_vrb(ii)});
  Expanded_List_Substitution(Implementation(L_PFNC_1),SET_PFNC)==(ii: NAT & jj: NAT & jj/=MAXINT & ii..jj <: 0..LPF_maxidx & vv: LPF_minval..LPF_maxval & ii: NAT & jj: NAT & jj/=MAXINT & ii..jj <: 0..LPF_maxidx & vv: 0..MAXINT | pf_vrbarr_vrb:=pf_vrbarr_vrb<+(ii..jj)*{vv});
  Expanded_List_Substitution(Implementation(L_PFNC_1),RMV_PFNC)==(ii: 0..LPF_maxidx & ii: dom(pfnc_vrb) & ii: 0..LPF_maxidx & MAXINT: 0..MAXINT | pf_vrbarr_vrb:=pf_vrbarr_vrb<+{ii|->MAXINT});
  Expanded_List_Substitution(Implementation(L_PFNC_1),XST_PFNC)==(ii: 0..LPF_maxidx | @zz.((ii: 0..LPF_maxidx | zz:=pf_vrbarr_vrb(ii));(zz<MAXINT ==> bb:=TRUE [] not(zz<MAXINT) ==> bb:=FALSE)));
  Expanded_List_Substitution(Implementation(L_PFNC_1),STR_PFNC)==(ii: 0..LPF_maxidx & vv: LPF_minval..LPF_maxval & ii: 0..LPF_maxidx & vv: 0..MAXINT | pf_vrbarr_vrb:=pf_vrbarr_vrb<+{ii|->vv});
  Expanded_List_Substitution(Implementation(L_PFNC_1),VAL_PFNC)==(ii: 0..LPF_maxidx & ii: dom(pfnc_vrb) & ii: 0..LPF_maxidx | vv:=pf_vrbarr_vrb(ii));
  List_Substitution(Implementation(L_PFNC_1),VAL_PFNC)==(vv <-- (pf_vrb.VAL_ARRAY)(ii));
  List_Substitution(Implementation(L_PFNC_1),STR_PFNC)==((pf_vrb.STR_ARRAY)(ii,vv));
  List_Substitution(Implementation(L_PFNC_1),XST_PFNC)==(VAR zz IN zz <-- (pf_vrb.VAL_ARRAY)(ii);IF zz<MAXINT THEN bb:=TRUE ELSE bb:=FALSE END END);
  List_Substitution(Implementation(L_PFNC_1),RMV_PFNC)==((pf_vrb.STR_ARRAY)(ii,MAXINT));
  List_Substitution(Implementation(L_PFNC_1),SET_PFNC)==((pf_vrb.SET_ARRAY)(ii,jj,vv));
  List_Substitution(Implementation(L_PFNC_1),SWAP_PFNC)==((pf_vrb.SWAP_ARRAY)(ii,jj));
  List_Substitution(Implementation(L_PFNC_1),RIGHT_SHIFT_PFNC)==((pf_vrb.RIGHT_SHIFT_ARRAY)(ii,jj,nn));
  List_Substitution(Implementation(L_PFNC_1),LEFT_SHIFT_PFNC)==((pf_vrb.LEFT_SHIFT_ARRAY)(ii,jj,nn));
  List_Substitution(Implementation(L_PFNC_1),SEARCH_MAX_EQL_PFNC)==(rr,bb <-- (pf_vrb.SEARCH_MAX_EQL_ARRAY)(ii,jj,vv));
  List_Substitution(Implementation(L_PFNC_1),SEARCH_MIN_EQL_PFNC)==(rr,bb <-- (pf_vrb.SEARCH_MIN_EQL_ARRAY)(ii,jj,vv));
  List_Substitution(Implementation(L_PFNC_1),REVERSE_PFNC)==((pf_vrb.REVERSE_ARRAY)(ii,jj));
  List_Substitution(Implementation(L_PFNC_1),ASCENDING_SORT_PFNC)==((pf_vrb.ASCENDING_SORT_ARRAY)(ii,jj))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(L_PFNC_1))==(?);
  Inherited_List_Constants(Implementation(L_PFNC_1))==(?);
  List_Constants(Implementation(L_PFNC_1))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(L_PFNC_1))==(?);
  Context_List_Defered(Implementation(L_PFNC_1))==(?);
  Context_List_Sets(Implementation(L_PFNC_1))==(?);
  List_Own_Enumerated(Implementation(L_PFNC_1))==(?);
  List_Valuable_Sets(Implementation(L_PFNC_1))==(?);
  Inherited_List_Enumerated(Implementation(L_PFNC_1))==(?);
  Inherited_List_Defered(Implementation(L_PFNC_1))==(?);
  Inherited_List_Sets(Implementation(L_PFNC_1))==(?);
  List_Enumerated(Implementation(L_PFNC_1))==(?);
  List_Defered(Implementation(L_PFNC_1))==(?);
  List_Sets(Implementation(L_PFNC_1))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(L_PFNC_1))==(?);
  Expanded_List_HiddenConstants(Implementation(L_PFNC_1))==(?);
  List_HiddenConstants(Implementation(L_PFNC_1))==(?);
  External_List_HiddenConstants(Implementation(L_PFNC_1))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(L_PFNC_1))==(btrue);
  Context_List_Properties(Implementation(L_PFNC_1))==(btrue);
  Inherited_List_Properties(Implementation(L_PFNC_1))==(btrue);
  List_Properties(Implementation(L_PFNC_1))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(L_PFNC_1))==(aa: aa);
  List_Values(Implementation(L_PFNC_1))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(L_PFNC_1),Machine(L_ARRAY5))==(VAL_ARRAY,STR_ARRAY,SET_ARRAY,SWAP_ARRAY,RIGHT_SHIFT_ARRAY,LEFT_SHIFT_ARRAY,SEARCH_MAX_EQL_ARRAY,SEARCH_MIN_EQL_ARRAY,REVERSE_ARRAY,SEARCH_MIN_GEQ_ARRAY,ASCENDING_SORT_ARRAY)
END
&
THEORY InheritedEnvX IS
  Operations(Implementation(L_PFNC_1))==(Type(ASCENDING_SORT_PFNC) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(REVERSE_PFNC) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SEARCH_MIN_EQL_PFNC) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SEARCH_MAX_EQL_PFNC) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(LEFT_SHIFT_PFNC) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(RIGHT_SHIFT_PFNC) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SWAP_PFNC) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SET_PFNC) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(RMV_PFNC) == Cst(No_type,btype(INTEGER,?,?));Type(XST_PFNC) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?));Type(STR_PFNC) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(VAL_PFNC) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(L_PFNC_1)) == (? | ? | ? | pf_vrbarr_vrb | VAL_PFNC,STR_PFNC,XST_PFNC,RMV_PFNC,SET_PFNC,SWAP_PFNC,RIGHT_SHIFT_PFNC,LEFT_SHIFT_PFNC,SEARCH_MAX_EQL_PFNC,SEARCH_MIN_EQL_PFNC,REVERSE_PFNC,ASCENDING_SORT_PFNC | ? | imported(Machine(pf_vrb.L_ARRAY5)) | LPF_minval,LPF_maxval,LPF_maxidx | L_PFNC_1);
  List_Of_HiddenCst_Ids(Implementation(L_PFNC_1)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(L_PFNC_1)) == (?);
  List_Of_VisibleVar_Ids(Implementation(L_PFNC_1)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(L_PFNC_1)) == (?: ?);
  List_Of_Ids(Machine(L_ARRAY5)) == (? | ? | arr_vrb | ? | VAL_ARRAY,STR_ARRAY,SET_ARRAY,SWAP_ARRAY,RIGHT_SHIFT_ARRAY,LEFT_SHIFT_ARRAY,SEARCH_MAX_EQL_ARRAY,SEARCH_MIN_EQL_ARRAY,REVERSE_ARRAY,SEARCH_MIN_GEQ_ARRAY,ASCENDING_SORT_ARRAY | ? | ? | LAC_minval,LAC_maxval,LAC_maxidx | L_ARRAY5);
  List_Of_HiddenCst_Ids(Machine(L_ARRAY5)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(L_ARRAY5)) == (?);
  List_Of_VisibleVar_Ids(Machine(L_ARRAY5)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(L_ARRAY5)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Implementation(L_PFNC_1)) == (Type(LPF_maxidx) == Prm(btype(INTEGER,?,?));Type(LPF_maxval) == Prm(btype(INTEGER,?,?));Type(LPF_minval) == Prm(btype(INTEGER,?,?)))
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(L_PFNC_1),XST_PFNC, 1) == (Type(zz) == Lvl(btype(INTEGER,?,?)))
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
  List_Local_Operations(Implementation(L_PFNC_1))==(?)
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
  TypingPredicate(Implementation(L_PFNC_1))==(btrue)
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(L_PFNC_1),Machine(pf_vrb.L_ARRAY5))==(pf_vrb.arr_vrb);
  ImportedVisVariablesList(Implementation(L_PFNC_1),Machine(pf_vrb.L_ARRAY5))==(?)
END
&
THEORY ListLocalOpInvariantX END
)
