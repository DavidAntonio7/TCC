function [MP] = Organiza_Matriz(matrizPert, rotulos)
#função para organizar a matriz de forma que o grupo 1 corresponda a coluna 1

[lin, col] = size(matrizPert);

x = 1 ##guarda valor da posição do vetor rotulos que parou 

## acha a posição dos primeiros rotulos
for j=1:col
  for i=x:lin
    if(rotulos(i) == j)
      pos(j) = i;
      x = i;
      break;
    endif
  endfor
endfor

##confere em que coluna esta a respectiva classe e ordena de maneira correta em uma nova matriz

for i=1:col
  x = pos(i); ## x corresponde a posição do primeiro rotulo da classe 
  for j = 1:col
    if matrizPert(x,j) != 0
      if matrizPert(x,j) == matrizPert(x+1,j)
        printf("rotulos(x) = %d  ||  j = %d \n", rotulos(x),j )
        MP(:,rotulos(x)) = matrizPert(:,j);
      else
        if matrizPert(x,j) == matrizPert(x+1,j)
          MP(:,rotulos(x)) = matrizPert(:,j);
        elseif matrizPert(x+1,j) == matrizPert(x+2,j)
          MP(:,rotulos(x)) = matrizPert(:,j);
        endif
        
      endif
    endif
    
    
    
  endfor
endfor

