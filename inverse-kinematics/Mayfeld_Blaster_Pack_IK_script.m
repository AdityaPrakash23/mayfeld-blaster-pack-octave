pkg load symbolic
#Variables Declared for the Kinematics of the Mayfeld Blaster pack
syms a1 theta1 offset1 theta2 a2 d3 a4 theta4 offset2 theta5 a d;

A03 = [ cosd(theta1)*sind(theta2), -cosd(theta1)*cosd(theta2), -sind(theta1), -cosd(theta1)*cosd(theta2)*(a2+d3) + sind(theta1)*offset1;
        sind(theta1)*sind(theta2), -sind(theta1)*cosd(theta2),  cosd(theta1), -sind(theta1)*cosd(theta2)*(a2+d3) - cosd(theta1)*offset1;
       -cosd(theta2)             , -sind(theta2)             ,  0           , -sind(theta2)*(a2+d3) + a1;
        0                        ,  0                        ,  0           ,  1];
        
A36 = [ -sind(theta4+theta5)*cosd(theta6),  sind(theta4+theta5)*sind(theta6), cosd(theta4+theta5), -a*cosd(theta6)*sind(theta4+theta5)+d*cosd(theta4+theta5)+a4*cosd(theta4);
        -cosd(theta4+theta5)*cosd(theta6), -cosd(theta4+theta5)*sind(theta6), sind(theta4+theta5),  a*cosd(theta6)*cosd(theta4+theta5)+d*sind(theta4+theta5)+a4*sind(theta4);
         0                               ,  cosd(theta6)                    , 0                  ,  a*sind(theta6)+offset2;
         0                               ,  0                               , 0                  ,  1];
         
#Now we will be dividing IK calculations into 2 parts, 
#Joints 1-3 will be a Geometric spherical case, and Joints 4-5 
#will be a Geometric Circle case. Arbitrary physical human body 
#measuments are considered here.Also other assumptions will be 
#considered.