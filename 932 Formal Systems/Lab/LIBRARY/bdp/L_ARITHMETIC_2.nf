Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(L_ARITHMETIC_2))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(L_ARITHMETIC_2))==(Machine(L_ARITHMETIC));
  Level(Implementation(L_ARITHMETIC_2))==(2);
  Upper_Level(Implementation(L_ARITHMETIC_2))==(Refinement(L_ARITHMETIC_1))
END
&
THEORY LoadedStructureX IS
  Implementation(L_ARITHMETIC_2)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(L_ARITHMETIC_2))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(L_ARITHMETIC_2))==(?);
  Inherited_List_Includes(Implementation(L_ARITHMETIC_2))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(L_ARITHMETIC_2))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(L_ARITHMETIC_2))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(L_ARITHMETIC_2))==(?);
  Context_List_Variables(Implementation(L_ARITHMETIC_2))==(?);
  Abstract_List_Variables(Implementation(L_ARITHMETIC_2))==(?);
  Local_List_Variables(Implementation(L_ARITHMETIC_2))==(?);
  List_Variables(Implementation(L_ARITHMETIC_2))==(?);
  External_List_Variables(Implementation(L_ARITHMETIC_2))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(L_ARITHMETIC_2))==(?);
  Abstract_List_VisibleVariables(Implementation(L_ARITHMETIC_2))==(?);
  External_List_VisibleVariables(Implementation(L_ARITHMETIC_2))==(?);
  Expanded_List_VisibleVariables(Implementation(L_ARITHMETIC_2))==(?);
  List_VisibleVariables(Implementation(L_ARITHMETIC_2))==(?);
  Internal_List_VisibleVariables(Implementation(L_ARITHMETIC_2))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(L_ARITHMETIC_2))==(btrue);
  Expanded_List_Invariant(Implementation(L_ARITHMETIC_2))==(btrue);
  Abstract_List_Invariant(Implementation(L_ARITHMETIC_2))==(btrue);
  Context_List_Invariant(Implementation(L_ARITHMETIC_2))==(btrue);
  List_Invariant(Implementation(L_ARITHMETIC_2))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(L_ARITHMETIC_2))==(btrue);
  Abstract_List_Assertions(Implementation(L_ARITHMETIC_2))==(btrue);
  Context_List_Assertions(Implementation(L_ARITHMETIC_2))==(btrue);
  List_Assertions(Implementation(L_ARITHMETIC_2))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(L_ARITHMETIC_2))==(skip);
  Context_List_Initialisation(Implementation(L_ARITHMETIC_2))==(skip);
  List_Initialisation(Implementation(L_ARITHMETIC_2))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(L_ARITHMETIC_2))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(L_ARITHMETIC_2))==(btrue);
  List_Context_Constraints(Implementation(L_ARITHMETIC_2))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(L_ARITHMETIC_2))==(MIN,MAX,INC,DEC,EXP,LOG_BY_DEFAULT1,SQRT);
  List_Operations(Implementation(L_ARITHMETIC_2))==(MIN,MAX,INC,DEC,EXP,LOG_BY_DEFAULT1,SQRT)
