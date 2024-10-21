clc;
clear;
Carr_Freq = input("enter the carrier frequency Hz:");
vel_KM  = input("enter the value of velocity in Km:");
vel_M = vel_KM * (5/18); 
disp("Velocity in m/s is :",vel_M);
C = 3 * 10^8;
format("v",20);
lamda = C / Carr_Freq;
function FREQ(a)
    f_d = (vel_M * cos(a))/lamda;
    disp("the value of frequency difference is :",f_d);
    tot_freq = Carr_Freq + f_d;
    disp("tot_freq (hz):",tot_freq);
endfunction
disp("the value of lamda is :",lamda);
theta = input("enter the value of theta 1(deg):")
rad =theta*(%pi/180); 
FREQ(rad);
theta1 = input("enter the value of theta2(deg):")
rad =theta1*(%pi/180);
FREQ(rad);
theta3 = input("enter the value of theta3(deg):")
rad =theta3*(%pi/180);
FREQ(rad);
theta4 = input("enter the value of theta4(deg):")
rad =theta4*(%pi/180);
FREQ(rad);
theta5 = input("enter the value of theta5(deg):")
rad =theta5*(%pi/180);
FREQ(rad);



