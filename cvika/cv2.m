%Šimon_Tlustý
clear

%1
n=floor(10+30.*rand(3,1));
C=randn(n(1),n(2),n(3));


%2
pC=numel(C);
fC=0;
for c1=1:n(1)
    for c2=1:n(2)
        for c3=1:n(3)
            fC = fC+C(c1,c2,c3);
        end
    end
end
prumerFC=fC/pC;

sC=sum(C,"all");
prumersC=sC/pC;

%3
CS=squeeze(C(1,:,:));
prumerC=mean(CS,2);
CS=CS-prumerC;


%4
function x_v=kokos(x)
   x_v=sin(x).^2.*cos(x);
end



