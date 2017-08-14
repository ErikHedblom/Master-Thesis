package P
  model M1
    replaceable package P0 = P1;
    function f = P0.f;
  end M1;

  model M2
    M1 m(replaceable package P0 = P2);
    Real y = m.f (10);
  end M2;
end P;