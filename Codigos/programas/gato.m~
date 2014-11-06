
%%% Reto del Numero 4 %%%%

%%% Aproximacion del lomo de un gato mediante splines

%%% Dibujamos un gato en coordenadas cartesianas

%contorno
x=[1 0 0 3 5 5 3 2 2 4 6 8 9 10 12 14 16 16 15 13 11 9 8 8 9 9 6 6 4 3 3 5 5 1];
y=[2 8 12 15 15 14 12 12 9 11 11 9 13 11 11.5  11 13 7 6 5 5 6 7 4 4 2 2 6 6 5 4 4 2 2];
figure
hold on
plot(x,y,'k')
plot(x,y,'*k','LineWidth',3);

%ojos
xyl=[9 9 11 11 9];
yyl=[8 10 10 8 8];

fill(xyl,yyl,'k')

xyr=[13 13 15 15 13];
yyr=[8 10 10 8 8];

fill(xyr,yyr,'k')

%boca

xb=[11 12 13 11];
yb=[7 8 7 7];

fill(xb,yb,'m')
xc=[2 4 6 8 9 10 12 14 16];
yc=[9 11 11 9 13 11 11.5 11 13];
plot(xc,yc,'r','LineWidth',3)
%% Lo que que queremos interpolar

grid
title('Gatito')
print('gatito.tex','-dtex');
%hold off;

%%%% Aproximamos mediante splines el retazo

%breaks = linspace (2, 16, 20); % 41 breaks, 40 pieces
%pp1 = splinefit (xc, yc, breaks);
## Breaks interpolated from data
%pp2 = splinefit (xc, yc, 10); % 11 breaks, 10 pieces
## Plot
%figure
%xx = linspace (2, 16, 100);
%y1 = ppval (pp1, xx);
%y2 = ppval (pp2, xx);
%plot (xx, [y1; y2])
%plot(xx,y2)
%axis tight
%ylim auto
%legend ({"aproximacion 40 splines", "aproximacion 10 splines"})
%grid

