Normalised(
THEORY MagicNumberX IS
  MagicNumber(Refinement(Wrapper_r))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Refinement(Wrapper_r))==(Machine(Wrapper));
  Level(Refinement(Wrapper_r))==(1);
  Upper_Level(Refinement(Wrapper_r))==(Machine(Wrapper))
END
&
THEORY LoadedStructureX IS
  Refinement(Wrapper_r)
END
&
THEORY ListSeesX IS
  List_Sees(Refinement(Wrapper_r))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Refinement(Wrapper_r))==(Buffer);
  List_Includes(Refinement(Wrapper_r))==(Buffer)
END
&
THEORY ListPromotesX IS
  List_Promotes(Refinement(Wrapper_r))==(add,remove,emptyquery,fullquery,contentsquery)
END
&
THEORY ListExtendsX IS
  List_Extends(Refinement(Wrapper_r))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Refinement(Wrapper_r))==(?);
  Context_List_Variables(Refinement(Wrapper_r))==(?);
  Abstract_List_Variables(Refinement(Wrapper_r))==(buff);
  Local_List_Variables(Refinement(Wrapper_r))==(?);
  List_Variables(Refinement(Wrapper_r))==(buff);
  External_List_Variables(Refinement(Wrapper_r))==(buff)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Refinement(Wrapper_r))==(?);
  Abstract_List_VisibleVariables(Refinement(Wrapper_r))==(?);
  External_List_VisibleVariables(Refinement(Wrapper_r))==(?);
  Expanded_List_VisibleVariables(Refinement(Wrapper_r))==(?);
  List_VisibleVariables(Refinement(Wrapper_r))==(?);
  Internal_List_VisibleVariables(Refinement(Wrapper_r))==(?)
END
&
THEORY ListOfNewVariablesX IS
  List_Of_New_Variables(Refinement(Wrapper_r))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Refinement(Wrapper_r))==(btrue);
  Abstract_List_Invariant(Refinement(Wrapper_r))==(buff: seq(ELEM) & size(buff)<=qlen);
  Expanded_List_Invariant(Refinement(Wrapper_r))==(buff: seq(ELEM) & size(buff)<=qlen);
  Context_List_Invariant(Refinement(Wrapper_r))==(btrue);
  List_Invariant(Refinement(Wrapper_r))==(btrue)
END
&
THEORY ListVariantX IS
  List_Variant(Refinement(Wrapper_r))==(0)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Refinement(Wrapper_r))==(btrue);
  Expanded_List_Assertions(Refinement(Wrapper_r))==(btrue);
  Context_List_Assertions(Refinement(Wrapper_r))==(btrue);
  List_Assertions(Refinement(Wrapper_r))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Refinement(Wrapper_r))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Refinement(Wrapper_r))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Refinement(Wrapper_r))==(buff:=<>);
  Context_List_Initialisation(Refinement(Wrapper_r))==(skip);
  List_Initialisation(Refinement(Wrapper_r))==(skip)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Refinement(Wrapper_r))==(wrapadd,wrapremove,wrapemptyquery,wrapfullquery,wrapcontentsquery,add,remove,emptyquery,fullquery,contentsquery);
  List_Operations(Refinement(Wrapper_r))==(wrapadd,wrapremove,wrapemptyquery,wrapfullquery,wrapcontentsquery,add,remove,emptyquery,fullquery,contentsquery)
END
&
THEORY ListInputX IS
  List_Input(Refinement(Wrapper_r),contentsquery)==(?);
  List_Input(Refinement(Wrapper_r),fullquery)==(?);
  List_Input(Refinement(Wrapper_r),emptyquery)==(?);
  List_Input(Refinement(Wrapper_r),remove)==(?);
  List_Input(Refinement(Wrapper_r),add)==(xx);
  List_Input(Refinement(Wrapper_r),wrapadd)==(xx);
  List_Input(Refinement(Wrapper_r),wrapremove)==(?);
  List_Input(Refinement(Wrapper_r),wrapemptyquery)==(?);
  List_Input(Refinement(Wrapper_r),wrapfullquery)==(?);
  List_Input(Refinement(Wrapper_r),wrapcontentsquery)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Refinement(Wrapper_r),contentsquery)==(oo);
  List_Output(Refinement(Wrapper_r),fullquery)==(rr);
  List_Output(Refinement(Wrapper_r),emptyquery)==(rr);
  List_Output(Refinement(Wrapper_r),remove)==(ee);
  List_Output(Refinement(Wrapper_r),add)==(?);
  List_Output(Refinement(Wrapper_r),wrapadd)==(mm);
  List_Output(Refinement(Wrapper_r),wrapremove)==(mm,ee);
  List_Output(Refinement(Wrapper_r),wrapemptyquery)==(rr);
  List_Output(Refinement(Wrapper_r),wrapfullquery)==(rr);
  List_Output(Refinement(Wrapper_r),wrapcontentsquery)==(oo)
