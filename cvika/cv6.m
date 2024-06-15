%Šimon,Tlustý
f1 = @(x) atan((x+1)./(x-1))
f2 = @(x) x./sqrt((x.*x)-1)
f3 = @(x) x.^x
%limity
syms x
disp("--limit f1--")
limit(f1, x, inf, 'left')
limit(f1, x, -inf, 'right')
limit(f1, x, 1, 'left')
limit(f1, x, 1, 'right')

disp("--limit f2--")
limit(f2, x, inf, 'left')
limit(f2, x, -inf, 'right')
limit(f2, x, 1, 'left')
limit(f2, x, 1, 'right')

disp("--limit f3--")
limit(f3, x, inf, 'left')
limit(f3, x, -inf, 'right')
limit(f3, x, 1, 'left')
limit(f3, x, 1, 'right')

%figury
x=-10:0.01:10
figure
x1 = x
x1(x1==1)=NaN
f1_vys = f1(x1);
f1_vys(f1_vys ~=real(f1_vys))=NaN;
plot(x,real(f1_vys))
ylabel("f(x)=atan((x+1)/(x-1))");
xlabel("-10<x<10");
legend

figure;
f2_vys = f2(x);
f2_vys(f2_vys ~=real(f2_vys))=NaN;
plot(x,real(f2_vys))
ylabel("f(x)=1/sqrt(x^2-1)");
xlabel("-10<x<10");
legend

figure;
f3_vys = f3(x);
f3_vys(f3_vys ~=real(f3_vys))=NaN;
plot(x,real(f3_vys),'o-')
ylabel("f(x)=x^x");
xlabel("-10<x<10");
legend
