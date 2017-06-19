package P1
  package P2
    function f
      input Real x;
      output Real y;
    algorithm
      y := x;
    end f;
  end P2;

  package P3
    extends P2;
  end P3

  model M
    Real x = P3.f(0);
  end M;
end P1;