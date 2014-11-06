function mascara

%Autor: Diego Barragán Guerrero %Estudiante de Electrónica y Telecomunicaciones 
%*************************************************************** 
% presentación: función que presenta la pantalla de presentación
 %*************************************************************** 

clear,clc,cla,close all 
 
%Creamos figura 
figdiag=figure('Units','Pixels',...
'Position',[0.0725 0.0725 0.57 0.57],...
 'Number','off',... 
 'Name','Electrónica y Telecomunicaciones', ... 
 'Menubar','none', ... 'color',[0 0 0]); 
 
%Ubicamos ejes en figura 
%axes('Units','Normalized',... 'Position',[0 0 1 1]); 
%scrsz = get(0, "ScreenSize") 
%pos_act=get(gcf,"Position")
%xr=scrsz(3) - pos_act(3); 
%xp=round(xr/2); 
%yr=scrsz(4) - pos_act(4); 
%yp=round(yr/2); 
%set(gcf,'Position',[xp yp pos_act(3) pos_act(4)]); 
%--------------------------------------- 
 %Incluir imagen %Importamos imagen *.jpg,junto con su mapa de colores 

x=imread("imagen1.jpg"); 

%Representamos imagen en figura, con su mapa de colores 

image(x),%colormap(map),axis off,hold on 
 
%Títulos sobre imagen 
%Título 

text(50,50,'Presentación del 
Programa','Fontname','Arial','Fontsize',25,'Fontangle','Italic', ... 
'Fontweight','Bold','color',[1 1 0]); 
 
%Nombre del programador text(50,130,'Por: Diego Barragán Guerrero','Fontname', ... 
'Comic Sans MS','Fontangle','Italic','Fontweight','Bold', ... 
'Fontsize',14,'color',[1 1 1]); 
 
%Botón Continuar

%botok=uicontrol('Style','pushbutton', ... 'Units','normalized', ... 
%'Position',[.84 .03 .12 .05], ... 'String','CONTINUAR',... 
%'Callback','clear all; close all;clc; GUI;'); 

