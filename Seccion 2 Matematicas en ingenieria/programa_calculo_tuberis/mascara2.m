function mascara2

figure
subplot(1,2,1)
A=imread("imagen1.jpg"); 
%imshow(A)


%Representamos imagen en figura, con su mapa de colores 
%figure
image(A),%colormap(map),
axis off
%,hold on 
 
subplot(1,2,2)
image(A),axis off,hold on
%Títulos sobre imagen 
%Título 
  a=3;
text(10,30,"Programa de calculo de tuberias",'Fontname','Arial','Fontsize',25,'Fontangle','Italic', ... 
'Fontweight','Bold','color',[0.2 0.2 0.2]);
a=2.345;
a=num2str(a);
text(0,10,a,'Fontname','Arial','Fontsize',25,'Fontangle','Italic', ... 
'Fontweight','Bold','color',[1 0.2 0.2]);
%set(a)
set(handles,'String',aa);

hold off
