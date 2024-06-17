Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(Stats_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(Stats_i))==(Machine(Stats));
  Level(Implementation(Stats_i))==(1);
  Upper_Level(Implementation(Stats_i))==(Machine(Stats))
END
&
THEORY LoadedStructureX IS
  Implementation(Stats_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(Stats_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(Stats_i))==(?);
  Inherited_List_Includes(Implementation(Stats_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(Stats_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(Stats_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(Stats_i))==(?);
  Context_List_Variables(Implementation(Stats_i))==(?);
  Abstract_List_Variables(Implementation(Stats_i))==(record);
  Local_List_Variables(Implementation(Stats_i))==(?);
  List_Variables(Implementation(Stats_i))==(?);
  External_List_Variables(Implementation(Stats_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(Stats_i))==(?);
  Abstract_List_VisibleVariables(Implementation(Stats_i))==(?);
  External_List_VisibleVariables(Implementation(Stats_i))==(?);
  Expanded_List_VisibleVariables(Implementation(Stats_i))==(?);
  List_VisibleVariables(Implementation(Stats_i))==(count,marks);
  Internal_List_VisibleVariables(Implementation(Stats_i))==(count,marks)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(Stats_i))==(btrue);
  Expanded_List_Invariant(Implementation(Stats_i))==(btrue);
  Abstract_List_Invariant(Implementation(Stats_i))==(record: seq(0..10) & size(record)<=maxlen);
  Context_List_Invariant(Implementation(Stats_i))==(btrue);
  List_Invariant(Implementation(Stats_i))==(marks: 0..10 --> NAT & count: NAT & count<=maxlen & !nn.(nn: 0..10 => marks(nn) = card(record|>{nn})) & SIGMA(nn).(nn: 0..10 | marks(nn)) = count)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(Stats_i))==(btrue);
  Abstract_List_Assertions(Implementation(Stats_i))==(btrue);
  Context_List_Assertions(Implementation(Stats_i))==(btrue);
  List_Assertions(Implementation(Stats_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(Stats_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(Stats_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(Stats_i))==(marks:=(0..10)*{0};(0: INT | count:=0));
  Context_List_Initialisation(Implementation(Stats_i))==(skip);
  List_Initialisation(Implementation(Stats_i))==(marks:=(0..10)*{0};count:=0)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(Stats_i))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(Stats_i))==(btrue);
  List_Context_Constraints(Implementation(Stats_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(Stats_i))==(tested,querytot,queryreg,querypc,querymean,querymedian);
  List_Operations(Implementation(Stats_i))==(tested,querytot,queryreg,querypc,querymean,querymedian)
END
&
THEORY ListInputX IS
  List_Input(Implementation(Stats_i),tested)==(nn);
  List_Input(Implementation(Stats_i),querytot)==(?);
  List_Input(Implementation(Stats_i),queryreg)==(nn);
  List_Input(Implementation(Stats_i),querypc)==(nn);
  List_Input(Implementation(Stats_i),querymean)==(?);
  List_Input(Implementation(Stats_i),querymedian)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(Stats_i),tested)==(?);
  List_Output(Implementation(Stats_i),querytot)==(oo);
  List_Output(Implementation(Stats_i),queryreg)==(oo);
  List_Output(Implementation(Stats_i),querypc)==(oo);
  List_Output(Implementation(Stats_i),querymean)==(oo);
  List_Output(Implementation(Stats_i),querymedian)==(oo)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(Stats_i),tested)==(tested(nn));
  List_Header(Implementation(Stats_i),querytot)==(oo <-- querytot);
  List_Header(Implementation(Stats_i),queryreg)==(oo <-- queryreg(nn));
  List_Header(Implementation(Stats_i),querypc)==(oo <-- querypc(nn));
  List_Header(Implementation(Stats_i),querymean)==(oo <-- querymean);
  List_Header(Implementation(Stats_i),querymedian)==(oo <-- querymedian)
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(Stats_i),tested)==(btrue);
  List_Precondition(Implementation(Stats_i),tested)==(nn: 0..10 & size(record)<maxlen);
  Own_Precondition(Implementation(Stats_i),querytot)==(btrue);
  List_Precondition(Implementation(Stats_i),querytot)==(btrue);
  Own_Precondition(Implementation(Stats_i),queryreg)==(btrue);
  List_Precondition(Implementation(Stats_i),queryreg)==(nn: 0..10);
  Own_Precondition(Implementation(Stats_i),querypc)==(btrue);
  List_Precondition(Implementation(Stats_i),querypc)==(nn: 0..10 & size(record)/=0);
  Own_Precondition(Implementation(Stats_i),querymean)==(btrue);
  List_Precondition(Implementation(Stats_i),querymean)==(size(record)/=0);
  Own_Precondition(Implementation(Stats_i),querymedian)==(btrue);
  List_Precondition(Implementation(Stats_i),querymedian)==(size(record)/=0)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(Stats_i),querymedian)==(size(record)/=0 | count/=0 ==> @rr.((count mod 2: NAT & count: NAT & 2: NAT1 | rr:=count mod 2);(rr = 1 ==> @(ii,mm,tt).((count+1: INT & count: INT & 1: INT & (count+1)/2: INT & 2: INT & not(2 = 0) | ii:=(count+1)/2);mm:=0;tt:=0;WHILE tt<ii DO (tt+marks(mm): INT & mm: dom(marks) & tt: INT & marks(mm): INT | tt:=tt+marks(mm));(mm+1: INT & mm: INT & 1: INT | mm:=mm+1) INVARIANT tt = SIGMA(nn).(nn: 0..mm-1 | marks(ii)) & tt<ii or tt-marks(mm-1)<ii VARIANT 10-mm END;(mm-1: INT & mm: INT & 1: INT | oo:=mm-1)) [] not(rr = 1) ==> @(i1,i2,m1,m2,t1,t2).((count/2: INT & count: INT & 2: INT & not(2 = 0) | i1:=count/2);m1:=0;t1:=0;WHILE t1<i1 DO (t1+marks(m1): INT & m1: dom(marks) & t1: INT & marks(m1): INT | t1:=t1+marks(m1));(m1+1: INT & m1: INT & 1: INT | m1:=m1+1) INVARIANT t1 = SIGMA(nn).(nn: 0..m1-1 | marks(i1)) & t1<i1 or t1-marks(m1-1)<i1 VARIANT 10-m1 END;(count/2: INT & count: INT & 2: INT & not(2 = 0) & count/2+1: INT & 1: INT | i2:=count/2+1);m2:=0;t2:=0;WHILE t2<i2 DO (t2+marks(m2): INT & m2: dom(marks) & t2: INT & marks(m2): INT | t2:=t2+marks(m2));(m2+1: INT & m2: INT & 1: INT | m2:=m2+1) INVARIANT t2 = SIGMA(nn).(nn: 0..m2-1 | marks(i2)) & t2<i2 or t2-marks(m2-1)<i2 VARIANT 10-m2 END;((m1-1+m2-1)/2: INT & m1-1: INT & m1: INT & 1: INT & m1-1+m2: INT & m2: INT & m1-1+m2-1: INT & 2: INT & not(2 = 0) | oo:=(m1-1+m2-1)/2)))) [] not(count/=0) ==> skip);
  Expanded_List_Substitution(Implementation(Stats_i),querymean)==(size(record)/=0 | count/=0 ==> @(tt,ii).(tt:=0;ii:=0;WHILE ii/=11 DO (tt+marks(ii)*ii: INT & ii: dom(marks) & marks(ii)*ii: INT & marks(ii): INT & ii: INT & tt: INT | tt:=tt+marks(ii)*ii);(ii+1: INT & ii: INT & 1: INT | ii:=ii+1) INVARIANT 0<=ii & ii<=11 & tt = SIGMA(nn).(nn: 0..ii-1 | nn*marks(nn)) VARIANT 11-ii END;(tt/count: INT & tt: INT & count: INT & not(count = 0) | oo:=tt/count)) [] not(count/=0) ==> skip);
  Expanded_List_Substitution(Implementation(Stats_i),querypc)==(nn: 0..10 & size(record)/=0 | count/=0 ==> (marks(nn)*100/count: INT & nn: dom(marks) & marks(nn)*100: INT & marks(nn): INT & 100: INT & count: INT & not(count = 0) | oo:=marks(nn)*100/count) [] not(count/=0) ==> skip);
  Expanded_List_Substitution(Implementation(Stats_i),queryreg)==(nn: 0..10 & marks(nn): INT & nn: dom(marks) | oo:=marks(nn));
  Expanded_List_Substitution(Implementation(Stats_i),querytot)==(btrue & count: INT | oo:=count);
  Expanded_List_Substitution(Implementation(Stats_i),tested)==(nn: 0..10 & size(record)<maxlen | count<maxlen ==> ((nn: dom(marks) & marks(nn)+1: INT & marks(nn): INT & 1: INT | marks:=marks<+{nn|->marks(nn)+1});(count+1: INT & count: INT & 1: INT | count:=count+1)) [] not(count<maxlen) ==> skip);
  List_Substitution(Implementation(Stats_i),tested)==(IF count<maxlen THEN marks(nn):=marks(nn)+1;count:=count+1 END);
  List_Substitution(Implementation(Stats_i),querytot)==(oo:=count);
  List_Substitution(Implementation(Stats_i),queryreg)==(oo:=marks(nn));
  List_Substitution(Implementation(Stats_i),querypc)==(IF count/=0 THEN oo:=marks(nn)*100/count END);
  List_Substitution(Implementation(Stats_i),querymean)==(IF count/=0 THEN VAR tt,ii IN tt:=0;ii:=0;WHILE ii/=11 DO tt:=tt+marks(ii)*ii;ii:=ii+1 INVARIANT 0<=ii & ii<=11 & tt = SIGMA(nn).(nn: 0..ii-1 | nn*marks(nn)) VARIANT 11-ii END;oo:=tt/count END END);
  List_Substitution(Implementation(Stats_i),querymedian)==(IF count/=0 THEN VAR rr IN rr:=count mod 2;IF rr = 1 THEN VAR ii,mm,tt IN ii:=(count+1)/2;mm:=0;tt:=0;WHILE tt<ii DO tt:=tt+marks(mm);mm:=mm+1 INVARIANT tt = SIGMA(nn).(nn: 0..mm-1 | marks(ii)) & tt<ii or tt-marks(mm-1)<ii VARIANT 10-mm END;oo:=mm-1 END ELSE VAR i1,i2,m1,m2,t1,t2 IN i1:=count/2;m1:=0;t1:=0;WHILE t1<i1 DO t1:=t1+marks(m1);m1:=m1+1 INVARIANT t1 = SIGMA(nn).(nn: 0..m1-1 | marks(i1)) & t1<i1 or t1-marks(m1-1)<i1 VARIANT 10-m1 END;i2:=count/2+1;m2:=0;t2:=0;WHILE t2<i2 DO t2:=t2+marks(m2);m2:=m2+1 INVARIANT t2 = SIGMA(nn).(nn: 0..m2-1 | marks(i2)) & t2<i2 or t2-marks(m2-1)<i2 VARIANT 10-m2 END;oo:=(m1-1+m2-1)/2 END END END END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(Stats_i))==(maxlen);
  Inherited_List_Constants(Implementation(Stats_i))==(maxlen);
  List_Constants(Implementation(Stats_i))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(Stats_i))==(?);
  Context_List_Defered(Implementation(Stats_i))==(?);
  Context_List_Sets(Implementation(Stats_i))==(?);
  List_Own_Enumerated(Implementation(Stats_i))==(?);
  List_Valuable_Sets(Implementation(Stats_i))==(?);
  Inherited_List_Enumerated(Implementation(Stats_i))==(?);
  Inherited_List_Defered(Implementation(Stats_i))==(?);
  Inherited_List_Sets(Implementation(Stats_i))==(?);
  List_Enumerated(Implementation(Stats_i))==(?);
  List_Defered(Implementation(Stats_i))==(?);
  List_Sets(Implementation(Stats_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(Stats_i))==(?);
  Expanded_List_HiddenConstants(Implementation(Stats_i))==(?);
  List_HiddenConstants(Implementation(Stats_i))==(?);
  External_List_HiddenConstants(Implementation(Stats_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(Stats_i))==(maxlen: NAT1);
  Context_List_Properties(Implementation(Stats_i))==(btrue);
  Inherited_List_Properties(Implementation(Stats_i))==(btrue);
  List_Properties(Implementation(Stats_i))==(btrue)
END
&
THEORY ListValuesX IS
  Precond_Valued_Objects(Implementation(Stats_i))==(btrue);
  Values_Subs(Implementation(Stats_i))==(maxlen: 100);
  List_Values(Implementation(Stats_i))==(maxlen = 100)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(Stats_i))==(Type(marks) == Mvv(SetOf(btype(INTEGER,0,10)*btype(INTEGER,0,MAXINT)));Type(count) == Mvv(btype(INTEGER,?,?)));
  Operations(Implementation(Stats_i))==(Type(querymedian) == Cst(btype(INTEGER,?,?),No_type);Type(querymean) == Cst(btype(INTEGER,?,?),No_type);Type(querypc) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(queryreg) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(querytot) == Cst(btype(INTEGER,?,?),No_type);Type(tested) == Cst(No_type,btype(INTEGER,?,?)));
  Constants(Implementation(Stats_i))==(Type(maxlen) == Cst(btype(INTEGER,?,?)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Stats_i)) == (? | ? | ? | ? | tested,querytot,queryreg,querypc,querymean,querymedian | ? | ? | ? | Stats_i);
  List_Of_HiddenCst_Ids(Implementation(Stats_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Stats_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(Stats_i)) == (count,marks | ?);
  List_Of_Ids_SeenBNU(Implementation(Stats_i)) == (?: ?)
END
&
THEORY ConstantsEnvX IS
  Constants(Implementation(Stats_i)) == (Type(maxlen) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(Stats_i)) == (Type(count) == Mvv(btype(INTEGER,?,?));Type(marks) == Mvv(SetOf(btype(INTEGER,0,10)*btype(INTEGER,0,MAXINT))))
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(Stats_i),querymean, 1) == (Type(tt) == Lvl(btype(INTEGER,?,?));Type(ii) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(Stats_i),querymedian, 2) == (Type(ii) == Lvl(btype(INTEGER,?,?));Type(mm) == Lvl(btype(INTEGER,?,?));Type(tt) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(Stats_i),querymedian, 3) == (Type(i1) == Lvl(btype(INTEGER,?,?));Type(i2) == Lvl(btype(INTEGER,?,?));Type(m1) == Lvl(btype(INTEGER,?,?));Type(m2) == Lvl(btype(INTEGER,?,?));Type(t1) == Lvl(btype(INTEGER,?,?));Type(t2) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(Stats_i),querymedian, 1) == (Type(rr) == Lvl(btype(INTEGER,?,?)))
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
  List_Local_Operations(Implementation(Stats_i))==(?)
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
  TypingPredicate(Implementation(Stats_i))==(marks: POW(INTEGER*INTEGER) & count: INTEGER)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
