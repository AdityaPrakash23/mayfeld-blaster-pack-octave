%This is a script for inverse wrist position calulations. The considration is that
%the wrist center for the Mayfeld's Blaster pack is at the end of joint 3(the linear
%joint). This is basically the case for a RRP configuration where the x,y and z coordinates
%are used to find theta1, theta2 and d3. In our case, theta1 is supposed to be zero, with
%theta2 and d3 varying according to the x and z coordinate values(y value will be zero).
%This whole approach is based on Geometric approach.

x = 20;   %20mm (this is a random value, which will change based on the size of user's back
y = 0;
z = 10;   %10mm (this will also change

jointVal = inverseSphericalJoints(x,y,z);

display(['The calulated joint values for the specified wrist center are : ' num2str(jointVal(1)) ' ' num2str(jointVal(2)) ' ' num2str(jointVal(3))]);
