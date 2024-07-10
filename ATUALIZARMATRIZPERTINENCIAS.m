function [matriz_pertinencias] = ATUALIZARMATRIZPERTINENCIAS(x,Objetos)
%x= prototipos
%Objetos

[lx,cx]=size(x);
[lo,co]=size(Objetos);
matriz_pertinencias=zeros(lo,lx);

for i=1:lo%para cada objeto
    for j=1:lx%para cada prototipo
        tot_dist(j)=DISTEUCLIDIANA(Objetos(i,:),x(j,:));%prototipo mais proximo do objeto de entrada
    end
    [val,indice]=min(tot_dist);
    matriz_pertinencias(i,indice)=1;    
end
matriz_pertinencias;

