model A
  Real x = 1;
end A;

model B
  A a;
  Real y = a.x;
end B;

model C
  A a(x=2);
  Real y = a.x;
end C;