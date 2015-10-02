function cesar

opc=input('\n de cesar a alfabeto (1)\n de alfabeto a cesar (2) \nIngrese la opcion que desee : ');

if opc==2
var=input('Ingrese el valor de la variable: ');
flag=0;
abecedario = 'abcdefghijklmnñopqrstuvwxyz';
abecedario2 = strcat(abecedario(var:27),abecedario(1:(var-1)))
cadena = 'hola';
cadenanueva='';
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
end %fin dle primer for 
cadenanueva

end 

if opc==1
    
    var=input('Ingrese el valor de la variable: ');
flag=0;
abecedario = 'abcdefghijklmnñopqrstuvwxyz';
abecedario2 = strcat(abecedario(var:27),abecedario(1:(var-1)))
cadena = 'ipmb';
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
end %fin dle primer for 
cadenanueva
   
end 
end




