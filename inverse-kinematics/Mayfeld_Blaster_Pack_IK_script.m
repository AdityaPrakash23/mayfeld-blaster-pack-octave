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
syms shoulderToElbow; #length value based on a coordinate pair; 
#which will be a2+d3
#Considering origin at the 2nd joint,Joints 1 to 3 are like a spherical case.
#Azimuth angle will be 180 and Polar angle will be -x degrees. 
#theta1 will be the default initial value luckily. theta2 will be -x degrees.
#d3 will be distance from joint 3 to joint 4 based on a human's back measuments.

#For joint 4 and 5, the distance from the elbow to the wrist(joint 6) will
#determine the angles for the joints 4 and 5. So that will lead to an obtuse
#tringle being formed. The angles of this obtuse tringle will be placed over 
#the 2 joints and we will get the joint values.

#For joint 6, the angle will depend on which direction the gun needs to point.
#That will be adjusted over the offset angle of joint 6 and we will get the
#joint angle for the final rotational joint.