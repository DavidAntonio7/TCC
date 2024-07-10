function [eq_mc_kmeans,pcc_mc_kmeans] = Ensemble_Kmeans(centroidesAlinhados,totClasses,melhorCentroide,base,rotulosPcc,dimObjeto)


[n_linhas,n_colunas] = size(rotulosPcc);
rotulosPcc = reshape(rotulosPcc,n_colunas,n_linhas);

## Calculando os centroides ensemble 

[k,i,j] = size(centroidesAlinhados);
centroidesAlinhados_reshape = reshape(centroidesAlinhados, k*i, j);
[centroides,matriz_pertinencia]= KMEANS(centroidesAlinhados_reshape,rand(totClasses, j));

centroides = alinhamento_centroides(centroides,melhorCentroide); #alinha o centroide de acordo com o centroide que teve o menor EQ

matriz_resultante = ATUALIZARMATRIZPERTINENCIAS(centroides,base);

#calcular erros 
[eq_mc_kmeans, erroparcMc_kmeans] = ERROQUADRATICO(matriz_resultante, 1, base, centroides);
matriz_rotulos = Rotulos_para_matriz (rotulosPcc);
pcc_mc_kmeans = ComparaMatriz (matriz_resultante, matriz_rotulos,rotulosPcc)

#Grafico(centroidesAlinhados_reshape,centroides);



##calculando os erros 

#############FUNCAO ENSEMBLE - A PARTIR DO VOTO MAJORITARIO

endfunction
