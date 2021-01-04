%This is a script for calculating forward kinematics for
%Mayfeld's Blaster pack project on Hackaday.io

clc;clear all;

%TF Matrix A1
a1 = input('Enter a1 : ');
theta1 = input('Enter theta1 : ');
theta1 = (theta1 * pi) / 180;
A01 = dhMatrix(0,pi/2,a1,theta1);

%TF Matrix A2
offset = input('Enter offset : ');
theta2 = input('Enter theta2 : ');
theta2 = (theta2 * pi) / 180;
A12 = dhMatrix(0,pi/2,offset,theta2 - (pi/2));

%TF Matrix A3
d3 = input('Enter d3 : ');
a2 = input('Enter a2 : ');
A23 = dhMatrix(0,pi/2,d3+a2,pi);

%TF Matrix A4
a4 = input('Enter a4 : ');
theta4 = input('Enter theta4 : ');
theta4 = (theta4 * pi) / 180;
A34 = dhMatrix(a4,0,0,theta4);

%TF Matrix A5
theta5 = input('Enter theta5 : ');
theta5 = (theta5 * pi) / 180;
A45 = dhMatrix(0,pi/2,0,theta5 + (pi/2));

%TF Matrix A6
a = input('Enter a : ');
d = input('Enter d : ');
theta6 = input('Enter theta6 : ');
theta6 = (theta6 * pi) / 180;
A56 = dhMatrix(a,0,d,theta6);

%Final TF Matrix
A06 = A01*A12*A23*A34*A45*A56;