function [wynik,blad]=Romberg(fun,a,b,e)
 h(1)=(b-a);
 R(1,1)=(b-a)/2*(feval(fun, a)+feval(fun,b));
 k=1;
do
  k=k+1;
  h(k)=(b-a)/(2^(k-1));
  suma=0;
for i=1:2^(k-2)
  suma=suma+feval(fun, a + (2 * i - 1)*h(k));
endfor
  R(k,1)=1/2*(R(k-1,1)+h(k-1)*suma);
for j=2:k
  R(k,j)=R(k,j-1)+(R(k,j-1)-R(k-1,j-1))/(4^(j-1)-1);
endfor
until(abs(R(k-1,k-1)-R(k,k))<e)
  wynik=R(k,k);
  k
  blad=abs(R(k-1,k-1)-R(k,k))
endfunction
