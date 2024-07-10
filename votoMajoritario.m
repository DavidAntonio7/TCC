#funçao que aplica trata da votação (junção dos votos)
function [matrizConsenso,centroideMc] = votoMajoritario(matrizOrdenada, rotulos,totClasses,dimObjeto,base)
  matrizConsenso = Normaliza_matriz(somarVotos(matrizOrdenada));
  centroideMc = CalculaCentroides(matrizConsenso, totClasses,dimObjeto,base);
  
  
  

endfunction
