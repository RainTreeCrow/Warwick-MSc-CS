Normalised(
THEORY MagicNumberX IS
  MagicNumber(Refinement(Buffer_r))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Refinement(Buffer_r))==(Machine(Buffer));
  Level(Refinement(Buffer_r))==(1);
  Upper_Level(Refinement(Buffer_r))==(Machine(Buffer))
END
&
THEORY LoadedStructureX IS
  Refinement(Buffer_r)
END
&
THEORY ListSeesX IS
  List_Sees(Refinement(Buffer_r))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Refinement(Buffer_r))==(?);
  List_Includes(Refinement(Buffer_r))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Refinement(Buffer_r))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Refinement(Buffer_r))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Refinement(Buffer_r))==(?);
  Context_List_Variables(Refinement(Buffer_r))==(?);
  Abstract_List_Variables(Refinement(Buffer_r))==(buff);
  Local_List_Variables(Refinement(Buffer_r))==(next,start,aa);
  List_Variables(Refinement(Buffer_r))==(next,start,aa);
  External_List_Variables(Refinement(Buffer_r))==(next,start,aa)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Refinement(Buffer_r))==(?);
  Abstract_List_VisibleVariables(Refinement(Buffer_r))==(?);
  External_List_VisibleVariables(Refinement(Buffer_r))==(?);
  Expanded_List_VisibleVariables(Refinement(Buffer_r))==(?);
  List_VisibleVariables(Refinement(Buffer_r))==(?);
  Internal_List_VisibleVariables(Refinement(Buffer_r))==(?)
END
&
THEORY ListOfNewVariablesX IS
  List_Of_New_Variables(Refinement(Buffer_r))==(next,start,aa)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Refinement(Buffer_r))==(btrue);
  Expanded_List_Invariant(Refinement(Buffer_r))==(btrue);
  Abstract_List_Invariant(Refinement(Buffer_r))==(buff: seq(ELEM) & size(buff)<=qlen);
  Context_List_Invariant(Refinement(Buffer_r))==(btrue);
  List_Invariant(Refinement(Buffer_r))==(aa: 1..qlen --> ELEM & start: 0..qlen & next: 1..qlen & start = 0 <=> (buff = <>) & (start/=0 => (start<next => size(buff) = next-start & !ii.(ii: start..next-1 => buff(ii-start+1) = aa(ii))) & (start>=next => size(buff) = qlen+next-start & !ii.(ii: start..qlen => buff(ii-start+1) = aa(ii)) & (next>1 => !ii.(ii: 1..next-1 => buff(ii+qlen-start+1) = aa(ii))))) & start = next <=> (size(buff) = qlen))
END
&
THEORY ListVariantX IS
  List_Variant(Refinement(Buffer_r))==(0)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Refinement(Buffer_r))==(btrue);
  Abstract_List_Assertions(Refinement(Buffer_r))==(btrue);
  Context_List_Assertions(Refinement(Buffer_r))==(btrue);
  List_Assertions(Refinement(Buffer_r))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Refinement(Buffer_r))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Refinement(Buffer_r))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Refinement(Buffer_r))==(@(aa$0).(aa$0: 1..qlen --> ELEM ==> aa:=aa$0) || start:=0 || next:=1);
  Context_List_Initialisation(Refinement(Buffer_r))==(skip);
  List_Initialisation(Refinement(Buffer_r))==(aa:: 1..qlen --> ELEM || start:=0 || next:=1)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Refinement(Buffer_r))==(add,remove,emptyquery,fullquery,contentsquery);
  List_Operations(Refinement(Buffer_r))==(add,remove,emptyquery,fullquery,contentsquery)
