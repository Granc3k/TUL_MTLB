%Šimon,Tlustý

% 1
clear;
f1 = @(x1) (sin(x1)./x1) + exp(-(x1-4).^2);
x1 = -10:0.01:10;
y1 = f1(x1);
figure(1);
plot(x1, y1);
min_1a = fminbnd(f1, 2, 4);
min_1b = fminbnd(f1, 4, 6);

% 2
f_2 = @(x_2) (1/4.*x_2.^4) - (41/6.*x_2.^3) + (209/4.*x_2.^2) - (135.*x_2);
x_2 = -200:0.1:200;
figure(2);
plot(x_2,f_2(x_2));
min_2 = fminbnd(f_2, 13, 14);

%3 
f_3a = @(x)100*(x(2) -  x(1).^2).^2 + (1 - x(1)).^2 ;
[x_3a, x_3b] = meshgrid(-2:0.1:2, -2:0.1:2);                                 
f_3b = 100 * (x_3b -  x_3a.^2).^2 + (1 - x_3a).^2;
figure(3);
surf(x_3a, x_3b, f_3b);
min = fminsearch(f_3a, zeros(2));

%4 
f_4 = [-5,-2,-6];
A_4 = [1,-1,1; 3,2,4; 3,2,0];
b_4 = [20;42;30];
lb_4 = zeros(3,1);
lin_fce = linprog(f_4,A_4,b_4,[],[],lb_4);

%5
syms x_5a x_5b x_5c
f_5 =  4*x_5a^2 + 2*x_5b^2 + 3*x_5c^2 + 2*x_5a*x_5b - 3*x_5b*x_5c - x_5a;
hessian(f_5,[x_5a, x_5b, x_5c]); 
H = [ 8  2  0;
      2  4 -3;
      0 -3  6];
f_5 = [-1 0 0];
A_5 = [1 -1 1;
     1 2 -6];
b_5 = [-1; 5];
lb_5 = zeros(3,1);
kvad_fce = quadprog(H,f_5,A_5,b_5,[],[],lb_5);