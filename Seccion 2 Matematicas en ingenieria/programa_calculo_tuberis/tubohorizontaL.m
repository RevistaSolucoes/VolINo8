% Vamos a dibujar en plano un tubo horizontal

function tubohorizontaL(pos_ini, d)
  h=0.3;
  hold on;
  circle(pos_ini(1),pos_ini(2),h);
  circle(pos_ini(1)+d,pos_ini(2),h);
plot([pos_ini(1) pos_ini(1)+d],[pos_ini(2)-h  pos_ini(2)-h],'Linewidth',3);
plot([pos_ini(1) pos_ini(1)+d],[pos_ini(2)+h  pos_ini(2)+h],'Linewidth',3);
endfunction
  




