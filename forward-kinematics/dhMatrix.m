%This function calculates DH Transform matrix for 1 transform based on user provided DH Parameters
function DH = dhMatrix (a,alpha,d,theta)
  DH = [ cos(theta), -sin(theta)*cos(alpha),  sin(theta)*sin(alpha), a*cos(theta);
         sin(theta),  cos(theta)*cos(alpha), -cos(theta)*sin(alpha), a*sin(theta);
         0,           sin(alpha),             cos(alpha),            d;
         0,           0,                      0,                     1; ];
         
endfunction
