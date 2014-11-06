 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vamos a resolver la ecuacion diferencial que define la caida libre:
% x'(t)=V(t)
% V'(t)=F(t)/m=(Ke*q/me)*(q1(x(t)-A)/(norm(x(t)-A))
% (x(t)-A)+q2(x(t)-B)/(norm(x(t)-B)) (x(t)-B))                 con V_0 velocidad inicial conocida y posicion X_0 conocida
%
% Sabemos que esta ecuacion no se puede resolver expolicitamente
%
% Vamosa a resolver esta ecuación con el Método de Euler, compararemos la solución
% con la exacta y sacaremos conclusiones de este método. Luego lo mejoraremos
% con el de Euler modificado.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



function [x,v]=eulerParticulas(x0,V0,h,n,q1,q2,q,m,A,B)
  % x0 es la posición inicial de la particula, vertor fila
  % V0 es la velocidad inicial, vector fila
  % h es el paso de la discretización que se hará del tiempo
	 
  x=zeros(n,2);
  v=zeros(n,2);

  v(1,:)=V0;
  x(1,:)=x0;

  for i=2:n
    x(i,:)=x(i-1,:)+h*v(i-1,:);
    v(i,:)=v(i-1,:)+h*aceleration(x(i-1,:),A,B,q,q1,q2,m);
  endfor


  %Dibujemos las cargas A y B


hold on
plot(A(1),A(2),'ro','LineWidth',2);
plot(B(1),B(2),'ro','LineWidth',2);
plot(x0(1),x0(2),'bo','LineWidth',4);
title('Trayectoria de la particula')
  %Dibujemos la trayectoria resultante
plot(x(:,1),x(:,2),'b');
hold off
endfunction

