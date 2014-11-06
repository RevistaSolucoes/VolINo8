

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Aqui vamos a tener la funcion de la aceleracion
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [ac]=aceleration(x,pos_cargas,q,cargas,m)
  %x,A,B son puntos 
  Ke=8.9875517873681764*10^9;
  %Ke=1;
  [ms n]=size(pos_cargas);
  ac=[0 0];
  for i=1:ms
        ac=ac+cargas(i)*(x-pos_cargas(i,:))/(norm(x-pos_cargas(i,:)))^3;
  endfor
  ac=ac*Ke*q/m;
endfunction





