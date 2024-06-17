Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(Stats2_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(Stats2_i))==(Machine(Stats2));
  Level(Implementation(Stats2_i))==(1);
  Upper_Level(Implementation(Stats2_i))==(Machine(Stats2))
END
&
THEORY LoadedStructureX IS
  Implementation(Stats2_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(Stats2_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(Stats2_i))==(L_ARRAY5);
  Inherited_List_Includes(Implementation(Stats2_i))==(L_ARRAY5)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(Stats2_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(Stats2_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(Stats2_i))==(?);
  Context_List_Variables(Implementation(Stats2_i))==(?);
  Abstract_List_Variables(Implementation(Stats2_i))==(record);
  Local_List_Variables(Implementation(Stats2_i))==(?);
  List_Variables(Implementation(Stats2_i))==(arr_vrb);
  External_List_Variables(Implementation(Stats2_i))==(arr_vrb)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(Stats2_i))==(?);
  Abstract_List_VisibleVariables(Implementation(Stats2_i))==(?);
  External_List_VisibleVariables(Implementation(Stats2_i))==(?);
  Expanded_List_VisibleVariables(Implementation(Stats2_i))==(?);
  List_VisibleVariables(Implementation(Stats2_i))==(?);
  Internal_List_VisibleVariables(Implementation(Stats2_i))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(Stats2_i))==(btrue);
  Abstract_List_Invariant(Implementation(Stats2_i))==(record: seq(0..10) & size(record)<=maxlen);
  Expanded_List_Invariant(Implementation(Stats2_i))==(arr_vrb: 0..maxlen-1 --> 0..11);
  Context_List_Invariant(Implementation(Stats2_i))==(btrue);
  List_Invariant(Implementation(Stats2_i))==(!nn.(nn: 0..10 => card(arr_vrb|>{nn}) = card(record|>{nn})) & !(ii,jj).(ii: 0..maxlen-1 & jj: 0..maxlen-1 & ii<=jj => arr_vrb(ii)<=arr_vrb(jj)))
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(Stats2_i))==(btrue);
  Expanded_List_Assertions(Implementation(Stats2_i))==(btrue);
  Context_List_Assertions(Implementation(Stats2_i))==(btrue);
  List_Assertions(Implementation(Stats2_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(Stats2_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(Stats2_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(Stats2_i))==(@(arr_vrb$0).(arr_vrb$0: 0..maxlen-1 --> 0..11 ==> arr_vrb:=arr_vrb$0);(maxlen-1: INT & maxlen: INT & 1: INT & 0: NAT & maxlen-1: NAT & maxlen-1/=MAXINT & 0..maxlen-1 <: 0..maxlen-1 & 11: 0..11 | arr_vrb:=arr_vrb<+(0..maxlen-1)*{11}));
  Context_List_Initialisation(Implementation(Stats2_i))==(skip);
  List_Initialisation(Implementation(Stats2_i))==(SET_ARRAY(0,maxlen-1,11))
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(Stats2_i))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  Precond_Instanciated_Parameters(Implementation(Stats2_i),Machine(L_ARRAY5))==(10-1: INT & 10: INT & 1: INT);
  List_Instanciated_Parameters(Implementation(Stats2_i),Machine(L_ARRAY5))==(0,11,maxlen-1)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(Stats2_i),Machine(L_ARRAY5))==(0: NAT & 11: NAT & maxlen-1: NAT1 & 0<=11);
  List_Constraints(Implementation(Stats2_i))==(btrue);
  List_Context_Constraints(Implementation(Stats2_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(Stats2_i))==(tested,querytot,queryreg,querypc,querymean,querymedian);
  List_Operations(Implementation(Stats2_i))==(tested,querytot,queryreg,querypc,querymean,querymedian)
END
&
THEORY ListInputX IS
  List_Input(Implementation(Stats2_i),tested)==(nn);
  List_Input(Implementation(Stats2_i),querytot)==(?);
  List_Input(Implementation(Stats2_i),queryreg)==(nn);
  List_Input(Implementation(Stats2_i),querypc)==(nn);
  List_Input(Implementation(Stats2_i),querymean)==(?);
  List_Input(Implementation(Stats2_i),querymedian)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(Stats2_i),tested)==(?);
  List_Output(Implementation(Stats2_i),querytot)==(oo);
  List_Output(Implementation(Stats2_i),queryreg)==(oo);
  List_Output(Implementation(Stats2_i),querypc)==(oo);
  List_Output(Implementation(Stats2_i),querymean)==(oo);
  List_Output(Implementation(Stats2_i),querymedian)==(oo)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(Stats2_i),tested)==(tested(nn));
  List_Header(Implementation(Stats2_i),querytot)==(oo <-- querytot);
  List_Header(Implementation(Stats2_i),queryreg)==(oo <-- queryreg(nn));
  List_Header(Implementation(Stats2_i),querypc)==(oo <-- querypc(nn));
  List_Header(Implementation(Stats2_i),querymean)==(oo <-- querymean);
  List_Header(Implementation(Stats2_i),querymedian)==(oo <-- querymedian)
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(Stats2_i),tested)==(btrue);
  List_Precondition(Implementation(Stats2_i),tested)==(nn: 0..10 & size(record)<maxlen);
  Own_Precondition(Implementation(Stats2_i),querytot)==(btrue);
  List_Precondition(Implementation(Stats2_i),querytot)==(btrue);
  Own_Precondition(Implementation(Stats2_i),queryreg)==(btrue);
  List_Precondition(Implementation(Stats2_i),queryreg)==(nn: 0..10);
  Own_Precondition(Implementation(Stats2_i),querypc)==(btrue);
  List_Precondition(Implementation(Stats2_i),querypc)==(nn: 0..10 & size(record)/=0);
  Own_Precondition(Implementation(Stats2_i),querymean)==(btrue);
  List_Precondition(Implementation(Stats2_i),querymean)==(size(record)/=0);
  Own_Precondition(Implementation(Stats2_i),querymedian)==(btrue);
  List_Precondition(Implementation(Stats2_i),querymedian)==(size(record)/=0)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(Stats2_i),querymedian)==(size(record)/=0 | @(rr,bb,dd).((maxlen-1: INT & maxlen: INT & 1: INT & maxlen-1: 0..maxlen-1 & 0: 0..maxlen-1 & 0<=maxlen-1 & 11: 0..11 | @(nrr,nbb,sol).(nrr: NAT & nbb: BOOL & sol = (0..maxlen-1<|arr_vrb)~[{11}] & (sol/={} => nrr = min(sol)) & nbb = bool(sol/={}) ==> rr,bb:=nrr,nbb));(bb = FALSE ==> (maxlen: INT | rr:=maxlen) [] not(bb = FALSE) ==> skip);(rr/=0 ==> ((rr mod 2: NAT & rr: NAT & 2: NAT1 | dd:=rr mod 2);(dd = 1 ==> (rr-1: INT & rr: INT & 1: INT & (rr-1)/2: INT & 2: INT & not(2 = 0) & (rr-1)/2: 0..maxlen-1 | oo:=arr_vrb((rr-1)/2)) [] not(dd = 1) ==> @(o1,o2).((rr/2: INT & rr: INT & 2: INT & not(2 = 0) & rr/2-1: INT & 1: INT & rr/2-1: 0..maxlen-1 | o1:=arr_vrb(rr/2-1));(rr/2: INT & rr: INT & 2: INT & not(2 = 0) & rr/2: 0..maxlen-1 | o2:=arr_vrb(rr/2));((o1+o2)/2: INT & o1+o2: INT & o1: INT & o2: INT & 2: INT & not(2 = 0) | oo:=(o1+o2)/2)))) [] not(rr/=0) ==> skip)));
  Expanded_List_Substitution(Implementation(Stats2_i),querymean)==(size(record)/=0 | @(rr,bb).((maxlen-1: INT & maxlen: INT & 1: INT & maxlen-1: 0..maxlen-1 & 0: 0..maxlen-1 & 0<=maxlen-1 & 11: 0..11 | @(nrr,nbb,sol).(nrr: NAT & nbb: BOOL & sol = (0..maxlen-1<|arr_vrb)~[{11}] & (sol/={} => nrr = min(sol)) & nbb = bool(sol/={}) ==> rr,bb:=nrr,nbb));(bb = FALSE ==> (maxlen: INT | rr:=maxlen) [] not(bb = FALSE) ==> skip);(rr/=0 ==> @(tt,ii,mm).(tt:=0;ii:=0;WHILE ii/=rr DO (ii: 0..maxlen-1 | mm:=arr_vrb(ii));(tt+mm: INT & tt: INT & mm: INT | tt:=tt+mm);(ii+1: INT & ii: INT & 1: INT | ii:=ii+1) INVARIANT 0<=ii & ii<=rr & tt = SIGMA(xx).(xx: 0..ii-1 | arr_vrb(xx)) VARIANT rr-ii END;(tt/rr: INT & tt: INT & rr: INT & not(rr = 0) | oo:=tt/rr)) [] not(rr/=0) ==> skip)));
  Expanded_List_Substitution(Implementation(Stats2_i),querypc)==(nn: 0..10 & size(record)/=0 | @(rr,bb).((maxlen-1: INT & maxlen: INT & 1: INT & maxlen-1: 0..maxlen-1 & 0: 0..maxlen-1 & 0<=maxlen-1 & 11: 0..11 | @(nrr,nbb,sol).(nrr: NAT & nbb: BOOL & sol = (0..maxlen-1<|arr_vrb)~[{11}] & (sol/={} => nrr = min(sol)) & nbb = bool(sol/={}) ==> rr,bb:=nrr,nbb));(bb = FALSE ==> (maxlen: INT | rr:=maxlen) [] not(bb = FALSE) ==> skip);(rr/=0 ==> @(rs,bs,rh,bh).((maxlen-1: INT & maxlen: INT & 1: INT & maxlen-1: 0..maxlen-1 & 0: 0..maxlen-1 & 0<=maxlen-1 & nn: 0..11 | @(nrr,nbb,sol).(nrr: NAT & nbb: BOOL & sol = (0..maxlen-1<|arr_vrb)~[{nn}] & (sol/={} => nrr = min(sol)) & nbb = bool(sol/={}) ==> rs,bs:=nrr,nbb));(bs = FALSE ==> (0: INT | oo:=0) [] not(bs = FALSE) ==> ((maxlen-1: INT & maxlen: INT & 1: INT & maxlen-1: 0..maxlen-1 & 0: 0..maxlen-1 & 0<=maxlen-1 & nn: 0..11 | @(nrr,nbb,sol).(nrr: NAT & nbb: BOOL & sol = (0..maxlen-1<|arr_vrb)~[{nn}] & (sol/={} => nrr = max(sol)) & nbb = bool(sol/={}) ==> rh,bh:=nrr,nbb));((rh-rs+1)*100/rr: INT & rh-rs: INT & rh: INT & rs: INT & rh-rs+1: INT & 1: INT & (rh-rs+1)*100: INT & 100: INT & rr: INT & not(rr = 0) | oo:=(rh-rs+1)*100/rr)))) [] not(rr/=0) ==> skip)));
  Expanded_List_Substitution(Implementation(Stats2_i),queryreg)==(nn: 0..10 | @(rs,bs,rh,bh).((maxlen-1: INT & maxlen: INT & 1: INT & maxlen-1: 0..maxlen-1 & 0: 0..maxlen-1 & 0<=maxlen-1 & nn: 0..11 | @(nrr,nbb,sol).(nrr: NAT & nbb: BOOL & sol = (0..maxlen-1<|arr_vrb)~[{nn}] & (sol/={} => nrr = min(sol)) & nbb = bool(sol/={}) ==> rs,bs:=nrr,nbb));(maxlen-1: INT & maxlen: INT & 1: INT & maxlen-1: 0..maxlen-1 & 0: 0..maxlen-1 & 0<=maxlen-1 & nn: 0..11 | @(nrr,nbb,sol).(nrr: NAT & nbb: BOOL & sol = (0..maxlen-1<|arr_vrb)~[{nn}] & (sol/={} => nrr = max(sol)) & nbb = bool(sol/={}) ==> rh,bh:=nrr,nbb));(bs = FALSE ==> (0: INT | oo:=0) [] not(bs = FALSE) ==> (rh-rs+1: INT & rh-rs: INT & rh: INT & rs: INT & 1: INT | oo:=rh-rs+1))));
  Expanded_List_Substitution(Implementation(Stats2_i),querytot)==(btrue | @(rr,bb).((maxlen-1: INT & maxlen: INT & 1: INT & maxlen-1: 0..maxlen-1 & 0: 0..maxlen-1 & 0<=maxlen-1 & 11: 0..11 | @(nrr,nbb,sol).(nrr: NAT & nbb: BOOL & sol = (0..maxlen-1<|arr_vrb)~[{11}] & (sol/={} => nrr = min(sol)) & nbb = bool(sol/={}) ==> rr,bb:=nrr,nbb));(bb = FALSE ==> (maxlen: INT | oo:=maxlen) [] not(bb = FALSE) ==> (rr: INT | oo:=rr))));
  Expanded_List_Substitution(Implementation(Stats2_i),tested)==(nn: 0..10 & size(record)<maxlen | @(rr,bb).((maxlen-1: INT & maxlen: INT & 1: INT & maxlen-1: 0..maxlen-1 & 0: 0..maxlen-1 & 0<=maxlen-1 & 11: 0..11 | @(nrr,nbb,sol).(nrr: NAT & nbb: BOOL & sol = (0..maxlen-1<|arr_vrb)~[{11}] & (sol/={} => nrr = min(sol)) & nbb = bool(sol/={}) ==> rr,bb:=nrr,nbb));(bb = TRUE ==> ((rr: 0..maxlen-1 & nn: 0..11 | arr_vrb:=arr_vrb<+{rr|->nn});(rr: 0..maxlen-1 & rr<=MAXINT-1 & 0: 0..maxlen-1 & 0<=MAXINT-1 | @(ff$1,bb$1).(ff$1: 0..rr >->> 0..rr & bb$1: 0..maxlen-1 +-> 0..11 & bb$1 = (ff$1;arr_vrb) & !uu.(uu: 0..rr-1 => bb$1(uu)<=bb$1(uu+1)) ==> arr_vrb:=arr_vrb<+bb$1))) [] not(bb = TRUE) ==> skip)));
  List_Substitution(Implementation(Stats2_i),tested)==(VAR rr,bb IN rr,bb <-- SEARCH_MIN_EQL_ARRAY(0,maxlen-1,11);IF bb = TRUE THEN STR_ARRAY(rr,nn);ASCENDING_SORT_ARRAY(0,rr) END END);
  List_Substitution(Implementation(Stats2_i),querytot)==(VAR rr,bb IN rr,bb <-- SEARCH_MIN_EQL_ARRAY(0,maxlen-1,11);IF bb = FALSE THEN oo:=maxlen ELSE oo:=rr END END);
  List_Substitution(Implementation(Stats2_i),queryreg)==(VAR rs,bs,rh,bh IN rs,bs <-- SEARCH_MIN_EQL_ARRAY(0,maxlen-1,nn);rh,bh <-- SEARCH_MAX_EQL_ARRAY(0,maxlen-1,nn);IF bs = FALSE THEN oo:=0 ELSE oo:=rh-rs+1 END END);
  List_Substitution(Implementation(Stats2_i),querypc)==(VAR rr,bb IN rr,bb <-- SEARCH_MIN_EQL_ARRAY(0,maxlen-1,11);IF bb = FALSE THEN rr:=maxlen END;IF rr/=0 THEN VAR rs,bs,rh,bh IN rs,bs <-- SEARCH_MIN_EQL_ARRAY(0,maxlen-1,nn);IF bs = FALSE THEN oo:=0 ELSE rh,bh <-- SEARCH_MAX_EQL_ARRAY(0,maxlen-1,nn);oo:=(rh-rs+1)*100/rr END END END END);
  List_Substitution(Implementation(Stats2_i),querymean)==(VAR rr,bb IN rr,bb <-- SEARCH_MIN_EQL_ARRAY(0,maxlen-1,11);IF bb = FALSE THEN rr:=maxlen END;IF rr/=0 THEN VAR tt,ii,mm IN tt:=0;ii:=0;WHILE ii/=rr DO mm <-- VAL_ARRAY(ii);tt:=tt+mm;ii:=ii+1 INVARIANT 0<=ii & ii<=rr & tt = SIGMA(xx).(xx: 0..ii-1 | arr_vrb(xx)) VARIANT rr-ii END;oo:=tt/rr END END END);
  List_Substitution(Implementation(Stats2_i),querymedian)==(VAR rr,bb,dd IN rr,bb <-- SEARCH_MIN_EQL_ARRAY(0,maxlen-1,11);IF bb = FALSE THEN rr:=maxlen END;IF rr/=0 THEN dd:=rr mod 2;IF dd = 1 THEN oo <-- VAL_ARRAY((rr-1)/2) ELSE VAR o1,o2 IN o1 <-- VAL_ARRAY(rr/2-1);o2 <-- VAL_ARRAY(rr/2);oo:=(o1+o2)/2 END END END END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(Stats2_i))==(maxlen);
  Inherited_List_Constants(Implementation(Stats2_i))==(maxlen);
  List_Constants(Implementation(Stats2_i))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(Stats2_i))==(?);
  Context_List_Defered(Implementation(Stats2_i))==(?);
  Context_List_Sets(Implementation(Stats2_i))==(?);
  List_Own_Enumerated(Implementation(Stats2_i))==(?);
  List_Valuable_Sets(Implementation(Stats2_i))==(?);
  Inherited_List_Enumerated(Implementation(Stats2_i))==(?);
  Inherited_List_Defered(Implementation(Stats2_i))==(?);
  Inherited_List_Sets(Implementation(Stats2_i))==(?);
  List_Enumerated(Implementation(Stats2_i))==(?);
  List_Defered(Implementation(Stats2_i))==(?);
  List_Sets(Implementation(Stats2_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(Stats2_i))==(?);
  Expanded_List_HiddenConstants(Implementation(Stats2_i))==(?);
  List_HiddenConstants(Implementation(Stats2_i))==(?);
  External_List_HiddenConstants(Implementation(Stats2_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(Stats2_i))==(maxlen: NAT1);
  Context_List_Properties(Implementation(Stats2_i))==(btrue);
  Inherited_List_Properties(Implementation(Stats2_i))==(btrue);
  List_Properties(Implementation(Stats2_i))==(btrue)
END
&
THEORY ListValuesX IS
  Precond_Valued_Objects(Implementation(Stats2_i))==(btrue);
  Values_Subs(Implementation(Stats2_i))==(maxlen: 10);
  List_Values(Implementation(Stats2_i))==(maxlen = 10)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(Stats2_i),Machine(L_ARRAY5))==(VAL_ARRAY,STR_ARRAY,SET_ARRAY,SWAP_ARRAY,RIGHT_SHIFT_ARRAY,LEFT_SHIFT_ARRAY,SEARCH_MAX_EQL_ARRAY,SEARCH_MIN_EQL_ARRAY,REVERSE_ARRAY,SEARCH_MIN_GEQ_ARRAY,ASCENDING_SORT_ARRAY)
END
&
THEORY InheritedEnvX IS
  Operations(Implementation(Stats2_i))==(Type(querymedian) == Cst(btype(INTEGER,?,?),No_type);Type(querymean) == Cst(btype(INTEGER,?,?),No_type);Type(querypc) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(queryreg) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(querytot) == Cst(btype(INTEGER,?,?),No_type);Type(tested) == Cst(No_type,btype(INTEGER,?,?)));
  Constants(Implementation(Stats2_i))==(Type(maxlen) == Cst(btype(INTEGER,?,?)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Stats2_i)) == (? | ? | ? | arr_vrb | tested,querytot,queryreg,querypc,querymean,querymedian | ? | imported(Machine(L_ARRAY5)) | ? | Stats2_i);
  List_Of_HiddenCst_Ids(Implementation(Stats2_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Stats2_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(Stats2_i)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(Stats2_i)) == (?: ?);
  List_Of_Ids(Machine(L_ARRAY5)) == (? | ? | arr_vrb | ? | VAL_ARRAY,STR_ARRAY,SET_ARRAY,SWAP_ARRAY,RIGHT_SHIFT_ARRAY,LEFT_SHIFT_ARRAY,SEARCH_MAX_EQL_ARRAY,SEARCH_MIN_EQL_ARRAY,REVERSE_ARRAY,SEARCH_MIN_GEQ_ARRAY,ASCENDING_SORT_ARRAY | ? | ? | LAC_minval,LAC_maxval,LAC_maxidx | L_ARRAY5);
  List_Of_HiddenCst_Ids(Machine(L_ARRAY5)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(L_ARRAY5)) == (?);
  List_Of_VisibleVar_Ids(Machine(L_ARRAY5)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(L_ARRAY5)) == (?: ?)
END
&
THEORY ConstantsEnvX IS
  Constants(Implementation(Stats2_i)) == (Type(maxlen) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(Stats2_i),tested, 1) == (Type(rr) == Lvl(btype(INTEGER,?,?));Type(bb) == Lvl(btype(BOOL,?,?)));
  Variables_Loc(Implementation(Stats2_i),querytot, 1) == (Type(rr) == Lvl(btype(INTEGER,?,?));Type(bb) == Lvl(btype(BOOL,?,?)));
  Variables_Loc(Implementation(Stats2_i),queryreg, 1) == (Type(rs) == Lvl(btype(INTEGER,?,?));Type(bs) == Lvl(btype(BOOL,?,?));Type(rh) == Lvl(btype(INTEGER,?,?));Type(bh) == Lvl(btype(BOOL,?,?)));
  Variables_Loc(Implementation(Stats2_i),querypc, 2) == (Type(rs) == Lvl(btype(INTEGER,?,?));Type(bs) == Lvl(btype(BOOL,?,?));Type(rh) == Lvl(btype(INTEGER,?,?));Type(bh) == Lvl(btype(BOOL,?,?)));
  Variables_Loc(Implementation(Stats2_i),querypc, 1) == (Type(rr) == Lvl(btype(INTEGER,?,?));Type(bb) == Lvl(btype(BOOL,?,?)));
  Variables_Loc(Implementation(Stats2_i),querymean, 2) == (Type(tt) == Lvl(btype(INTEGER,?,?));Type(ii) == Lvl(btype(INTEGER,?,?));Type(mm) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(Stats2_i),querymean, 1) == (Type(rr) == Lvl(btype(INTEGER,?,?));Type(bb) == Lvl(btype(BOOL,?,?)));
  Variables_Loc(Implementation(Stats2_i),querymedian, 2) == (Type(o1) == Lvl(btype(INTEGER,?,?));Type(o2) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(Stats2_i),querymedian, 1) == (Type(rr) == Lvl(btype(INTEGER,?,?));Type(bb) == Lvl(btype(BOOL,?,?));Type(dd) == Lvl(btype(INTEGER,?,?)))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
&
THEORY ListLocalOperationsX IS
  List_Local_Operations(Implementation(Stats2_i))==(?)
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
  TypingPredicate(Implementation(Stats2_i))==(btrue)
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(Stats2_i),Machine(L_ARRAY5))==(arr_vrb);
  ImportedVisVariablesList(Implementation(Stats2_i),Machine(L_ARRAY5))==(?)
END
&
THEORY ListLocalOpInvariantX END
)
