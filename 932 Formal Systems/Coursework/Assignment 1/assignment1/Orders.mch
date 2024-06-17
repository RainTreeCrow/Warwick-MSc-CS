/* Orders
 * Author: Hanzhi Zhang & Bingshen Chen
 * Creation date: 12/11/2023
 */
MACHINE
    Orders
    
SETS
    ITEMS
    
CONSTANTS
    maxorder
    
PROPERTIES
    maxorder : NAT1
    
VARIABLES
    orders, stock
    
INVARIANT
    orders : seq(ITEMS +-> NAT1) & stock : ITEMS +-> NAT1 & card(orders) <= maxorder
    /* use sequence for storing orders to guarantee a FIFO waitlist;
       the backlog of orders cannot exceed "maxorder" limit */
       
INITIALISATION
    orders := {} || stock := {}
    
OPERATIONS
    receiveorder(oo) =
    PRE oo : ITEMS +-> NAT1 & oo /= {} & card(orders) < maxorder
    THEN orders := orders <- oo
        /* use append to add new coming order to the tail,
           so the waitlist fuctions like a FIFO queue (front - tail, old - new) */
    END;
    
    receivestock(ss) =
    PRE ss : ITEMS +-> NAT1 & ss /= {}
    THEN ANY ns
            /* using nondeterministic assignment */
        WHERE ns : ITEMS +-> NAT1 & dom(ns) = dom(stock) \/ dom(ss) &
            /* type check, and make sure the new stock consist of the proper items */
            !(ii).(ii : dom(stock) /\ dom(ss) => ns(ii) = stock(ii) + ss(ii)) &
            /* for items that already exist, update stock by adding the newly delivered amount */
            !(ii).(ii : dom(ss) - dom(stock) => ns(ii) = ss(ii)) &
            /* for items that haven't been stored yet, set the stock to delivered amount */
            !(ii).(ii : dom(stock) - dom(ss) => ns(ii) = stock(ii))
            /* for items in stock that do not need update, keep the old amount */
        THEN stock := ns
        END
    END;
    
    aa <-- howmany(ii) =
    PRE ii : ITEMS
    THEN IF ii : dom(stock)
        THEN aa := stock(ii)
        ELSE aa := 0
            /* if the item does not exist in the stock, return 0 */
        END
    END;
    
    /* here are two approaches to find the orders that including the item ii request*/
    oos <-- whereisitem(ii) =
    PRE ii : ITEMS
    THEN oos := {oo | oo : ran(orders) & ii : dom(oo)}
    END;    
    /* Here we output all waiting orders that include a request for ii into a set,
       and assume that we don't care about how they have arrived,
       but to "identify" the orders and perhaps to keep the sequential information,
       we may output the indices of the sequence as "identifiers"? */
    
    ids <-- whereisitem_2(ii) =
    PRE ii : ITEMS
    THEN ids := {idd | idd : 1..card(orders) & ii : dom(orders(idd))}
    END;    
    /* Suppose we want the orders later, we can retrieve them using these indices,
       and to know which one arrives before/after which one, we compare the keys,
       for example, to retrive the "earliest received" among these orders,
       we may simply select the smallest index from the set */
    
    tt <-- totordered(ii) =
    PRE ii : ITEMS
    THEN tt := SIGMA(oo).(oo : ran(orders) & ii : dom(oo) | oo(ii))
    END;
    
    iis <-- lowstock(nn) =
    PRE nn : NAT1
    THEN iis := {ii | ii : dom(stock) & stock(ii) < nn}
    END;
    
    ll <-- oneoflowest =
    ANY ii
    WHERE ii : dom(stock) & !(jj).(jj : dom(stock) => stock(ii) <= stock(jj))
        /* select a item that has a stock level lower or equal to any stock item,
           "<=" is used here so there is no need to exclude itself from the search */
    THEN ll := ii
    END;
    
    serviceorder =
    PRE orders /= []
        /* ensure that there must be an order currently waiting in the list */
    THEN LET oo BE oo = first(orders)
            /* take the first element which is also the oldest */
        IN IF !(ii).(ii : dom(oo) => ii: dom(stock) & oo(ii) <= stock(ii))
                /* check if the order can be supplied in full */
            THEN orders := tail(orders) ||
                /* remove the first order */
                ANY ns
                WHERE ns : ITEMS +-> NAT1 &
                    dom(ns) = dom(stock) - {ii | ii : dom(oo) & oo(ii) = stock(ii)} &
                    /* update the remaining stock items to be all stock items -
                       items in stock that happen to be used up in the order */
                    !(ii).(ii : dom(oo) & oo(ii) < stock(ii) => ns(ii) = stock(ii) - oo(ii)) &
                    /* for items that haven't run out, update the stock */
                    !(ii).(ii : dom(stock) - dom(oo) => ns(ii) = stock(ii))
                    /* for items that haven't been used at all, do nothing */
                THEN stock := ns
                END
            END
        END
    END;
    /* in other words, if the stock of an item reduce to zero when after serving an order,
       we just remove the item from the stock instead of keeping a "item |-> 0" there,
       this is to make sure when we call the "oneoflowest" function,
       we actually get an item with the lowest (but non zero) stock level,
       rather than outputing some item not in stock at all */
    
    complicatedserviceorder =
    PRE orders /= []
    THEN LET ids BE ids = {idd | idd : 1..card(orders) &
                !(ii).(ii : dom(orders(idd)) => ii: dom(stock) & (orders(idd))(ii) <= stock(ii))}
            /* firstly, filter out the index of all orders with sufficient stock
               supplied, store these index in ids*/
        IN IF ids = {}
            THEN skip
            ELSE orders := (orders /|\ (min(ids) - 1)) ^ (orders \|/ min(ids)) ||
                /* select the order with the smallest index,
                   which is the longest-waiting order with sufficient stock,
                   remove this order using take, drop and concatenation */
                LET oo BE oo = orders(min(ids))
                IN ANY ns
                    WHERE ns : ITEMS +-> NAT1 &
                        dom(ns) = dom(stock) - {ii | ii : dom(oo) & oo(ii) = stock(ii)} &
                        !(ii).(ii : dom(oo) & oo(ii) < stock(ii) => ns(ii) = stock(ii) - oo(ii)) &
                        !(ii).(ii : dom(stock) - dom(oo) => ns(ii) = stock(ii))
                    THEN stock := ns
                    END
                END
                /* the same as serviceorder, but here we already know
                   that oo can be supplied in full so no need to check again */
            END
        END
    END
    
END
