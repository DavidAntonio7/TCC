function [x,matriz_pertinencia]= KMEANS(Objetos,x)

%algoritmo de agrupamento de dados k-Means
% PASSO 1. Select m (m > 1); initialize the membership function values (matriz_pertinencia),
%     i = 1, 2, ... , n; j = 1, 2, . . . , c.
% PASSO 2. Compute the cluster centers zj, j = 1, 2, ... , c.
% PASSO 3. Compute Euclidian distance dij, i = 1, 2, ... , n; j = 1, 2, ... , c.
% PASSO 4. Update the membership function (matriz_pertinencia), i = 1, 2, ... , n; j = 1, 2, ... , c

m=1;
[N,dim_objeto]= size(Objetos);
[totPrototipos,~] = size(x);
matriz_pertinencia= ATUALIZARMATRIZPERTINENCIAS(x,Objetos);%PASSOS 3 E 4

for iter=1:10
    x= ATUALIZARCENTROIDES(matriz_pertinencia,Objetos,N,totPrototipos,m,dim_objeto);%PASSO 2: COMPUTAR CENTROIDES
    matriz_pertinencia= ATUALIZARMATRIZPERTINENCIAS(x,Objetos);%PASSOS 3 E 4
endfor

%figure(2); plot(x(:,1),x(:,2),'ro'); drawnow; hold on; plot(Objetos(:,1),Objetos(:,2), 'b*');drawnow; hold off;title('Posições da partícula 1 no espaço de busca'); hold off;
%x;