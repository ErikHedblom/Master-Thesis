package P
  constant A a;

  model A
    function f
      input Real x;
      output Real y;
    algorithm 
      y := x;
    end f;
  end A;

  package B
    Real x = P.a.f(1);
  end B;
end P;