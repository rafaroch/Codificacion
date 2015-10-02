function ascii
a= [97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122];
b= 'abcdefghijklmnopqrstuvwxyz';
opc=input('\n de ascii a alfabeto (1)\n de alfabeto a ascii (2) \nIngrese la opcion que desee : ');
if opc==1
cadenaA=[ 116 101  97 109 111];
cadenanueva='';

for i=1:length(cadenaA)
  for j=1:26
      if cadenaA(i)== a(j)
          cadenanueva=strcat(cadenanueva,b(j)); %si pongo b con esto lo hago al reves 
          
      end%fin de if 
      
      if(cadenaA(i)==255)
          cadenanueva=strcat(cadenanueva,{' '})
      end
  end %fin del segundo for 

end %fin dle primer for
cadenanueva
end %fin del if 

if opc==2
cadenan='a';
cadenanueva='';

for i=1:length(cadenan)
  for j=1:26
      if cadenan(i)== b(j)
          cadenanueva=strcat(cadenanueva,a(j)); %si pongo b con esto lo hago al reves 
          a(j)
      end%fin de if 
      
     
  end %fin del segundo for 

end %fin dle primer for
cadenanueva
end %fin del if 
end
