model BouncingBall //The 'classic' bouncing ball model
  parameter Real e = 0.8; //Elasticity coefficient
  parameter Real g = 9.81; //Acceleration due to gravity
  Height h(start=1); //Height of the ball
  Velocity v(start=0); //Velocity of the ball
equation
  der(h) = v; //Newtons second law
  der(v) = -g;
  when h <= 0 then
    reinit(v, -e*pre(v)); // Set velocity after bounce
  end when;
end BouncingBall;