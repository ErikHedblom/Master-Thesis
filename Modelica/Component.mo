package P
  model M1
    M2 m;
    Real r = m.M3.f(1);
  end M1;
	
  model M2
    model M3
      function f
        input Real x;
        output Real y;
      algorithm
        y := x;
      end f;
    end M3;
  end M2;
end P;