function [matriz_pertinencia]=ATUALIZARMATRIZPERTINENCIASCMEANS(Objetos,centroides,nCentroides,totObjetos,m)
%Para cada posi�ao ij da matriz
%Numerador=1
%Denominador= soma da: divisao entre a dist�ncia do objeto i ao centr�ide j
%pela dist�ncia entre o objeto i e todos os centr�ides
matriz_pertinencia=rand(totObjetos,nCentroides);

for i=1:totObjetos
    for j=1:nCentroides
        Distij=DISTEUCLIDIANA(Objetos(i,:),centroides(j,:));
        
        if Distij==0
            Distij=0.0001;%nao pode haver pertinencia crisp
        end
        
        vDistObjTdsCentroides=DISTANCIAiCENTROIDES(Objetos(i,:),centroides,nCentroides);%dist�ncia do objeto i a todos os centr�ides
        
        id_z=find(vDistObjTdsCentroides==0);%nao pode haver pertinencia crisp
        if ~isempty(id_z)
            vDistObjTdsCentroides(id_z)=0.0001;
        end
        
        vDivisaoDistancias=DIVIDIRVETORES(Distij,vDistObjTdsCentroides,nCentroides);%divide a distancia entre o objeto i e o centr�ide j, pela dist�ncia entre o objeto i e todos os centr�ides
        vDivisaoDistancias=(vDivisaoDistancias).^(2/(m-1));%aplica o expoente � cada raz�o
        soma=sum(vDivisaoDistancias);
        matriz_pertinencia(i,j)=1/soma;%atualiza a posicao ik na matriz
    end
end