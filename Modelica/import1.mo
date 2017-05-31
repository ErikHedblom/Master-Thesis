package P
  package A
    package B
      extends C;
    end B;
  end A;

  package C
    package D
    end D;
  end C;

  package E
    import P.A.B.D;
  end E;
end P;