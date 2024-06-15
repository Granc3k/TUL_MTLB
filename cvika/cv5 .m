%Šimon,Tlustý

%1
clear
figure(1)
angle = 0:(2*pi)/6:2*pi;
x=1+sin(angle);
y=0+cos(angle);
axis("equal");
plot(x,y);


%2
figure(2)
title("porovnání funkce f(x,y)")
xlabel("-5<x<5")
ylabel("z")
x = -5:0.05:5;
f_1=obraz(x);
f_2=obraz(x,1);
f_3=obraz(x,2);
hold on
plot(x,f_1,"DisplayName","f(x)")
plot(x,f_2,"DisplayName","f(x,1)")
plot(x,f_3,"DisplayName","f(x,2)")
legend


%3 
figure(3)
ax1=subplot(3,1,1);
plot(x,f_1,"DisplayName","f(x)")
title("funkce f(x)")
xlabel("-5<x<5")
ylabel("z")
ax2=subplot(3,1,2);
plot(x,f_2,"DisplayName","f(x,1)")
title("funkce f(x,1)")
xlabel("-5<x<5")
ylabel("z")
ax3=subplot(3,1,3);
plot(x,f_3,"DisplayName","f(x,2)")
title("funkce f(x,2)")
xlabel("-5<x<5")
ylabel("z")
linkaxes([ax1 ax2 ax3],"x")

%4
figure(4)
x = -5:0.1:5;
y = -6:0.2:6;
z = obraz(x,y');
mesh(x,y,z);
title("3D plocha f(x,y)")
xlabel("-5<x<5")
ylabel("-6<y<6")
zlabel("z")



%funkce na zobrazovani ukolu 2 a 4
function vyhodi=obraz(x,y)
    if(nargin==1)
        y=zeros(size(x));
    end
    num = exp((-x.^2) + (-y.^2));
    num = x.*num;
    vyhodi = num  + tanh(x.*y);
end



