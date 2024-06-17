Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(BASIC_IO))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(BASIC_IO))==(Machine(BASIC_IO));
  Level(Machine(BASIC_IO))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(BASIC_IO)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(BASIC_IO))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(BASIC_IO))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(BASIC_IO))==(?);
  List_Includes(Machine(BASIC_IO))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(BASIC_IO))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(BASIC_IO))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(BASIC_IO))==(?);
  Context_List_Variables(Machine(BASIC_IO))==(?);
  Abstract_List_Variables(Machine(BASIC_IO))==(?);
  Local_List_Variables(Machine(BASIC_IO))==(?);
  List_Variables(Machine(BASIC_IO))==(?);
  External_List_Variables(Machine(BASIC_IO))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(BASIC_IO))==(?);
  Abstract_List_VisibleVariables(Machine(BASIC_IO))==(?);
  External_List_VisibleVariables(Machine(BASIC_IO))==(?);
  Expanded_List_VisibleVariables(Machine(BASIC_IO))==(?);
  List_VisibleVariables(Machine(BASIC_IO))==(?);
  Internal_List_VisibleVariables(Machine(BASIC_IO))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(BASIC_IO))==(btrue);
  Gluing_List_Invariant(Machine(BASIC_IO))==(btrue);
  Expanded_List_Invariant(Machine(BASIC_IO))==(btrue);
  Abstract_List_Invariant(Machine(BASIC_IO))==(btrue);
  Context_List_Invariant(Machine(BASIC_IO))==(btrue);
  List_Invariant(Machine(BASIC_IO))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(BASIC_IO))==(btrue);
  Abstract_List_Assertions(Machine(BASIC_IO))==(btrue);
  Context_List_Assertions(Machine(BASIC_IO))==(btrue);
  List_Assertions(Machine(BASIC_IO))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(BASIC_IO))==(skip);
  Context_List_Initialisation(Machine(BASIC_IO))==(skip);
  List_Initialisation(Machine(BASIC_IO))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(BASIC_IO))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(BASIC_IO))==(btrue);
  List_Constraints(Machine(BASIC_IO))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(BASIC_IO))==(INTERVAL_READ,INT_WRITE,BOOL_READ,BOOL_WRITE,CHAR_READ,CHAR_WRITE,STRING_WRITE);
  List_Operations(Machine(BASIC_IO))==(INTERVAL_READ,INT_WRITE,BOOL_READ,BOOL_WRITE,CHAR_READ,CHAR_WRITE,STRING_WRITE)
END
&
THEORY ListInputX IS
  List_Input(Machine(BASIC_IO),INTERVAL_READ)==(mm,nn);
  List_Input(Machine(BASIC_IO),INT_WRITE)==(vv);
  List_Input(Machine(BASIC_IO),BOOL_READ)==(?);
  List_Input(Machine(BASIC_IO),BOOL_WRITE)==(bb);
  List_Input(Machine(BASIC_IO),CHAR_READ)==(?);
  List_Input(Machine(BASIC_IO),CHAR_WRITE)==(cc);
  List_Input(Machine(BASIC_IO),STRING_WRITE)==(ss)
