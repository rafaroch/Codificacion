function Morse
opc=input('\n de Morse a alfabeto (1)\n de alfabeto a morse (2) \nIngrese la opcion que desee : ');

morsec=['.-   ';'-... ';'-.-. ';'-..  ';'.    ';'..-. ';'--.  ';'.... ';'..   ';'.--- ';'-.-  ';'.-.. ';'--   ';'-.   ';'---  ';'.--. ';'--.- ';'.-.  ';'...  ';'-    ';'..-  ';'...- ';'.--  ';'-..- ';'-.-- ';'--.. ';'.----';'..---';'...--';'....-';'.....';'-....';'--...';'---..';'----.';'-----'];
abc='abcdefghijklmnopqrstuvwxyz1234567890';

if opc==2
    
cadena='sos';
cadenanueva='';
for i=1:length(cadena)
  for j=1:36
      if cadena(i)== abc(j)
          cadenanueva=strcat(cadenanueva,morsec(j,:));
      end%fin de if 
  end %fin del segundo for 
cadenanueva=strcat(cadenanueva,{','});
end %fin dle primer for 

end %fin del if 

if opc==1
    
    cadenam=['.----';'.-   '];
    cadenanueva='';
    tam=size(cadenam);
    for i=1:tam
        for j=1:36
            if cadenam(i,:)== morsec(j,:)
                cadenanueva=strcat(cadenanueva,abc(j));
            end%fin de if 
        end %fin del segundo for 
    %cadenanueva=strcat(cadenanueva,{''});
    end %fin dle primer for 
    
end 

cadenanueva
end 