#retorna matriz ensemble
#recebe a base normalizada

function [vetCentroides,vetMatrizPert,melhorErro, vetErros,indice]= Cria_ensemble(base,rotulos,totClasses);

  [lin, col] = size(base);
  
  for i=1:10
    centroides = rand(totClasses, col); #incicializa os centroides

    m=1;
    [centroides,matriz_pertinencia]= KMEANS(base,centroides);
    [erroGlobal,erroParcial] = ERROQUADRATICO(matriz_pertinencia, m, base, centroides)
    
    
    ##Armazena o indice do menorErro
    if i == 1
      melhorErro = erroGlobal;
      indice = i;
    else
      if erroGlobal < melhorErro
        melhorErro = erroGlobal;
        indice = i;
      endif
    endif
    
    #armazena os valores dos centroides e das matrizes de pertinencias
    vetCentroides(i,:,:) = centroides;  
    vetMatrizPert(i,:,:) = matriz_pertinencia;
    vetErros(i) = erroGlobal;
    
    
  endfor
  
  
  
endfunction
