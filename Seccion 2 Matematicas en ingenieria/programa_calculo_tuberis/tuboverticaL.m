% Vamos a dibujar en plano un tubo horizontal

function tuboverticaL(pos_ini, d)
  %d=abs(d);
  h=0.3;
  hold on;
circle(pos_ini(1),pos_ini(2),h);hold on;
circle(pos_ini(1),pos_ini(2)+d,h);
plot([pos_ini(1)-h pos_ini(1)-h],[pos_ini(2)  pos_ini(2)+d],'Linewidth',3)
plot([pos_ini(1)+h pos_ini(1)+h],[pos_ini(2)  pos_ini(2)+d],'Linewidth',3)
endfunction
  




