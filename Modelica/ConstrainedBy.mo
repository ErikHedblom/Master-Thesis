package P
    model M1
        function f = P0.f;
        replaceable package P0 = P1 constrainedby P3;
    end M1;

    model M2
        M1 m(replaceable package P0 = P2 constrainedby P4);
    end M2;

    model M3
        extends M2(redeclare package P0 = P5);
        Real y = m.f(10);
    end M3;
end P;