END
&
THEORY ListHeaderX IS
  List_Header(Refinement(Wrapper_r),contentsquery)==(oo <-- contentsquery);
  List_Header(Refinement(Wrapper_r),fullquery)==(rr <-- fullquery);
  List_Header(Refinement(Wrapper_r),emptyquery)==(rr <-- emptyquery);
  List_Header(Refinement(Wrapper_r),remove)==(ee <-- remove);
  List_Header(Refinement(Wrapper_r),add)==(add(xx));
  List_Header(Refinement(Wrapper_r),wrapadd)==(mm <-- wrapadd(xx));
  List_Header(Refinement(Wrapper_r),wrapremove)==(mm,ee <-- wrapremove);
  List_Header(Refinement(Wrapper_r),wrapemptyquery)==(rr <-- wrapemptyquery);
  List_Header(Refinement(Wrapper_r),wrapfullquery)==(rr <-- wrapfullquery);
  List_Header(Refinement(Wrapper_r),wrapcontentsquery)==(oo <-- wrapcontentsquery)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Refinement(Wrapper_r),contentsquery)==(btrue);
  List_Precondition(Refinement(Wrapper_r),contentsquery)==(btrue);
  Own_Precondition(Refinement(Wrapper_r),fullquery)==(btrue);
  List_Precondition(Refinement(Wrapper_r),fullquery)==(btrue);
  Own_Precondition(Refinement(Wrapper_r),emptyquery)==(btrue);
  List_Precondition(Refinement(Wrapper_r),emptyquery)==(btrue);
  Own_Precondition(Refinement(Wrapper_r),remove)==(buff/=<>);
  List_Precondition(Refinement(Wrapper_r),remove)==(buff/=<>);
  Own_Precondition(Refinement(Wrapper_r),add)==(xx: ELEM & size(buff)<qlen);
  List_Precondition(Refinement(Wrapper_r),add)==(xx: ELEM & size(buff)<qlen);
  Own_Precondition(Refinement(Wrapper_r),wrapadd)==(xx: ELEM);
  List_Precondition(Refinement(Wrapper_r),wrapadd)==(xx: ELEM & xx: ELEM);
  Own_Precondition(Refinement(Wrapper_r),wrapremove)==(btrue);
  List_Precondition(Refinement(Wrapper_r),wrapremove)==(btrue);
  Own_Precondition(Refinement(Wrapper_r),wrapemptyquery)==(btrue);
  List_Precondition(Refinement(Wrapper_r),wrapemptyquery)==(btrue);
  Own_Precondition(Refinement(Wrapper_r),wrapfullquery)==(btrue);
  List_Precondition(Refinement(Wrapper_r),wrapfullquery)==(btrue);
  Own_Precondition(Refinement(Wrapper_r),wrapcontentsquery)==(btrue);
  List_Precondition(Refinement(Wrapper_r),wrapcontentsquery)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Refinement(Wrapper_r),wrapcontentsquery)==(btrue | oo:=size(buff));
  Expanded_List_Substitution(Refinement(Wrapper_r),wrapfullquery)==(btrue | size(buff) = qlen ==> rr:=yes [] not(size(buff) = qlen) ==> rr:=no);
  Expanded_List_Substitution(Refinement(Wrapper_r),wrapemptyquery)==(btrue | buff = <> ==> rr:=yes [] not(buff = <>) ==> rr:=no);
  Expanded_List_Substitution(Refinement(Wrapper_r),wrapremove)==(btrue | @rr.((btrue | buff = <> ==> rr:=yes [] not(buff = <>) ==> rr:=no);(rr = yes ==> mm:=emptybuffer [] not(rr = yes) ==> (buff/=<> | ee,buff:=first(buff),tail(buff) || mm:=success))));
  Expanded_List_Substitution(Refinement(Wrapper_r),wrapadd)==(xx: ELEM & xx: ELEM | @rr.((btrue | size(buff) = qlen ==> rr:=yes [] not(size(buff) = qlen) ==> rr:=no);(rr = yes ==> mm:=fullbuffer [] not(rr = yes) ==> (xx: ELEM & size(buff)<qlen | buff:=buff<-xx || mm:=success))));
  List_Substitution(Refinement(Wrapper_r),contentsquery)==(oo:=size(buff));
  Expanded_List_Substitution(Refinement(Wrapper_r),contentsquery)==(btrue | oo:=size(buff));
  List_Substitution(Refinement(Wrapper_r),fullquery)==(IF size(buff) = qlen THEN rr:=yes ELSE rr:=no END);
  Expanded_List_Substitution(Refinement(Wrapper_r),fullquery)==(btrue | size(buff) = qlen ==> rr:=yes [] not(size(buff) = qlen) ==> rr:=no);
  List_Substitution(Refinement(Wrapper_r),emptyquery)==(IF buff = <> THEN rr:=yes ELSE rr:=no END);
  Expanded_List_Substitution(Refinement(Wrapper_r),emptyquery)==(btrue | buff = <> ==> rr:=yes [] not(buff = <>) ==> rr:=no);
  List_Substitution(Refinement(Wrapper_r),remove)==(ee:=first(buff) || buff:=tail(buff));
  Expanded_List_Substitution(Refinement(Wrapper_r),remove)==(buff/=<> | ee,buff:=first(buff),tail(buff));
  List_Substitution(Refinement(Wrapper_r),add)==(buff:=buff<-xx);
  Expanded_List_Substitution(Refinement(Wrapper_r),add)==(xx: ELEM & size(buff)<qlen | buff:=buff<-xx);
  List_Substitution(Refinement(Wrapper_r),wrapadd)==(VAR rr IN rr <-- fullquery;IF rr = yes THEN mm:=fullbuffer ELSE BEGIN add(xx) || mm:=success END END END);
  List_Substitution(Refinement(Wrapper_r),wrapremove)==(VAR rr IN rr <-- emptyquery;IF rr = yes THEN mm:=emptybuffer ELSE BEGIN ee <-- remove || mm:=success END END END);
  List_Substitution(Refinement(Wrapper_r),wrapemptyquery)==(rr <-- emptyquery);
  List_Substitution(Refinement(Wrapper_r),wrapfullquery)==(rr <-- fullquery);
  List_Substitution(Refinement(Wrapper_r),wrapcontentsquery)==(oo <-- contentsquery)
