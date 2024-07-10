function matrizPert = Normaliza_matriz(matrizPert)
  #normaliza a matriz, deixando apenas a posição com a maior votação != 0
  
  [lin, col] = size(matrizPert);
  
  for i = 1:lin
    pos = 0;
    for j = 1:col
      if matrizPert(i,j) != 0
        if pos == 0
          pos = j;
        else
          if matrizPert(i,pos) >= matrizPert(i,j)
            matrizPert(i,j) = 0;
          else 
            matrizPert(i,pos) = 0;
            pos = j;
          endif
        endif
      endif
    endfor
    matrizPert(i,pos) = 1;
  endfor
  
  
  
  
endfunction
