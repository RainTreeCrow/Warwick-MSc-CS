Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(Top_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(Top_i))==(Machine(Top));
  Level(Implementation(Top_i))==(1);
  Upper_Level(Implementation(Top_i))==(Machine(Top))
END
&
THEORY LoadedStructureX IS
  Implementation(Top_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(Top_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(Top_i))==(Numbers,BASIC_IO);
  Inherited_List_Includes(Implementation(Top_i))==(BASIC_IO,Numbers)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(Top_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(Top_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(Top_i))==(?);
  Context_List_Variables(Implementation(Top_i))==(?);
  Abstract_List_Variables(Implementation(Top_i))==(?);
  Local_List_Variables(Implementation(Top_i))==(?);
  List_Variables(Implementation(Top_i))==(lastchecked);
  External_List_Variables(Implementation(Top_i))==(lastchecked)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(Top_i))==(?);
  Abstract_List_VisibleVariables(Implementation(Top_i))==(?);
  External_List_VisibleVariables(Implementation(Top_i))==(?);
  Expanded_List_VisibleVariables(Implementation(Top_i))==(?);
  List_VisibleVariables(Implementation(Top_i))==(?);
  Internal_List_VisibleVariables(Implementation(Top_i))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(Top_i))==(btrue);
  Abstract_List_Invariant(Implementation(Top_i))==(btrue);
  Expanded_List_Invariant(Implementation(Top_i))==(lastchecked: NAT);
  Context_List_Invariant(Implementation(Top_i))==(btrue);
  List_Invariant(Implementation(Top_i))==(btrue)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(Top_i))==(btrue);
  Expanded_List_Assertions(Implementation(Top_i))==(btrue);
  Context_List_Assertions(Implementation(Top_i))==(btrue);
  List_Assertions(Implementation(Top_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(Top_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(Top_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(Top_i))==(lastchecked:=0);
  Context_List_Initialisation(Implementation(Top_i))==(skip);
  List_Initialisation(Implementation(Top_i))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(Top_i))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(Top_i),Machine(Numbers))==(?);
  List_Instanciated_Parameters(Implementation(Top_i),Machine(BASIC_IO))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(Top_i),Machine(BASIC_IO))==(btrue);
  List_Constraints(Implementation(Top_i))==(btrue);
  List_Context_Constraints(Implementation(Top_i))==(btrue);
  List_Constraints(Implementation(Top_i),Machine(Numbers))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(Top_i))==(main);
  List_Operations(Implementation(Top_i))==(main)
