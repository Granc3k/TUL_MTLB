%Šimon,Tlusty

% 1.  Sectete symbolicky zlomky (vysledna promenna frac_res = ...)
frac_res = (sym(12)/63+21/51)*(7/5)-22/7


% 2. Definujte funkci (vysledna promenna f = ..., nebo f(x) = ...)
syms x y;
f(x,y) = log(abs(cos(x)))+ y*x*exp(-x^2)


% 3. Vyjadrete substituci (vysledna promenna g = ..., nebo g(y) = ...)
g(y)=f(subs(x,1/y),y)


% 4. Spoctete g(3) s presnosti na 100 cifer (vysledna promenna g_3 = ...)
g_3=vpa(g(sym(3)),100)


% 5. Urcity integral s presnosti na 6 desetinnych mist (vysledna promenna int_g_1_2_sym = ...)
int_g_1_2_sym = vpa(int(g(y)*diff(y),1,2),6)


% 6.  Neurcity integral (vysledna promenna int_f_dx = ...)
int_f_dx = int(f(x,y)*diff(x))


% 7. Symbolicke a numericke reseni sumy (vysledne promenne sum_sym = ..., sum_num = ..., sum_sym_n40 = ...)
syms k n
sum_sym = symsum(sin((2*pi/3)*(k)),k,1,n)
sum_num = sum(sin((2*pi/3)*[1:40]))
sum_sym_n40 = vpa(subs(sum_sym,40),10)


% 8. Vypoctete limitu (vysledna promenna lim_f = ...) 
lim_f = limit(f, x, pi/2)


% 9. Spoctete urcity integral (vysledna promenna int_diff_f = ...) 
int_diff_f = int(diff(f,y),0, inf)


% 10.a - Vyreste soustavu lineárních rovnic (vysledna promenna lin_eqns_res = ...) 
syms a;
A = [1,-3,a; 2,-6,9; -a,3,0]
b = [1; 5; 0]
lin_eqns_res = A\b 


% 10.b - Pro ktere a nema soustava jednoznacne reseni? (vysledna promenna a_singular = ...) 
a_singular = solve(det(A))


% 10.c charakteristicky polynom (vysledna promenna ch_p = ...)
ch_p = det(A - x*eye(3))


% 10.d Vlastni cisla matice soustavy (vysledna promenna vl_cisl = ...)
vl_cisl = eig(subs(A,a,1))


% 11 Rozvinte vyraz (vysledna promenna expnd_expr = ...)
expnd_expr = expand(cos(3*x)-sin(3*x))


% 12 Vyreste rovnici (vysledne promenne eqn12_sym_res = ..., eqn12_num_res = ...)

eqn12_sym_res = solve(exp(-x^2+4*x-9)==1)

eqn12_num_res = roots([-1 4 -9])



