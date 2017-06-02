package P

  packag P2
    model A
      import P;
      Real a = P.B.b;
    end A;
  end P2;
	
  model B
    final constant Real b = 1;
  model B;
end P;