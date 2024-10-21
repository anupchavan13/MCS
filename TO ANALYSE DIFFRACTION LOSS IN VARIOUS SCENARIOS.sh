clc; clear all;
lambda = input("Enter the wavelength: "); distance_1 = input("Enter distance 1: "); distance_2 = input("Enter distance 2: "); height = input("Enter the height: ");

v = height*sqrt((2*(distance_1 + distance_2)) / (lambda*distance_1*distance_2)); vstring = string(v)
disp('Frensel diffraction parameter for the given height ' + vstring);

if v<-1 then GdB = 0;
elseif (-1 <= v && v < 0) then GdB = 20*log(0.5 - 0.62*v);
elseif (0 <= v && v< 1) then
GdB = 20*log(0.5*exp(-0.95*v)); elseif (1 <= v && v < 2.4) then
GdB = 20*log(0.4 - sqrt(0.1184 - (0.38-0.1*v)^2));
elseif (v >= 2.4) then
GdB = 20*log((0.225)/v); end
GdB_string = string(GdB); disp("Diffraction Loss " + GdB_string);

delta = ((height^2)/2) * ((distance_1 + distance_2) / (distance_1*distance_2)); delta_string = string(delta);
disp("Path length difference by diffracted rays : " + delta_string);

n = (2*delta) / lambda; n = floor(n);
n_string = string(n);
disp("Numbe of tip obstructions " + n_string)
gdbs = []
v0 = -1:0.1:0;
gdbs = 20*log(0.5 - 0.62*v0); plot(v0,gdbs,'r');
xlabel("Frensel diffraction parameter"); ylabel("Diffraction Loss (in dB)");

v0 = 0:0.1:1;
gdbs = 20*log(0.5*exp(-0.95*v0)); plot(v0,gdbs,'g');

v0 = 1:0.1:2.4;
gdbs = 20*log(0.4 - sqrt(0.1184 - (0.38-0.1*v0)^2)); plot(v0,gdbs,'b');