END
&
THEORY ListInputX IS
  List_Input(Refinement(Buffer_r),add)==(xx);
  List_Input(Refinement(Buffer_r),remove)==(?);
  List_Input(Refinement(Buffer_r),emptyquery)==(?);
  List_Input(Refinement(Buffer_r),fullquery)==(?);
  List_Input(Refinement(Buffer_r),contentsquery)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Refinement(Buffer_r),add)==(?);
  List_Output(Refinement(Buffer_r),remove)==(ee);
  List_Output(Refinement(Buffer_r),emptyquery)==(rr);
  List_Output(Refinement(Buffer_r),fullquery)==(rr);
  List_Output(Refinement(Buffer_r),contentsquery)==(oo)
END
&
THEORY ListHeaderX IS
  List_Header(Refinement(Buffer_r),add)==(add(xx));
  List_Header(Refinement(Buffer_r),remove)==(ee <-- remove);
  List_Header(Refinement(Buffer_r),emptyquery)==(rr <-- emptyquery);
  List_Header(Refinement(Buffer_r),fullquery)==(rr <-- fullquery);
  List_Header(Refinement(Buffer_r),contentsquery)==(oo <-- contentsquery)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Refinement(Buffer_r),add)==(btrue);
  List_Precondition(Refinement(Buffer_r),add)==(xx: ELEM & size(buff)<qlen);
  Own_Precondition(Refinement(Buffer_r),remove)==(btrue);
  List_Precondition(Refinement(Buffer_r),remove)==(buff/=<>);
  Own_Precondition(Refinement(Buffer_r),emptyquery)==(btrue);
  List_Precondition(Refinement(Buffer_r),emptyquery)==(btrue);
  Own_Precondition(Refinement(Buffer_r),fullquery)==(btrue);
  List_Precondition(Refinement(Buffer_r),fullquery)==(btrue);
  Own_Precondition(Refinement(Buffer_r),contentsquery)==(btrue);
  List_Precondition(Refinement(Buffer_r),contentsquery)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Refinement(Buffer_r),contentsquery)==(btrue | start = 0 ==> oo:=0 [] not(start = 0) ==> (start<next ==> oo:=next-start [] not(start<next) ==> oo:=qlen+next-start));
  Expanded_List_Substitution(Refinement(Buffer_r),fullquery)==(btrue | start = next ==> rr:=yes [] not(start = next) ==> rr:=no);
  Expanded_List_Substitution(Refinement(Buffer_r),emptyquery)==(btrue | start = 0 ==> rr:=yes [] not(start = 0) ==> rr:=no);
  Expanded_List_Substitution(Refinement(Buffer_r),remove)==(buff/=<> | start/=0 ==> (ee:=aa(start);(start = qlen ==> start:=1 [] not(start = qlen) ==> start:=start+1);(start = next ==> (start:=0;next:=1) [] not(start = next) ==> skip)) [] not(start/=0) ==> skip);
  Expanded_List_Substitution(Refinement(Buffer_r),add)==(xx: ELEM & size(buff)<qlen | start/=next ==> (start = 0 ==> start:=1 [] not(start = 0) ==> skip;aa:=aa<+{next|->xx};(next = qlen ==> next:=1 [] not(next = qlen) ==> next:=next+1)) [] not(start/=next) ==> skip);
  List_Substitution(Refinement(Buffer_r),add)==(IF start/=next THEN IF start = 0 THEN start:=1 END;aa(next):=xx;IF next = qlen THEN next:=1 ELSE next:=next+1 END END);
  List_Substitution(Refinement(Buffer_r),remove)==(IF start/=0 THEN ee:=aa(start);IF start = qlen THEN start:=1 ELSE start:=start+1 END;IF start = next THEN BEGIN start:=0;next:=1 END END END);
  List_Substitution(Refinement(Buffer_r),emptyquery)==(IF start = 0 THEN rr:=yes ELSE rr:=no END);
  List_Substitution(Refinement(Buffer_r),fullquery)==(IF start = next THEN rr:=yes ELSE rr:=no END);
  List_Substitution(Refinement(Buffer_r),contentsquery)==(IF start = 0 THEN oo:=0 ELSE IF start<next THEN oo:=next-start ELSE oo:=qlen+next-start END END)
