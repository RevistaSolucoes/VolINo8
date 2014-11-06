
% Aqui ponemos una entrada de programa visual
%p=get(0,'ScreenSize'); 
%set(gcf,'Position',p) ;
A=imread("11_AnagramaFuego_Saema.png"); 
B=imread("tuberiah.jpg");

scrsz = get(0, 'ScreenSize');
% Redimensiona un marco grafico al tamaño de la pantalla del monitos
figure('Position', [1 scrsz(4) scrsz(3) scrsz(4)])
  subplot(1,2,1)
  image(A),%colormap(map),
  axis off;
   hold on 
  text(50,50,"PROGRAMA DE CALCULO \n DE TUBERIAS",'Fontname','Arial','Fontsize',20,'Fontangle','Italic', ... 
'Fontweight','Bold','color',[0.8 0.7 0]);
  subplot(1,2,2)
  image(B);axis off;
  hold off;
pause(3);
close;
clc;

% Vamos a pedir los datos

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

juntas=[];
for i=1:n-1
     printf("Tipo de junta que va en %i -esimo acople?\n",i)
     ju=menu('Tipos','Codo 45º','Codo 90º','Tes','Valvula');
     juntas=[juntas ju];
end

kperd=[0.4 0.62 1.75 0.25];
j=menu('Tipo de rede','Rede Predial','Ligaçao quintal','Chafariz');

if (j==3)
  P=input("Cuantas  personas va a autobastecer esta linea de conduccion?\n");
num_chaf=P/300;
 else
     p=input("Cuantas  viviendas va a autobastecer esta linea de conduccion?\n");
     P=7*p  ;
endif

m=menu('Material de tuberia','PVC','Asbesto cemento','Hierro fundido nuevo','Concreto liso');
horas=8; % numero de horas de bombeo

% Ahora vamos a programar todos los calculos que queremos hacer

dotaciones=[90;50;30];
 gasto_medio=P*dotaciones(j)/1000;%Qmed en m3/dia
 gasto_max=gasto_medio*1.2;%Qmd tambien llamado caudal medio diario

 %gasto_max_h=gasto_max*1.5;%Qmh caudal de ponta diario
 %Gasto maximo diario
 

 Qd=gasto_max;%*24;
 % Gasto de entrada

 Qe=Qd/horas;

% Vamos a calcular las perdidas presuponiendo que la velocidad maxima permitida es 2m/s







 % Vamos a calcular el diametro de la tuberia de conduccion

% Usando la fórmula de Manning
% ncoeficiente de fricción
%
ni=[0.009 0.010 0.013 0.012];
nn=ni(pm);

% S es la pérdida de carga unitaria

Dm=(3208*Qe*nn/sqrt(S))^(3/8);

% Usando la fórmula Bresse
%Db=1.2*sqrt(Qe);

% Velocidad de la tubería
V=0.397*max([Db Dm])^(2/3)*sqrt(S)/nn;


% Ahora calculamos las pérdidas de energía
f=0.015;
hf=f*sum(longitudes)*V^2/(max([Db Dm])*2*9.81);
hf2=10.3*nn^2*sum(longitudes)*Qe^2/(max([Db Dm])^(16/3));
%hs=V^2/(2*9.81) %se hace trozo a trozo?

 hftotal=hf+hf2;

% Vamos a dar la salida del programa

A=imread("imagen3.jpg"); 
scrsz = get(0, 'ScreenSize');
% Redimensiona un marco grafico al tamaño de la pantalla del monitos
figure('Position', [1 scrsz(4) scrsz(3) scrsz(4)])

  subplot(1,2,1)
  x0=0;
  y0=0;
  
  p1=max(longitudes); 
  p2=max(desnivel);
  h=0.4*p1/p2;
  hold on;
  for i=1:n
	tuberiareal([x0 y0],longitudes(i),desnivel(i),h)
        x0=x0+sqrt(longitudes(i)^2-desnivel(i)^2);
        y0=y0+desnivel(i);
  endfor
  title("Perfil de linea de conduccion")
  hold off
  subplot(1,2,2)
  image(A),
  axis off;
  hold on 
  Qd=num2str(Qd);
Qe=num2str(Qe);
Dm=num2str(Dm);
Db=num2str(Db);
V=num2str(V);
hftotal=num2str(hftotal);

text(60,10,"RESULTADOS",'Fontname','Arial','Fontsize',35,'Fontangle','Italic', ... 
  'Fontweight','Bold','color',[0.2 0.2 0.2]);

text(10,70,"Gasto maximo diario(lts/seg): ",'Fontname','Arial','Fontsize',16,'Fontangle','Italic', ... 
  'Fontweight','Bold','color',[0.9 0.2 0.2]);
text(240,70,Qd,'Fontname','Arial','Fontsize',25,'Fontangle','Italic', ... 
  'Fontweight','Bold','color',[0.5 0.5 0.5]);


text(10,110,"Gasto de entrada(lts/seg): ",'Fontname','Arial','Fontsize',16,'Fontangle','Italic', ... 
  'Fontweight','Bold','color',[0.9 0.2 0.2]);
text(240,110,Qe,'Fontname','Arial','Fontsize',25,'Fontangle','Italic', ... 
  'Fontweight','Bold','color',[0.5 0.5 0.5]);


text(10,150,"Diametro tuberia (Manning) (m): ",'Fontname','Arial','Fontsize',16,'Fontangle','Italic', ... 
  'Fontweight','Bold','color',[0.9 0.2 0.2]);
text(240,150,Dm,'Fontname','Arial','Fontsize',25,'Fontangle','Italic', ... 
  'Fontweight','Bold','color',[0.5 0.5 0.5]);


text(10,190,"Diametro tuberia (Bresse) (m): ",'Fontname','Arial','Fontsize',16,'Fontangle','Italic', ... 
  'Fontweight','Bold','color',[0.9 0.2 0.2]);
text(240,190,Db,'Fontname','Arial','Fontsize',25,'Fontangle','Italic', ... 
  'Fontweight','Bold','color',[0.5 0.5 0.5]);


text(10,350,"Velocidad de la linea(m/seg): ",'Fontname','Arial','Fontsize',16,'Fontangle','Italic', ... 
  'Fontweight','Bold','color',[0.9 0.2 0.2]);
text(240,350,V,'Fontname','Arial','Fontsize',25,'Fontangle','Italic', ... 
  'Fontweight','Bold','color',[0.5 0.5 0.5]);


text(10,390,"Perdidas energia: ",'Fontname','Arial','Fontsize',16,'Fontangle','Italic', ... 
  'Fontweight','Bold','color',[0.9 0.2 0.2]);
text(240,390,hftotal,'Fontname','Arial','Fontsize',25,'Fontangle','Italic', ... 
  'Fontweight','Bold','color',[0.5 0.5 0.5]);
