clear;
clc;
p = input("Enter population: ");
H = input("Enter average call duration: ");
GoS = input("Enter Grade of Service: ");
lam = input("Enter User Average: ");
Au = lam * H;
C = [];
A = [];
U = [];
cells = [];
sub = [];
per = [];
for i = 1:3
C(i) = input("Enter number of channels per cell for System " + string(i) + ": ");
A(i) = input("Enter total carried traffic for System " + string(i) + ": ");
U(i) = A(i) / Au;
cells(i) = input("Enter number of cells in System " + string(i) + ": ");
sub(i) = U(i) * cells(i);
end
disp("The number of subscribers that can be supported by System A are: " + string(sub(1)));
disp("The number of subscribers that can be supported by System B are: " + string(sub(2)));
disp("The number of subscribers that can be supported by System C are: " + string(sub(3)));
sub(4) = sub(1)+sub(2)+sub(3);
disp("The total number of cellular subscribers are ",sub(4));
for j = 1:4
per(j) = (sub(j)/p)*100;
end
disp("Market penetration for System A is "+string(per(1))+"%");
disp("Market penetration for System B is "+string(per(2))+"%");
disp("Market penetration for System C is "+string(per(3))+"%");
disp("Market penetration for System combine is "+string(per(4))+"%");