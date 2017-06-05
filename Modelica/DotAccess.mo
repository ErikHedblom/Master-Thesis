package P
  package A
    extends B;
  end A

  package B
    function f
      input Real x;
      output Real y;
    algorithm
      y := x;
    end f;
  end B;

  model C
    Real x = A.f(0);
  end C;
end P;