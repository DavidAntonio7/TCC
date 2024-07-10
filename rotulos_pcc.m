#ordena os rotulos de acordo com a matriz 
function [rotulosAlinhado] = rotulos_pcc (matrizConsenso, centroides,rotulos,totClasses,dimObjeto,base)
  
  #cria uma matriz de votos baseada nos rotulos
  [lin, col] = size(rotulos);
  matrizRotulo = zeros(lin,totClasses)
  
  for i = 1:lin
    matrizRotulo(i,rotulos(i)) = 1
  endfor
  
  
  
  [centroidesRotulos] = CalculaCentroides(matrizRotulo, totClasses,dimObjeto,base)
  
  matrizes(1,:,:) = matrizRotulo(:,:)
  matrizes(2,:,:) = matrizConsenso(:,:)
  
  vetCentroides(1,:,:) = centroidesRotulos(:,:)
  vetCentroides(2,:,:) = centroides(:,:)
  
  [centroidesAlinhados,matrizAlinhada] = alinhaMatriz(matrizes, vetCentroides,2) 
 
  matriz(:,:) = matrizAlinhada(1,:,:)  #matriz rotulo alinhada
 
  for i = 1:lin
    for j = 1:totClasses
      if(matriz(i,j) > 0)
        rotulosAlinhado(i) = j  
        break
      endif
    endfor
  endfor 
  
  
  
  
  
endfunction
