input metauml;

beginfig(1);
    Class.P("Person")()();
    Class.C("Company")()();
    
    leftToRight(150)(P, C);
    
    drawObjects(P, C);
    
    clink(association)(P, C);
    
    item(iAssoc)("employee")(obj.sw = P.e);
    item(iAssoc)("1..*")(obj.nw = P.e);
    
    item(iAssoc)("employer")(obj.se = C.w);
    item(iAssoc)("0..*")(obj.ne = C.w);
    
    item(iAssoc)("works for")(obj.s =.5[P.e,C.w]);
endfig;

beginfig(2);
    Class.A("Point")
       ("+x: int",
        "+y: int") ();
    
    Class.B("Circle")
           ("radius: int")
           ("+getRadius(): int",
            "+setRadius(r: int):void");
    
    topToBottom(45)(A, B);
    
    drawObjects(A, B);
    
    clink(aggregationUni)(A, B)
endfig;

end
