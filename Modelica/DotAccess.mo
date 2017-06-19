package P1
  package P2
    extends P3;
  end P2

  package P3
    function f
      input Real x;
      output Real y;
    algorithm
      y := x;
    end f;
  end P3;

  model M
    Real x = P2.f(0);
  end M;
end P1;