END
&
THEORY ListOutputX IS
  List_Output(Machine(BASIC_IO),INTERVAL_READ)==(bb);
  List_Output(Machine(BASIC_IO),INT_WRITE)==(?);
  List_Output(Machine(BASIC_IO),BOOL_READ)==(bb);
  List_Output(Machine(BASIC_IO),BOOL_WRITE)==(?);
  List_Output(Machine(BASIC_IO),CHAR_READ)==(cc);
  List_Output(Machine(BASIC_IO),CHAR_WRITE)==(?);
  List_Output(Machine(BASIC_IO),STRING_WRITE)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(BASIC_IO),INTERVAL_READ)==(bb <-- INTERVAL_READ(mm,nn));
  List_Header(Machine(BASIC_IO),INT_WRITE)==(INT_WRITE(vv));
  List_Header(Machine(BASIC_IO),BOOL_READ)==(bb <-- BOOL_READ);
  List_Header(Machine(BASIC_IO),BOOL_WRITE)==(BOOL_WRITE(bb));
  List_Header(Machine(BASIC_IO),CHAR_READ)==(cc <-- CHAR_READ);
  List_Header(Machine(BASIC_IO),CHAR_WRITE)==(CHAR_WRITE(cc));
  List_Header(Machine(BASIC_IO),STRING_WRITE)==(STRING_WRITE(ss))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(BASIC_IO),INTERVAL_READ)==(nn: NAT & mm: NAT & mm<=nn);
  List_Precondition(Machine(BASIC_IO),INT_WRITE)==(vv: NAT);
  List_Precondition(Machine(BASIC_IO),BOOL_READ)==(btrue);
  List_Precondition(Machine(BASIC_IO),BOOL_WRITE)==(bb: BOOL);
  List_Precondition(Machine(BASIC_IO),CHAR_READ)==(btrue);
  List_Precondition(Machine(BASIC_IO),CHAR_WRITE)==(cc: 0..255);
  List_Precondition(Machine(BASIC_IO),STRING_WRITE)==(ss: STRING)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(BASIC_IO),STRING_WRITE)==(ss: STRING | skip);
  Expanded_List_Substitution(Machine(BASIC_IO),CHAR_WRITE)==(cc: 0..255 | skip);
  Expanded_List_Substitution(Machine(BASIC_IO),CHAR_READ)==(btrue | @(cc$0).(cc$0: 0..255 ==> cc:=cc$0));
  Expanded_List_Substitution(Machine(BASIC_IO),BOOL_WRITE)==(bb: BOOL | skip);
  Expanded_List_Substitution(Machine(BASIC_IO),BOOL_READ)==(btrue | @(bb$0).(bb$0: BOOL ==> bb:=bb$0));
  Expanded_List_Substitution(Machine(BASIC_IO),INT_WRITE)==(vv: NAT | skip);
  Expanded_List_Substitution(Machine(BASIC_IO),INTERVAL_READ)==(nn: NAT & mm: NAT & mm<=nn | @(bb$0).(bb$0: mm..nn ==> bb:=bb$0));
  List_Substitution(Machine(BASIC_IO),INTERVAL_READ)==(bb:: mm..nn);
  List_Substitution(Machine(BASIC_IO),INT_WRITE)==(skip);
  List_Substitution(Machine(BASIC_IO),BOOL_READ)==(bb:: BOOL);
  List_Substitution(Machine(BASIC_IO),BOOL_WRITE)==(skip);
  List_Substitution(Machine(BASIC_IO),CHAR_READ)==(cc:: 0..255);
  List_Substitution(Machine(BASIC_IO),CHAR_WRITE)==(skip);
  List_Substitution(Machine(BASIC_IO),STRING_WRITE)==(skip)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(BASIC_IO))==(?);
  Inherited_List_Constants(Machine(BASIC_IO))==(?);
  List_Constants(Machine(BASIC_IO))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(BASIC_IO))==(?);
  Context_List_Defered(Machine(BASIC_IO))==(?);
  Context_List_Sets(Machine(BASIC_IO))==(?);
  List_Valuable_Sets(Machine(BASIC_IO))==(?);
  Inherited_List_Enumerated(Machine(BASIC_IO))==(?);
  Inherited_List_Defered(Machine(BASIC_IO))==(?);
  Inherited_List_Sets(Machine(BASIC_IO))==(?);
  List_Enumerated(Machine(BASIC_IO))==(?);
  List_Defered(Machine(BASIC_IO))==(?);
  List_Sets(Machine(BASIC_IO))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(BASIC_IO))==(?);
  Expanded_List_HiddenConstants(Machine(BASIC_IO))==(?);
  List_HiddenConstants(Machine(BASIC_IO))==(?);
  External_List_HiddenConstants(Machine(BASIC_IO))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(BASIC_IO))==(btrue);
  Context_List_Properties(Machine(BASIC_IO))==(btrue);
  Inherited_List_Properties(Machine(BASIC_IO))==(btrue);
  List_Properties(Machine(BASIC_IO))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(BASIC_IO),INTERVAL_READ)==(?);
  List_ANY_Var(Machine(BASIC_IO),INT_WRITE)==(?);
  List_ANY_Var(Machine(BASIC_IO),BOOL_READ)==(?);
  List_ANY_Var(Machine(BASIC_IO),BOOL_WRITE)==(?);
  List_ANY_Var(Machine(BASIC_IO),CHAR_READ)==(?);
  List_ANY_Var(Machine(BASIC_IO),CHAR_WRITE)==(?);
  List_ANY_Var(Machine(BASIC_IO),STRING_WRITE)==(?);
  List_ANY_Var(Machine(BASIC_IO),?)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(BASIC_IO)) == (? | ? | ? | ? | INTERVAL_READ,INT_WRITE,BOOL_READ,BOOL_WRITE,CHAR_READ,CHAR_WRITE,STRING_WRITE | ? | ? | ? | BASIC_IO);
  List_Of_HiddenCst_Ids(Machine(BASIC_IO)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(BASIC_IO)) == (?);
  List_Of_VisibleVar_Ids(Machine(BASIC_IO)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(BASIC_IO)) == (?: ?)
END
&
THEORY OperationsEnvX IS
  Operations(Machine(BASIC_IO)) == (Type(STRING_WRITE) == Cst(No_type,btype(STRING,?,?));Type(CHAR_WRITE) == Cst(No_type,btype(INTEGER,?,?));Type(CHAR_READ) == Cst(btype(INTEGER,0,255),No_type);Type(BOOL_WRITE) == Cst(No_type,btype(BOOL,?,?));Type(BOOL_READ) == Cst(btype(BOOL,0,1),No_type);Type(INT_WRITE) == Cst(No_type,btype(INTEGER,?,?));Type(INTERVAL_READ) == Cst(btype(INTEGER,mm,nn),btype(INTEGER,?,?)*btype(INTEGER,?,?)));
  Observers(Machine(BASIC_IO)) == (Type(STRING_WRITE) == Cst(No_type,btype(STRING,?,?));Type(CHAR_WRITE) == Cst(No_type,btype(INTEGER,?,?));Type(CHAR_READ) == Cst(btype(INTEGER,0,255),No_type);Type(BOOL_WRITE) == Cst(No_type,btype(BOOL,?,?));Type(BOOL_READ) == Cst(btype(BOOL,0,1),No_type);Type(INT_WRITE) == Cst(No_type,btype(INTEGER,?,?));Type(INTERVAL_READ) == Cst(btype(INTEGER,mm,nn),btype(INTEGER,?,?)*btype(INTEGER,?,?)))
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
)
