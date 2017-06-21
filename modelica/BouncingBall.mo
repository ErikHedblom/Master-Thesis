model BouncingBall //A model of a bouncing ball
  parameter Real g = 9.81; //Acceleration due to gravity
  parameter Real e = 0.9; //Elasticity coefficient
  Real pos(start=1); //Position of the ball
  Real vel(start=0); //Velocity of the ball
equation
  der(pos) = vel; //Newtons second law
  der(vel) = -g;
  when pos <= 0 then
    reinit(vel, -e*pre(vel)); // set velocity after bounce
  end when;
end BouncingBall;

model BBex
  BouncingBall eBall; //Ball on earth
  BouncingBall mBall(g=1.62); //Ball on the moon
end BBex;
