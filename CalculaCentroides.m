#função para calcular os centroides da matriz de coassociação
function [centroides] = CalculaCentroides(matrizConsenso, totClasses,dimObjeto,base)
  
  [lin, col] = size(matrizConsenso);
  numObjetos = zeros(totClasses,1); #guardar o numero de objetos de cada classe
  
  
  centroides = zeros(totClasses,dimObjeto);
  
  
  for i=1:lin 
    for j=1:col
      if(matrizConsenso(i,j) > 0) ## sera o grupo que o objeto foi designado
        centroides(j,:) += base(i,:);
        numObjetos(j) ++;
      endif
    endfor
  endfor
  
  for i=1:totClasses
    centroides(i,:) /= numObjetos(i);
  endfor
  
  
  
endfunction
