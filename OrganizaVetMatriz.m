##fun��o para ordenar as matrizes de pertinencia de forma uniforme 


function [inicioClasse,posClasses,matrizOrdenada] = OrganizaVetMatriz(vetMatrizPert, classeCorreta,totClasses) 
#ordenando a partir da classe correta
  
  
#descobrindo as colunas em que as classes est�o

  
  [dim, lin, col] = size(vetMatrizPert);
  
  
  ## descobrir a posi��o onde se inicia cada classe
  for i=1:totClasses
    if i == 1
      inicioClasse(i) = 1;
      fimClasse(i) = classeCorreta(i);
    else
      inicioClasse(i) = inicioClasse(i-1)+classeCorreta(i-1)
      fimClasse(i) = fimClasse(i-1)+classeCorreta(i)
    endif
  endfor
  
  
  
  
  
  #descobrir a posi��o de cada classe em cada matriz de pertinencia 
  for d=1:dim ############## dimes�es
    x = zeros(1,totClasses) ##ser� iniciada com zeros, quando uma classe for atribuida sera somado 1 a posi��o
    indice = 0; ##usado para guardar o indice de uma coluna que n�o tenha sido atribuida
    
    for i = 1:totClasses
      
      for j=1:col
        if vetMatrizPert(d,inicioClasse(i),j) == 0
          continue;
          
        elseif  vetMatrizPert(d,inicioClasse(i),j) != 0 && x(j) == 0 #verifica se nenhuma coluna pegou a posi��o
          
          posClasses(d,i) = j;
          x(j)++;
          break;
    
        elseif vetMatrizPert(d,fimClasse(i),j) != 0 && x(j) == 0
        
          posClasses(d,i) = j;
          x(j)++;
          break;   
          
        else
          
          posClasses(d,i) = 0;
          indice = i;
          break
    
        endif
      endfor
      
    endfor
    
    
    
    #atribui a coluna que n�o pegou classe � classe que n�o pegou coluna 
    if indice != 0
      for i=1:totClasses
        if x(i) == 0
          posClasses(d,indice) = i;
        endif
      endfor
    endif
    
    #w(d) = indice;
    
    
  endfor
  
  
  


  
  
  #fazer uma nova matriz ordenada a partir das posi��es encontradas
  for d=1:dim
    for j=1:col
      matrizOrdenada(d,:,j) = vetMatrizPert(d,:,(posClasses(d,j))) 
    endfor
  endfor
  
  
  
  endfunction
