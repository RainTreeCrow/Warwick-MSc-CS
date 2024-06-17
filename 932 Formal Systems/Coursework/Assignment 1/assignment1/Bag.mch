/* Bag
 * Author: Hanzhi Zhang & Bingshen Chen
 * Creation date: 12/11/2023
 */
MACHINE
    Bag(ELEM, cap, cost)
    
CONSTRAINTS
    cap : NAT1 & cost : ELEM --> NAT1
    /* & cap > 3 (for testing more cases in ProB) */
    /* We assume that a capacity wouldn't be zero,
       otherwise it would be sort of meaningless... */
       
VARIABLES
    bag
    
INVARIANT
    bag : ELEM +-> NAT1 & !(ee).(ee : dom(bag) => bag(ee) <= cap)
    
INITIALISATION
    bag := {}
    
OPERATIONS
    addbag(ee) =
    PRE ee : ELEM & (ee : dom(bag) => bag(ee) < cap)
    THEN IF ee /: dom(bag)
        THEN bag := bag \/ {ee |-> 1}
            /* if item dose not exist in bag, set the number of occurrence to one */
        ELSE bag := bag <+ {ee |-> bag(ee) + 1}
            /* otherwise increase the number of occurrence by one */
        END
    END;
    
    rembag(ee) =
    PRE ee : ELEM & ee : dom(bag)
    THEN IF bag(ee) = 1
        THEN bag := {ee} <<| bag
            /* if there is only one such item left, remove it from the domain */
        ELSE bag := bag <+ {ee |-> bag(ee) - 1}
            /* otherwise decrease the number of occurrence by one */
        END
    END;
    
    oo <-- countelm(ee) =
    PRE ee : ELEM
    THEN IF ee : dom(bag)
        THEN oo := bag(ee)
        ELSE oo := 0
            /* if the item is not in the bag, return 0 */
        END
    END;
    
    oo <-- totelms =
    oo := SIGMA(ee).(ee : dom(bag) | bag(ee));
    
    bb <-- isin(ee) =
    PRE ee : ELEM
    THEN bb := bool(ee : dom(bag))
    END;
    
    bagunion(bb) =
    PRE bb : ELEM +-> NAT1 &
        /* the new bag should not contain any item not accepted by ELEM */
        !(ee).(ee : dom(bag) /\ dom(bb) => bag(ee) + bb(ee) <= cap) &
        /* check if the combined sum of items that appear in both the input bag
           and the original one has exceeded the capacity limit */
        !(ee).(ee : dom(bb) - dom(bag) => bb(ee) <= cap)
        /* check if the number of items that only appear in the input bag
           has exceeded the capacity limit,
           as for items that only appear in our original bag,
           we know the capacity check is already taken care of in the invariant,
           so there's no need to worry about it here */
    THEN ANY nb
        WHERE nb : ELEM +-> NAT1 & dom(nb) = dom(bag) \/ dom(bb) &
            /* type and domain restriction for nondeterministic statement */
            !(ee).(ee : dom(bag) /\ dom(bb) => nb(ee) = bag(ee) + bb(ee)) &
            /* restrict occurrence of items that appear in both bags */
            !(ee).(ee : dom(bag) - dom(bb) => nb(ee) = bag(ee)) &
            /* restrict occurrence of items that only appear in our original bag */
            !(ee).(ee : dom(bb) - dom(bag) => nb(ee) = bb(ee))
            /* restrict occurrence of items that only appear in the input bag */
        THEN bag := nb
        END
    END;
    
    ss <-- outputseq =
    ANY sq
    WHERE sq : seq(ELEM) & card(sq) = SIGMA(ee).(ee : dom(bag) | bag(ee)) &
        /* length of the sequence equals to total number of items in bag */
        !(ee).(ee : dom(bag) => card(sq |> {ee}) = bag(ee))
        /* for each item in bag, its counted number of occurrence in the sequence
           equals to the number directly stored and acquired using "bag" */
    THEN ss := sq
    END;
    
    addinseq(ss) =
    PRE ss : seq(ELEM) &
        /* the sequence should not contain any item not accepted by ELEM */
        !(ee).(ee : dom(bag) /\ ran(ss) => bag(ee) + card(ss |> {ee}) <= cap) &
        /* check if the combined sum of items that appear in both the input sequence
           and the bag has exceeded the capacity limit */
        !(ee).(ee : ran(ss) => card(ss |> {ee}) <= cap)
        /* check if the number of items that only appear in the input sequence
           (by itself) has exceeded the capacity limit */
    THEN ANY nb
        WHERE nb : ELEM +-> NAT1 & dom(nb) = dom(bag) \/ ran(ss) &
            /* type and domain restriction */
            !(ee).(ee : dom(bag) /\ ran(ss) => nb(ee) = bag(ee) + card(ss |> {ee})) &
            /* occurrence of items that appear in both the bag and the sequence */
            !(ee).(ee : dom(bag) - ran(ss) => nb(ee) = bag(ee)) &
            /* occurrence of items that only appear in the bag */
            !(ee).(ee : ran(ss) - dom(bag) => nb(ee) = card(ss |> {ee}))
            /* occurrence of items that only appear in the sequence */
        THEN bag := nb
        END
    END;
    
    cc <-- totalcost =
    cc := SIGMA(ee).(ee : dom(bag) | bag(ee) * cost(ee))
    
END
