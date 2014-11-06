% Vamos a realizar un programa sencillito del cálculo de una línea de conduccion por bombeo

% Vamos a construir una funcion que pide los datos

% Vamos a pedir al usuariop las longitudes de cada tramo y los desniveles de cada linea e intentaremos dibujar el perfil correspondiente en abstracto 

function perfil=pedidadatos()
  n= input("Cuantos tramos va a poseer la linea de conduccion \n");
  longitudes=[];
  for i=1:n
	  printf("Cual es la longitud del tramo %i -esimo? \n",i)
          l=input(" ");
	  longitudes=[longitudes l];
  end
  
  desnivel=[];
  for i=1:n
	  printf("Cual es el desnivel %i -esimo (+/-)?\n",i)
          d=input(" ");
	  desnivel=[desnivel d];
  end
  
% Comenzamos a dibujar un perfil de la tuberia ponemos por el momento posicion inicial el origen de coordenadas
hold on

x0=0;
y0=0;
p1=max(longitudes);
p2=max(desnivel);
h=0.4*p1/p2;
for i=1:n
	tuberiareal([x0 y0],longitudes(i),desnivel(i),h);
        x0=x0+sqrt(longitudes(i)^2-desnivel(i)^2);
        y0=y0+desnivel(i);
endfor
title("Perfil de linea de conduccion")
hold off

% Ahora vamos a programar todos los calculos que queremos hacer

  disp("Hagamos algunos calculos");
pause;
clc;
 disp('1. domestico   2. domestico admin   3. oficina    4. comercio peque')
 p= input("Cuantas viviendas va a autobastecer esta linea de conduccion?\n");pause;
 P=5*p;
 dotaciones=[200; 150;6; 6];
j=input("que tipo de vivienda va a autobastecer \n");pause;
 gasto_medio=P*dotaciones(j)/86400;%Qmed
 
 gasto_max=gasto_medio*1.2;%Qmd

 gasto_max_h=gasto_max*1.5;%Qmh

 %Gasto maximo diario
 Qd=gasto_max*24;

 % Gasto de entrada
 horas=4; %horas de bombeo diarias
 Qe=Qd/horas;

 % Vamos a calcular el diametro de la tuberia de conduccion

% Usando la fórmula de Manning
% ncoeficiente de fricción
%
disp('1. PVC   2. Asbesto cemento   3. Hierro fundido nuevo    4. Concreto liso')
   p= input("De que material sera la tuberia??\n");pause;
ni=[0.009 0.010 0.013 0.012];
n=ni(p);

% S es la pérdida de carga unitaria
S=1;

 Dm=(691000*Qe*n/sqrt(S))^(3/8);
% Usando la fórmula Bresse
 
 Db=1.2*sqrt(Qe);

% Velocidad de la tubería

V=0.397*max([Db Dm])^(2/3)*sqrt(S)/n;


% Ahora calculamos las pérdidas de energía
f=0.015;
hf=f*sum(longitudes)*V^2/(max([Db Dm])*2*9.81);

hf2=10.3*n^2*sum(longitudes)*Qe^2/(max([Db Dm])^(16/3));

%hs=V^2/(2*9.81) %se hace trozo a trozo?






endfunction
  




