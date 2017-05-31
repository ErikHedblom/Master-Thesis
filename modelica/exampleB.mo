package TestLib14
  package A
    package B = C;
  end A;

  model D
    Real x = A.B.f(10);
  end D;
end TestLib14;