package P
  model E
    A a;
    Real r = a.B.f(1);
  end E;
	
  model A
    model B
      function f
        input Real x;
        output Real y;
      algorithm
        y := x;
      end f;
    end B;
  end A;
end P;