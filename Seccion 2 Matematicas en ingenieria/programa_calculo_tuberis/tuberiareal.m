% Vamos a dibujar en plano un tubo horizontal

function tuberiareal(pos_ini, s,d,h)
    x0=pos_ini(1);
    y0=pos_ini(2);
    if (s<d)
      disp('Estos datos no son reales. Comienza de nuevo');
      return;
    endif
    b=sqrt(s^2-d^2);
    hold on;
    plot([x0 x0+b],[y0 y0],'--r','Linewidth',3);
    plot([x0+b x0+b],[y0 y0+d],'--r','Linewidth',3);
    plot([x0 x0+b],[y0 y0+d],'--r','Linewidth',3);
    circle(x0,y0,h);
    circle(x0+b,y0+d,h);
    th=asin(d/s);
    fi1=pi/2+th;
    fi2=th-pi/2;
    plot([x0+h*cos(fi1) x0+b+h*cos(fi1)],[y0+h*sin(fi1) y0+d+h*sin(fi1)],'Linewidth',3);
    plot([x0+h*cos(fi2) x0+b+h*cos(fi2)],[y0+h*sin(fi2) y0+d+h*sin(fi2)],'Linewidth',3);
 endfunction
  




