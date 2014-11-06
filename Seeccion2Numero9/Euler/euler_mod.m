%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vamos a resolver la ecuacion diferencial que define la caida libre:
% x'(t)=V(t)=-gt
% V'(t)=g                 con X_0 altura inicial
%
% Sabemos que esta ecuacion se puede resolver expolicitamente y la solucion es: x(t)=X_0-gt^2/2
%
% Vamosa a resolver esta ecuación con el Método de Euler, compararemos la solución
% con la exacta y sacaremos conclusiones de este método. Luego lo mejoraremos
% con el de Euler modificado.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [yaprox,e]=euler(x0,h)
  % x0 es la altura inicial
  % h es el paso de la discretización que se hará del tiempo
	 
  g=9.81;
  yaprox=[x0];
  %yaprox(1)=x0;
  x=[0];
  %x=0:h:(n-1)*h;
  i=1;
  while yaprox(i)>=0
    i=i+1;
    yaprox(i)=yaprox(i-1)-g*h*x(i-1);
    x(i)=h*(i-1);
  endwhile
  plot(x(1:i-1),yaprox(1:i-1),'r');
  hold on
  ex=x0-g*x(1:i-1).^2/2;
  plot(x(1:i-1),ex)
  hold off
  e=norm(yaprox(1:i-1)-ex)/norm(ex);
endfunction