END
&
THEORY ListInputX IS
  List_Input(Implementation(Top_i),main)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(Top_i),main)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(Top_i),main)==(main)
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(Top_i),main)==(btrue);
  List_Precondition(Implementation(Top_i),main)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(Top_i),main)==(btrue | @(cc,nn,oo).(("Please choose an operation from:\n": STRING | skip);("1. Check if a number is prime\n": STRING | skip);("2. Show the previows number\n": STRING | skip);("3. Exit the program\n": STRING | skip);(3: NAT & 1: NAT & 1<=3 | @(bb$0).(bb$0: 1..3 ==> cc:=bb$0));WHILE cc/=3 DO not(cc = 2) & cc = 1 ==> (("Pleas input the number:\n": STRING | skip);(MAXINT: NAT & 1: NAT & 1<=MAXINT | @(bb$0).(bb$0: 1..MAXINT ==> nn:=bb$0));("The number ": STRING | skip);(nn: NAT | skip);(nn: NAT1 | lastchecked:=nn || (!xx.(xx: 2..nn-1 => nn mod xx/=0) ==> oo:=TRUE [] not(!xx.(xx: 2..nn-1 => nn mod xx/=0)) ==> oo:=FALSE));(oo = TRUE ==> (" is prime\n": STRING | skip) [] not(oo = TRUE) ==> (" is not prime\n": STRING | skip))) [] not(cc = 1) & cc = 2 ==> ((btrue | nn:=lastchecked);("The previous number is ": STRING | skip);(nn: NAT | skip);("\n": STRING | skip)) [] not(cc = 1) & not(cc = 2) ==> skip;("Please choose another operation:\n": STRING | skip);(3: NAT & 1: NAT & 1<=3 | @(bb$0).(bb$0: 1..3 ==> cc:=bb$0)) INVARIANT cc: 1..3 VARIANT cc END));
  List_Substitution(Implementation(Top_i),main)==(VAR cc,nn,oo IN STRING_WRITE("Please choose an operation from:\n");STRING_WRITE("1. Check if a number is prime\n");STRING_WRITE("2. Show the previows number\n");STRING_WRITE("3. Exit the program\n");cc <-- INTERVAL_READ(1,3);WHILE cc/=3 DO CASE cc OF EITHER 1 THEN BEGIN STRING_WRITE("Pleas input the number:\n");nn <-- INTERVAL_READ(1,MAXINT);STRING_WRITE("The number ");INT_WRITE(nn);oo <-- checknumber(nn);IF oo = TRUE THEN STRING_WRITE(" is prime\n") ELSE STRING_WRITE(" is not prime\n") END END OR 2 THEN BEGIN nn <-- showprevious;STRING_WRITE("The previous number is ");INT_WRITE(nn);STRING_WRITE("\n") END ELSE skip END END;STRING_WRITE("Please choose another operation:\n");cc <-- INTERVAL_READ(1,3) INVARIANT cc: 1..3 VARIANT cc END END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(Top_i))==(?);
  Inherited_List_Constants(Implementation(Top_i))==(?);
  List_Constants(Implementation(Top_i))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(Top_i))==(?);
  Context_List_Defered(Implementation(Top_i))==(?);
  Context_List_Sets(Implementation(Top_i))==(?);
  List_Own_Enumerated(Implementation(Top_i))==(?);
  List_Valuable_Sets(Implementation(Top_i))==(?);
  Inherited_List_Enumerated(Implementation(Top_i))==(?);
  Inherited_List_Defered(Implementation(Top_i))==(?);
  Inherited_List_Sets(Implementation(Top_i))==(?);
  List_Enumerated(Implementation(Top_i))==(?);
  List_Defered(Implementation(Top_i))==(?);
  List_Sets(Implementation(Top_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(Top_i))==(?);
  Expanded_List_HiddenConstants(Implementation(Top_i))==(?);
  List_HiddenConstants(Implementation(Top_i))==(?);
  External_List_HiddenConstants(Implementation(Top_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(Top_i))==(btrue);
  Context_List_Properties(Implementation(Top_i))==(btrue);
  Inherited_List_Properties(Implementation(Top_i))==(btrue);
  List_Properties(Implementation(Top_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(Top_i))==(aa: aa);
  List_Values(Implementation(Top_i))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(Top_i),Machine(BASIC_IO))==(INTERVAL_READ,INT_WRITE,BOOL_READ,BOOL_WRITE,CHAR_READ,CHAR_WRITE,STRING_WRITE);
  List_Included_Operations(Implementation(Top_i),Machine(Numbers))==(checknumber,showprevious)
END
&
THEORY InheritedEnvX IS
  Operations(Implementation(Top_i))==(Type(main) == Cst(No_type,No_type))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Top_i)) == (? | ? | ? | lastchecked | main | ? | imported(Machine(Numbers)),imported(Machine(BASIC_IO)) | ? | Top_i);
  List_Of_HiddenCst_Ids(Implementation(Top_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Top_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(Top_i)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(Top_i)) == (?: ?);
  List_Of_Ids(Machine(BASIC_IO)) == (? | ? | ? | ? | INTERVAL_READ,INT_WRITE,BOOL_READ,BOOL_WRITE,CHAR_READ,CHAR_WRITE,STRING_WRITE | ? | ? | ? | BASIC_IO);
  List_Of_HiddenCst_Ids(Machine(BASIC_IO)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(BASIC_IO)) == (?);
  List_Of_VisibleVar_Ids(Machine(BASIC_IO)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(BASIC_IO)) == (?: ?);
  List_Of_Ids(Machine(Numbers)) == (? | ? | lastchecked | ? | checknumber,showprevious | ? | ? | ? | Numbers);
  List_Of_HiddenCst_Ids(Machine(Numbers)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Numbers)) == (?);
  List_Of_VisibleVar_Ids(Machine(Numbers)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Numbers)) == (?: ?)
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(Top_i),main, 1) == (Type(cc) == Lvl(btype(INTEGER,mm,nn));Type(nn) == Lvl(btype(INTEGER,mm,nn));Type(oo) == Lvl(btype(BOOL,?,?)))
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
  List_Local_Operations(Implementation(Top_i))==(?)
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
  TypingPredicate(Implementation(Top_i))==(btrue)
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(Top_i),Machine(Numbers))==(lastchecked);
  ImportedVisVariablesList(Implementation(Top_i),Machine(Numbers))==(?);
  ImportedVariablesList(Implementation(Top_i),Machine(BASIC_IO))==(?);
  ImportedVisVariablesList(Implementation(Top_i),Machine(BASIC_IO))==(?)
END
&
THEORY ListLocalOpInvariantX END
)
