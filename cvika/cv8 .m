%Šimon,Tlustý


%1
%integrály ze zadání
%1/(2+cos(x)),0,2*pi
%x*arctan(x),0,3^(1/2)
%(1-sin(2x))^(1/2),0,2*pi
%e^(-x^2),-10,5
%e^(-x^2),-inf,inf

%analytická metoda
syms x;
p=int(1/(2+cos(x)),0,2*pi);
vysledek_an=double(p)

%obdel. metoda
syms x;
krok=0.0001;
rozdeleni=0:krok:(2*pi-krok);
xv=rozdeleni+krok/2;
vysledek_obd=sum(1./(2+cos(xv))*krok);

%porovnani vysledku
porovnani=abs(vysledek_an-vysledek_obd);
porovnani<=0.0001

%2
syms n
n_num=1:1:10000;

fce1=(-1)^n*(1/(2^(n-1)))
%analytický výpočet:
vpa(symsum(fce1,n,1,inf))
%numerická aproximace:
sum(vpa(subs(fce1,n,n_num)))

fce2=(1/(n*(n+1)))
%analytický výpočet:
vpa(symsum(fce2,n,1,inf))
%numerická aproximace:
sum(vpa(subs(fce2,n,n_num)))

fce3=(-1)^n*(1/n)
%analytický výpočet:
vpa(symsum(fce3,n,1,inf))
%numerická aproximace:
sum(vpa(subs(fce3,n,n_num)))

fce4=(((2*n)-1)/(2^n))
%analytický výpočet:
vpa(symsum(fce4,n,1,inf))
%numerická aproximace:
sum(vpa(subs(fce4,n,n_num)))


%3
syms a
assume(a,"real")
figure(1)
Mat1=[1,7,a;a^2,3,1-a;0,5,6]
fplot(det(Mat1),[-10,10])
hold on
Mat1_vys=solve(diff(det(Mat1))==0)
plot(Mat1_vys,subs(det(Mat1),a,Mat1_vys),"x")

figure(2)
Mat2=[a,8,-3*a;1,(1-a)^2,a;3,-1,4]
fplot(det(Mat2),[-10,10])
hold on
Mat2_vys=solve(diff(det(Mat2))==0)
plot(Mat2_vys,subs(det(Mat2),a,Mat2_vys),"x")

