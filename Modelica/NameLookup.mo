package P1
  package P2
    constant Real k = 1;
  end P2;

  package P3
    model M
      Real x  = P2.k;
    end M;
  end P3;
end P1;