END
&
THEORY ListParametersX IS
  List_Parameters(Refinement(Buffer_r))==(qlen,ELEM)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Refinement(Buffer_r))==(qlen: NAT1 & ELEM: FIN(INTEGER) & not(ELEM = {}));
  List_Context_Constraints(Refinement(Buffer_r))==(btrue)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Refinement(Buffer_r))==(?);
  Inherited_List_Constants(Refinement(Buffer_r))==(?);
  List_Constants(Refinement(Buffer_r))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Refinement(Buffer_r),RESP)==({yes,no});
  Context_List_Enumerated(Refinement(Buffer_r))==(?);
  Context_List_Defered(Refinement(Buffer_r))==(?);
  Context_List_Sets(Refinement(Buffer_r))==(?);
  List_Valuable_Sets(Refinement(Buffer_r))==(?);
  Inherited_List_Enumerated(Refinement(Buffer_r))==(RESP);
  Inherited_List_Defered(Refinement(Buffer_r))==(?);
  Inherited_List_Sets(Refinement(Buffer_r))==(RESP);
  List_Enumerated(Refinement(Buffer_r))==(?);
  List_Defered(Refinement(Buffer_r))==(?);
  List_Sets(Refinement(Buffer_r))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Refinement(Buffer_r))==(?);
  Expanded_List_HiddenConstants(Refinement(Buffer_r))==(?);
  List_HiddenConstants(Refinement(Buffer_r))==(?);
  External_List_HiddenConstants(Refinement(Buffer_r))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Refinement(Buffer_r))==(RESP: FIN(INTEGER) & not(RESP = {}));
  Context_List_Properties(Refinement(Buffer_r))==(btrue);
  Inherited_List_Properties(Refinement(Buffer_r))==(btrue);
  List_Properties(Refinement(Buffer_r))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Refinement(Buffer_r),add)==(?);
  List_ANY_Var(Refinement(Buffer_r),remove)==(?);
  List_ANY_Var(Refinement(Buffer_r),emptyquery)==(?);
  List_ANY_Var(Refinement(Buffer_r),fullquery)==(?);
  List_ANY_Var(Refinement(Buffer_r),contentsquery)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Refinement(Buffer_r)) == (? | ? | next,start,aa | ? | add,remove,emptyquery,fullquery,contentsquery | ? | ? | qlen,ELEM | Buffer_r);
  List_Of_HiddenCst_Ids(Refinement(Buffer_r)) == (? | ?);
  List_Of_VisibleCst_Ids(Refinement(Buffer_r)) == (?);
  List_Of_VisibleVar_Ids(Refinement(Buffer_r)) == (? | ?);
  List_Of_Ids_SeenBNU(Refinement(Buffer_r)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Refinement(Buffer_r)) == (Type(ELEM) == Prm(SetOf(atype(ELEM,?,?)));Type(qlen) == Prm(btype(INTEGER,?,?)))
END
&
THEORY SetsEnvX IS
  Sets(Refinement(Buffer_r)) == (Type(RESP) == Cst(SetOf(etype(RESP,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Refinement(Buffer_r)) == (Type(no) == Cst(etype(RESP,0,1));Type(yes) == Cst(etype(RESP,0,1)))
END
&
THEORY VariablesEnvX IS
  Variables(Refinement(Buffer_r)) == (Type(next) == Mvl(btype(INTEGER,?,?));Type(start) == Mvl(btype(INTEGER,?,?));Type(aa) == Mvl(SetOf(btype(INTEGER,1,qlen)*atype(ELEM,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Refinement(Buffer_r)) == (Type(contentsquery) == Cst(btype(INTEGER,?,?),No_type);Type(fullquery) == Cst(etype(RESP,?,?),No_type);Type(emptyquery) == Cst(etype(RESP,?,?),No_type);Type(remove) == Cst(atype(ELEM,?,?),No_type);Type(add) == Cst(No_type,atype(ELEM,?,?)))
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
)
