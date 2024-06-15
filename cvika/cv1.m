%Simon
clear
%1
a=1:50;
%2
b=1:0.2:10;

%3
A= ones(3,3);
B=zeros(3,3);
D=eye(3,3);

%4
M=[A,B,D];

%5
C=[1,-1,1;1,-1,0;-1,0,1];

%6
B1=inv(C);

%7
%a)
prvkyCB1=C.*B1;

%b)
maticoveCB1=C*B1;

%8
nasobeniMC=M'*C;

%9
C(:,2)=rand;

%10
C(1,:)=[4,20,69];

%11
C1=C(1,[end-1,end]);

%12
C(C>=0)=1;
C(C<0)=rand(size(C(C<0)));



