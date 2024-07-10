function [centroidesAlinhados,matrizAlinhada] = alinhaMatriz(vetMatrizPert, vetCentroides,indice) 

  [dim, lin, col] = size(vetCentroides);
  
  centroideBase(:,:) = vetCentroides(indice,:,:)
  
  #alinha os centroides
  for i = 1:dim
    aux(:,:) = vetCentroides(i,:,:)
    centroidesAlinhados(i,:,:) = alinhamento_centroides(aux,centroideBase)  
  endfor
  
  #verifica as mudancas de posicao do centroide
  for d = 1:dim
    for i = 1:lin
      for j = 1:lin 
        if centroidesAlinhados(d,i,1) == vetCentroides(d,j,1)
          dicionario(d,i) = j
          break
        endif
      endfor
    endfor
  endfor
  
  #Matriz de alinhada 
  [dim, lin, col] = size(vetMatrizPert)
  for d=1:dim
    for j=1:col
      matrizAlinhada(d,:,j) = vetMatrizPert(d,:,(dicionario(d,j))) 
    endfor
  endfor
  
  
  

endfunction
