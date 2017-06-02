package P
  package P
  end P;

  package P2  
    model A
      Real a = P.B.b;
    end A;
  end P2;
	
  model B
    final constant Real b = 1;
  end B;
end P;