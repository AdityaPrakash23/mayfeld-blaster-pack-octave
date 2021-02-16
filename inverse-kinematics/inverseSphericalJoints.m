%In this function, based on the wrist center coordinates, 3 joint(RRP) values are calculated
function  jointValues = inverseSphericalJoints(x,y,z)
  display('Calculating Joint values for the given Wrist center in a spherical case...');
  theta1 = (atan2(y,x)/3.14) * 180;
  theta2 = (atan2(sqrt((x*x)+(y*y)),z)/3.14) * 180;
  d3 = sqrt((x*x)+(y*y)+(z*z));
  jointValues = [theta1 theta2 d3];
endfunction