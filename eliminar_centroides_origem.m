function [prototipos,cont] = eliminar_centroides_origem(x)

[l,dim_obj]=size(x);
prototipos=zeros(1,dim_obj);
cont=0;%nro de centroides após a correção

for i=1:l
    if find(x(i,:))>0
        cont=cont+1;
        prototipos(cont,:)=x(i,:);
    end
end
prototipos;


