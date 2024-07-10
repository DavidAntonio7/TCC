function [centroides] = ATUALIZARCENTROIDES(matriz_pertinencia, Objetos, nro_objetos, nro_prototipos, expo_ponder, dim_objeto)

%Para cada centroide:
%Numerador: para a coluna da matriz matriz_pertinencia, q representa o
%centroide, somar a pertinencia de cada objeto elevada a 'm', ponderada pelo objeto
%Denominador: somar a pertinencia de cada objeto elevada a 'm'

%matriz_pertinencia: coluna=centroide; linha=objeto

centroides = zeros(nro_prototipos, dim_objeto);%nro_prototipos=nro_centroides

aux = zeros(nro_objetos, dim_objeto);%numerador da equação de atualização dos protótipos
for j=1:nro_prototipos%para cada centroide j
    coeficientes_coluna = (matriz_pertinencia(:,j).^expo_ponder);%cada coluna j (centroide j)
    denominador = sum(coeficientes_coluna);%já está com o expoente expo_ponder
    
    if (denominador)%o centroide foi vencedor para algum objeto
        for i=1:nro_objetos
            aux(i,:) = coeficientes_coluna(i,:).*Objetos(i,:);
        end
        numerador = sum(aux);        
        centroides(j,:) = numerador./denominador;%centroides
    end
    
end

centroides;
