within ;

package P
  package A
    package B
	  extends C;
    end B
  end A;

  model D
    Real x = A.B.f(10);
  end D;
end P;