function matrizFinal = somarVotos (vetMatrizPert)

  [qtd,lin,col]=size(vetMatrizPert)
  
  matrizFinal = zeros(lin,col);
  
  for q=1:qtd
    for i = 1:lin   
      for j=1:col
        if vetMatrizPert(q,i,j) != 0
          matrizFinal(i,j)++;
          break;
        endif
      endfor
    endfor
  endfor
endfunction

