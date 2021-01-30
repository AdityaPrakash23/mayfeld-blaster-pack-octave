%In this function, based on the wrist center coordinates, 3 joint(RPP) values are calculated
function  jointValues = inverseCylindricalJoints(x,y,z)
  display('Calculating Joint values for the given Wrist center in a cylindrical case...');
  theta1 = atan2(y,x);
  d3 = sqrt((x*x)+(y*y));
  d2 = z;
  jointValues = [theta1 d2 d3];
endfunction