END
&
THEORY ListParametersX IS
  List_Parameters(Refinement(Wrapper_r))==(qlen,ELEM)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Refinement(Wrapper_r),Machine(Buffer))==(qlen,ELEM)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Refinement(Wrapper_r),Machine(Buffer))==(qlen: NAT1 & ELEM: FIN(INTEGER) & not(ELEM = {}));
  List_Constraints(Refinement(Wrapper_r))==(qlen: NAT1 & ELEM: FIN(INTEGER) & not(ELEM = {}));
  List_Context_Constraints(Refinement(Wrapper_r))==(btrue)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Refinement(Wrapper_r))==(?);
  Inherited_List_Constants(Refinement(Wrapper_r))==(?);
  List_Constants(Refinement(Wrapper_r))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Refinement(Wrapper_r),RESP)==({yes,no});
  Context_List_Enumerated(Refinement(Wrapper_r))==(?);
  Context_List_Defered(Refinement(Wrapper_r))==(?);
  Context_List_Sets(Refinement(Wrapper_r))==(?);
  List_Valuable_Sets(Refinement(Wrapper_r))==(?);
  Inherited_List_Enumerated(Refinement(Wrapper_r))==(RESP,MSG);
  Inherited_List_Defered(Refinement(Wrapper_r))==(?);
  Inherited_List_Sets(Refinement(Wrapper_r))==(RESP,MSG);
  List_Enumerated(Refinement(Wrapper_r))==(?);
  List_Defered(Refinement(Wrapper_r))==(?);
  List_Sets(Refinement(Wrapper_r))==(?);
  Set_Definition(Refinement(Wrapper_r),MSG)==({success,emptybuffer,fullbuffer});
  Set_Definition(Refinement(Wrapper_r),RESP)==({yes,no})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Refinement(Wrapper_r))==(?);
  Expanded_List_HiddenConstants(Refinement(Wrapper_r))==(?);
  List_HiddenConstants(Refinement(Wrapper_r))==(?);
  External_List_HiddenConstants(Refinement(Wrapper_r))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Refinement(Wrapper_r))==(MSG: FIN(INTEGER) & not(MSG = {}) & RESP: FIN(INTEGER) & not(RESP = {}));
  Context_List_Properties(Refinement(Wrapper_r))==(btrue);
  Inherited_List_Properties(Refinement(Wrapper_r))==(RESP: FIN(INTEGER) & not(RESP = {}));
  List_Properties(Refinement(Wrapper_r))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Refinement(Wrapper_r),contentsquery)==(?);
  List_ANY_Var(Refinement(Wrapper_r),fullquery)==(?);
  List_ANY_Var(Refinement(Wrapper_r),emptyquery)==(?);
  List_ANY_Var(Refinement(Wrapper_r),remove)==(?);
  List_ANY_Var(Refinement(Wrapper_r),add)==(?);
  List_ANY_Var(Refinement(Wrapper_r),wrapadd)==(?);
  List_ANY_Var(Refinement(Wrapper_r),wrapremove)==(?);
  List_ANY_Var(Refinement(Wrapper_r),wrapemptyquery)==(?);
  List_ANY_Var(Refinement(Wrapper_r),wrapfullquery)==(?);
  List_ANY_Var(Refinement(Wrapper_r),wrapcontentsquery)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Refinement(Wrapper_r)) == (? | RESP,yes,no | ? | buff | wrapadd,wrapremove,wrapemptyquery,wrapfullquery,wrapcontentsquery | ? | included(Machine(Buffer)) | qlen,ELEM | Wrapper_r);
  List_Of_HiddenCst_Ids(Refinement(Wrapper_r)) == (? | ?);
  List_Of_VisibleCst_Ids(Refinement(Wrapper_r)) == (?);
  List_Of_VisibleVar_Ids(Refinement(Wrapper_r)) == (? | ?);
  List_Of_Ids_SeenBNU(Refinement(Wrapper_r)) == (?: ?);
  List_Of_Ids(Machine(Buffer)) == (RESP,yes,no | ? | buff | ? | add,remove,emptyquery,fullquery,contentsquery | ? | ? | qlen,ELEM | Buffer);
  List_Of_HiddenCst_Ids(Machine(Buffer)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Buffer)) == (?);
  List_Of_VisibleVar_Ids(Machine(Buffer)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Buffer)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Refinement(Wrapper_r)) == (Type(ELEM) == Prm(SetOf(atype(ELEM,?,?)));Type(qlen) == Prm(btype(INTEGER,?,?)))
