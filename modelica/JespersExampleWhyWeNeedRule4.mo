package M
    model M

        function f = P.f;
        replaceable package P = P1 constrainedby P3;

    end M;

    model A

        M m(replaceable package P = P2 constrainedby P4);

    end A;

    model B
        extends A(redeclare package P = P5);
        Real y = m.f(10);
    end B;

end M;