END
&
THEORY ListInputX IS
  List_Input(Implementation(L_ARITHMETIC_2),MIN)==(vv,ww);
  List_Input(Implementation(L_ARITHMETIC_2),MAX)==(vv,ww);
  List_Input(Implementation(L_ARITHMETIC_2),INC)==(vv);
  List_Input(Implementation(L_ARITHMETIC_2),DEC)==(vv);
  List_Input(Implementation(L_ARITHMETIC_2),EXP)==(xx,nn);
  List_Input(Implementation(L_ARITHMETIC_2),LOG_BY_DEFAULT1)==(vv,ww);
  List_Input(Implementation(L_ARITHMETIC_2),SQRT)==(pp)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(L_ARITHMETIC_2),MIN)==(uu);
  List_Output(Implementation(L_ARITHMETIC_2),MAX)==(uu);
  List_Output(Implementation(L_ARITHMETIC_2),INC)==(uu);
  List_Output(Implementation(L_ARITHMETIC_2),DEC)==(uu);
  List_Output(Implementation(L_ARITHMETIC_2),EXP)==(rr);
  List_Output(Implementation(L_ARITHMETIC_2),LOG_BY_DEFAULT1)==(uu,rr);
  List_Output(Implementation(L_ARITHMETIC_2),SQRT)==(nn)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(L_ARITHMETIC_2),MIN)==(uu <-- MIN(vv,ww));
  List_Header(Implementation(L_ARITHMETIC_2),MAX)==(uu <-- MAX(vv,ww));
  List_Header(Implementation(L_ARITHMETIC_2),INC)==(uu <-- INC(vv));
  List_Header(Implementation(L_ARITHMETIC_2),DEC)==(uu <-- DEC(vv));
  List_Header(Implementation(L_ARITHMETIC_2),EXP)==(rr <-- EXP(xx,nn));
  List_Header(Implementation(L_ARITHMETIC_2),LOG_BY_DEFAULT1)==(uu,rr <-- LOG_BY_DEFAULT1(vv,ww));
  List_Header(Implementation(L_ARITHMETIC_2),SQRT)==(nn <-- SQRT(pp))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(L_ARITHMETIC_2),MIN)==(btrue);
  List_Precondition(Implementation(L_ARITHMETIC_2),MIN)==(vv: NAT & ww: NAT);
  Own_Precondition(Implementation(L_ARITHMETIC_2),MAX)==(btrue);
  List_Precondition(Implementation(L_ARITHMETIC_2),MAX)==(vv: NAT & ww: NAT);
  Own_Precondition(Implementation(L_ARITHMETIC_2),INC)==(btrue);
  List_Precondition(Implementation(L_ARITHMETIC_2),INC)==(vv: NAT & vv+1: NAT);
  Own_Precondition(Implementation(L_ARITHMETIC_2),DEC)==(btrue);
  List_Precondition(Implementation(L_ARITHMETIC_2),DEC)==(vv: NAT1);
  Own_Precondition(Implementation(L_ARITHMETIC_2),EXP)==(btrue);
  List_Precondition(Implementation(L_ARITHMETIC_2),EXP)==(xx**nn = PI(uu).(uu: NATURAL & nn/2**uu mod 2 = 1 | xx**(2**uu)) & xx: NAT & nn: NAT & not(xx = 0 & nn = 0) & xx**nn: NAT);
  Own_Precondition(Implementation(L_ARITHMETIC_2),LOG_BY_DEFAULT1)==(btrue);
  List_Precondition(Implementation(L_ARITHMETIC_2),LOG_BY_DEFAULT1)==(vv: NAT & ww: NAT1 & vv>1 & vv<=ww);
  Own_Precondition(Implementation(L_ARITHMETIC_2),SQRT)==(btrue);
  List_Precondition(Implementation(L_ARITHMETIC_2),SQRT)==(pp: NAT)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(L_ARITHMETIC_2),SQRT)==(pp: NAT | @(cc,ii,rr).(cc:=0;ii:=1;rr:=pp;WHILE ii<=rr DO (rr-ii: INT & rr: INT & ii: INT | rr:=rr-ii);(cc+1: INT & cc: INT & 1: INT | cc:=cc+1);(ii+2: INT & ii: INT & 2: INT | ii:=ii+2) INVARIANT cc: NAT & ii: NAT & rr: NAT & ii = 2*cc+1 & rr = pp-cc*cc VARIANT MAXINT-cc END;(cc: INT | nn:=cc)));
  Expanded_List_Substitution(Implementation(L_ARITHMETIC_2),LOG_BY_DEFAULT1)==(vv: NAT & ww: NAT1 & vv>1 & vv<=ww | @(kk,dd,cc).((ww/vv: INT & ww: INT & vv: INT & not(vv = 0) | cc:=ww/vv);dd:=1;kk:=vv;WHILE kk<=cc DO (dd+1: INT & dd: INT & 1: INT | dd:=dd+1);(kk*vv: INT & kk: INT & vv: INT | kk:=kk*vv) INVARIANT dd: NAT & kk: NAT & cc: NAT & kk = vv**dd & cc*vv<=ww & ww<(cc+1)*vv & kk<=ww VARIANT MAXINT-dd END;(kk: INT | rr:=kk);(dd: INT | uu:=dd)));
  Expanded_List_Substitution(Implementation(L_ARITHMETIC_2),EXP)==(xx**nn = PI(uu).(uu: NATURAL & nn/2**uu mod 2 = 1 | xx**(2**uu)) & xx: NAT & nn: NAT & not(xx = 0 & nn = 0) & xx**nn: NAT | @(cc,mm).(cc:=xx;mm:=nn;(1: INT | rr:=1);WHILE mm>0 DO @uu.((mm mod 2: NAT & mm: NAT & 2: NAT1 | uu:=mm mod 2);(uu = 1 ==> (cc*rr: INT & cc: INT & rr: INT | rr:=cc*rr) [] not(uu = 1) ==> skip));(mm/2: INT & mm: INT & 2: INT & not(2 = 0) | mm:=mm/2);(mm>0 ==> (cc*cc: INT & cc: INT | cc:=cc*cc) [] not(mm>0) ==> skip) INVARIANT mm: NAT & cc: NAT & rr: NAT & #tt.(tt: NATURAL & mm = nn/2**tt & (mm>0 => cc = xx**(2**tt)) & rr = PI(vv).(vv: 0..tt-1 & nn/2**vv mod 2 = 1 | xx**(2**vv))) VARIANT mm END));
  Expanded_List_Substitution(Implementation(L_ARITHMETIC_2),DEC)==(vv: NAT1 & vv-1: INT & vv: INT & 1: INT | uu:=vv-1);
  Expanded_List_Substitution(Implementation(L_ARITHMETIC_2),INC)==(vv: NAT & vv+1: NAT & vv+1: INT & vv: INT & 1: INT | uu:=vv+1);
  Expanded_List_Substitution(Implementation(L_ARITHMETIC_2),MAX)==(vv: NAT & ww: NAT | vv<ww ==> (ww: INT | uu:=ww) [] not(vv<ww) ==> (vv: INT | uu:=vv));
  Expanded_List_Substitution(Implementation(L_ARITHMETIC_2),MIN)==(vv: NAT & ww: NAT | vv<ww ==> (vv: INT | uu:=vv) [] not(vv<ww) ==> (ww: INT | uu:=ww));
  List_Substitution(Implementation(L_ARITHMETIC_2),MIN)==(IF vv<ww THEN uu:=vv ELSE uu:=ww END);
  List_Substitution(Implementation(L_ARITHMETIC_2),MAX)==(IF vv<ww THEN uu:=ww ELSE uu:=vv END);
  List_Substitution(Implementation(L_ARITHMETIC_2),INC)==(uu:=vv+1);
  List_Substitution(Implementation(L_ARITHMETIC_2),DEC)==(uu:=vv-1);
  List_Substitution(Implementation(L_ARITHMETIC_2),EXP)==(VAR cc,mm IN cc:=xx;mm:=nn;rr:=1;WHILE mm>0 DO VAR uu IN uu:=mm mod 2;IF uu = 1 THEN rr:=cc*rr END END;mm:=mm/2;IF mm>0 THEN cc:=cc*cc END INVARIANT mm: NAT & cc: NAT & rr: NAT & #tt.(tt: NATURAL & mm = nn/2**tt & (mm>0 => cc = xx**(2**tt)) & rr = PI(vv).(vv: 0..tt-1 & nn/2**vv mod 2 = 1 | xx**(2**vv))) VARIANT mm END END);
  List_Substitution(Implementation(L_ARITHMETIC_2),LOG_BY_DEFAULT1)==(VAR kk,dd,cc IN cc:=ww/vv;dd:=1;kk:=vv;WHILE kk<=cc DO dd:=dd+1;kk:=kk*vv INVARIANT dd: NAT & kk: NAT & cc: NAT & kk = vv**dd & cc*vv<=ww & ww<(cc+1)*vv & kk<=ww VARIANT MAXINT-dd END;rr:=kk;uu:=dd END);
  List_Substitution(Implementation(L_ARITHMETIC_2),SQRT)==(VAR cc,ii,rr IN cc:=0;ii:=1;rr:=pp;WHILE ii<=rr DO rr:=rr-ii;cc:=cc+1;ii:=ii+2 INVARIANT cc: NAT & ii: NAT & rr: NAT & ii = 2*cc+1 & rr = pp-cc*cc VARIANT MAXINT-cc END;nn:=cc END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(L_ARITHMETIC_2))==(?);
  Inherited_List_Constants(Implementation(L_ARITHMETIC_2))==(?);
  List_Constants(Implementation(L_ARITHMETIC_2))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(L_ARITHMETIC_2))==(?);
  Context_List_Defered(Implementation(L_ARITHMETIC_2))==(?);
  Context_List_Sets(Implementation(L_ARITHMETIC_2))==(?);
  List_Own_Enumerated(Implementation(L_ARITHMETIC_2))==(?);
  List_Valuable_Sets(Implementation(L_ARITHMETIC_2))==(?);
  Inherited_List_Enumerated(Implementation(L_ARITHMETIC_2))==(?);
  Inherited_List_Defered(Implementation(L_ARITHMETIC_2))==(?);
  Inherited_List_Sets(Implementation(L_ARITHMETIC_2))==(?);
  List_Enumerated(Implementation(L_ARITHMETIC_2))==(?);
  List_Defered(Implementation(L_ARITHMETIC_2))==(?);
  List_Sets(Implementation(L_ARITHMETIC_2))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(L_ARITHMETIC_2))==(?);
  Expanded_List_HiddenConstants(Implementation(L_ARITHMETIC_2))==(?);
  List_HiddenConstants(Implementation(L_ARITHMETIC_2))==(?);
  External_List_HiddenConstants(Implementation(L_ARITHMETIC_2))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(L_ARITHMETIC_2))==(btrue);
  Context_List_Properties(Implementation(L_ARITHMETIC_2))==(btrue);
  Inherited_List_Properties(Implementation(L_ARITHMETIC_2))==(btrue);
  List_Properties(Implementation(L_ARITHMETIC_2))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(L_ARITHMETIC_2))==(aa: aa);
  List_Values(Implementation(L_ARITHMETIC_2))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  Operations(Implementation(L_ARITHMETIC_2))==(Type(SQRT) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(LOG_BY_DEFAULT1) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(EXP) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(DEC) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(INC) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(MAX) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(MIN) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(L_ARITHMETIC_2)) == (? | ? | ? | ? | MIN,MAX,INC,DEC,EXP,LOG_BY_DEFAULT1,SQRT | ? | ? | ? | L_ARITHMETIC_2);
  List_Of_HiddenCst_Ids(Implementation(L_ARITHMETIC_2)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(L_ARITHMETIC_2)) == (?);
  List_Of_VisibleVar_Ids(Implementation(L_ARITHMETIC_2)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(L_ARITHMETIC_2)) == (?: ?)
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(L_ARITHMETIC_2),EXP, 2) == (Type(uu) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(L_ARITHMETIC_2),EXP, 1) == (Type(cc) == Lvl(btype(INTEGER,?,?));Type(mm) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(L_ARITHMETIC_2),LOG_BY_DEFAULT1, 1) == (Type(kk) == Lvl(btype(INTEGER,?,?));Type(dd) == Lvl(btype(INTEGER,?,?));Type(cc) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(L_ARITHMETIC_2),SQRT, 1) == (Type(cc) == Lvl(btype(INTEGER,?,?));Type(ii) == Lvl(btype(INTEGER,?,?));Type(rr) == Lvl(btype(INTEGER,?,?)))
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
  List_Local_Operations(Implementation(L_ARITHMETIC_2))==(?)
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
  TypingPredicate(Implementation(L_ARITHMETIC_2))==(btrue)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