END
&
THEORY SetsEnvX IS
  Sets(Refinement(Wrapper_r)) == (Type(RESP) == Cst(SetOf(etype(RESP,0,1)));Type(MSG) == Cst(SetOf(etype(MSG,0,2)));Type(RESP) == Cst(SetOf(etype(RESP,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Refinement(Wrapper_r)) == (Type(no) == Cst(etype(RESP,0,1));Type(yes) == Cst(etype(RESP,0,1));Type(fullbuffer) == Cst(etype(MSG,0,2));Type(emptybuffer) == Cst(etype(MSG,0,2));Type(success) == Cst(etype(MSG,0,2));Type(yes) == Cst(etype(RESP,0,1));Type(no) == Cst(etype(RESP,0,1)))
END
&
THEORY VariablesEnvX IS
  Variables(Refinement(Wrapper_r)) == (Type(buff) == Mvl(SetOf(btype(INTEGER,?,?)*atype(ELEM,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Refinement(Wrapper_r)) == (Type(add) == Cst(No_type,atype(ELEM,?,?));Type(remove) == Cst(atype(ELEM,?,?),No_type);Type(emptyquery) == Cst(etype(RESP,?,?),No_type);Type(fullquery) == Cst(etype(RESP,?,?),No_type);Type(contentsquery) == Cst(btype(INTEGER,?,?),No_type);Type(wrapcontentsquery) == Cst(btype(INTEGER,?,?),No_type);Type(wrapfullquery) == Cst(etype(RESP,?,?),No_type);Type(wrapemptyquery) == Cst(etype(RESP,?,?),No_type);Type(wrapremove) == Cst(etype(MSG,?,?)*atype(ELEM,?,?),No_type);Type(wrapadd) == Cst(etype(MSG,?,?),atype(ELEM,?,?)));
  Observers(Refinement(Wrapper_r)) == (Type(emptyquery) == Cst(etype(RESP,?,?),No_type);Type(fullquery) == Cst(etype(RESP,?,?),No_type);Type(contentsquery) == Cst(btype(INTEGER,?,?),No_type))
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
