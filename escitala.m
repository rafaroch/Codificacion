clear
cadena='voy a leer el blog de nosolomates';
pos=1;
i=0;
temp=1;
tam=length(cadena)

col=input('inserte las columnas : ');

while temp < (tam-1)
    i=i+1;
    for j=1:col
        pos
        x(i,j)=cadena(pos);
       pos=pos+1; 
       pos
       temp=temp+1
    end

end

x