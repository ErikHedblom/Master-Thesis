package Modelica
  package Fluid
    package Modelica
    end Modelica;
		
    package Pipes
      Real r = 5;
      Real A = r*r*Modelica.Constants.pi;
    end Pipes;
  end Fluid;
	
  package Constants
    final constant Real pi=
	2*Modelica.Math.asin(1.0);
  end Constants;
end Modelica;