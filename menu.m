%Funcion la cual nos permite elegir entre nuestros metodos de cifrado y
%decifrado y codificacion y decodificacion
function menu()
a=1;
%ciclo para poder acceder a la vista del menu
while (a==1)
opc=input('Practica 2 \n Que metodo desea ver?\n(1)cesar\n(2)ecitala\n(3)ascii\n(4)Morse\n ingrese su opcion: ')    
    if(opc==1)
        %si se elige la opcion 1 se ejecutara la funcion cesar
        cesar()
    end
     if(opc==2)
        %si se elige la opcion 1 se ejecutara la funcion escitala
        escitala()
     end
      if(opc==3)
          %si se elige la opcion 1 se ejecutara la funcion ascii
          ascii()
      end
     if(opc==4)
         %si se elige la opcion 1 se ejecutara la funcion morse
         Morse()
     end
    
  a=input('Desea salir del programa?\n(1) No \n(2)Si\nIngrese su opcion: ')   
    
end
end