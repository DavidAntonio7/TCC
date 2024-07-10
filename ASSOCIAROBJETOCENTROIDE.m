function[cluster,agrupamento]=ASSOCIAROBJETOCENTROIDE(matriz_pertinencia,nro_classes,nro_objetos,rotulos)
%para cada objeto associado a matriz de coefientes, associa-lo ao centroide
%e rótulo
[lin, col]=size(matriz_pertinencia);
cluster=zeros(col, nro_classes);
agrupamento=zeros(col,nro_objetos);
%cluster = zeros(nro_classes);
for i=1:nro_objetos
    [l,centr]=max(matriz_pertinencia(i,:));%obtem o centroide q representa o objeto i 
     cluster(centr,rotulos(i))=(cluster(centr, rotulos(i)))+1;%a posicao dos rotulos é a mesma q dos objetos
    agrupamento(centr,i)=1;
end
     
cluster;
%pode ocorrer de uma linha do cluster estar zerada. Acontece qdo a
%pertinencia dos obj para esta partícula é sempre inferior às demais
%partículas