%Funcion que codifica y decodifica en Cesar
function cesar()
clear all
clc

opc=input('\n de cesar a alfabeto (1)\n de alfabeto a cesar (2) \nIngrese la opcion que desee : ');
%cadena para guardar los  valores del texto codificado
cadenanueva='';
if opc==2
var=input('Ingrese el valor de la variable: ');
%nos permite usar esta bandera como un contador
flag=0;
%arreglo que contiene el abecedario
abecedario = 'abcdefghijklmnñopqrstuvwxyzABCDEFGHIJKLMNÑOPQESTUVWXYZ';
%arreglo que nos da el abecedario de forma ciclica
abecedario2 = strcat(abecedario(var:54),abecedario(1:(var-1)));
%variable en la que se guarda el contenido del archivo que contiene el
%texto
fid=fopen('texto.txt','r');
%en este array se almacena lo que la variable fid obtuvo
cadena=fgets(fid);
%se creaa la variable del archivo nuevo para almacenar la codificaicion
archivonuevo=fopen('texto_en_cesar.txt','w');

for i=1:length(cadena)
  for j=1:27
      if cadena(i)== abecedario(j)
          cadenanueva=strcat(cadenanueva,abecedario2(j));
          flag=1;
          
      end%fin de if 
  end %fin del segundo for 
  
  if flag==0
      
      cadenanueva=strcat(cadenanueva,{' '});
  end
  flag=0;
end 
%funcion que permite imprimir el contenido en un archivo apartir de la
%cadena nueva generada
fprintf(archivonuevo,'%s',cadenanueva);
%funcion que cierra el archivo que realiza la lectura
fclose(fid);
%funcion que cierra el archivo que realiza la escritura
fclose(archivonuevo);

end 

if opc==1
    
  var=input('Ingrese el valor de la variable: ');
flag=0;
abecedario = 'abcdefghijklmnñopqrstuvwxyzABCDEFGHIJKLMNÑOPQESTUVWXYZ';
abecedario2 = strcat(abecedario(var:54),abecedario(1:(var-1)));
%%%%% 
file=fopen('texto_en_cesar.txt','r');
cadena=fgets(file);
archivonuevo2=fopen('texto_normal.txt','w');
cadenanueva='';
for i=1:length(cadena)
  for j=1:27
      if cadena(i)== abecedario2(j)
          cadenanueva=strcat(cadenanueva,abecedario(j));
          flag=1;
      end%fin de if 
  end %fin del segundo for 
  if flag==0
      
      cadenanueva=strcat(cadenanueva,{' '});
  end
  flag=0;
end 
%funcion que permite imprimir el contenido en un archivo apartir de la
%cadena nueva generada
fprintf(archivonuevo2,'%s',cadenanueva);
%funcion que cierra el archivo que realiza la lectura
fclose(file);
%funcion que cierra el archivo que realiza la escritura
fclose(archivonuevo2);
   
end


end

