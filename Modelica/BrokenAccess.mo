package P1
  constant M m;

  model M
    function f
      input Real x;
      output Real y;
    algorithm 
      y := x;
    end f;
  end M;

  package P2
    Real x = P1.m.f(1);
  end P2;
end P1;