% Vamos a realizar un programa sencillito del calculo de una linea de conduccion por bombeo

% Vamos a construir una funcion que pide los datos

% Vamos a pedir al usuariop las longitudes de cada tramo y los desniveles de cada linea e intentaremos dibujar el perfirl correspondiente en abstracto 

function perfil=pedidadatos()
  n= input("��Cu��ntos tramos va a poseer la l��nea de conducci��n \n")
  longitudes=[];
  for i=1:n
	  fprint("��El desnivel %i -esimo es?\n",i)
          l=input()
	  longitudes=[longitudes l];
  end
  
  for i=1:n-1
	  fprint("��El desnivel %i -esimo es?\n",i)
          d=input()
	  desnivel=[desnivel d];
  end

  perfil=figure;
  title="Perfil de la l��nea de conducci��n"
  




