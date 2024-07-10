function [matriz_pertinencia]=ATUALIZARMATRIZPERTINENCIASCMEANS(Objetos,centroides,nCentroides,totObjetos,m)
%Para cada posiçao ij da matriz
%Numerador=1
%Denominador= soma da: divisao entre a distância do objeto i ao centróide j
%pela distância entre o objeto i e todos os centróides
matriz_pertinencia=rand(totObjetos,nCentroides);

for i=1:totObjetos
    for j=1:nCentroides
        Distij=DISTEUCLIDIANA(Objetos(i,:),centroides(j,:));
        
        if Distij==0
            Distij=0.0001;%nao pode haver pertinencia crisp
        end
        
        vDistObjTdsCentroides=DISTANCIAiCENTROIDES(Objetos(i,:),centroides,nCentroides);%distância do objeto i a todos os centróides
        
        id_z=find(vDistObjTdsCentroides==0);%nao pode haver pertinencia crisp
        if ~isempty(id_z)
            vDistObjTdsCentroides(id_z)=0.0001;
        end
        
        vDivisaoDistancias=DIVIDIRVETORES(Distij,vDistObjTdsCentroides,nCentroides);%divide a distancia entre o objeto i e o centróide j, pela distância entre o objeto i e todos os centróides
        vDivisaoDistancias=(vDivisaoDistancias).^(2/(m-1));%aplica o expoente à cada razão
        soma=sum(vDivisaoDistancias);
        matriz_pertinencia(i,j)=1/soma;%atualiza a posicao ik na matriz
    end
end