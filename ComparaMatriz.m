function porcentagem_acertos = ComparaMatriz (matriz1, matriz2,rotulos)
  acertos=0;
  [linhas]=size(rotulos)(1);
  for i=1:linhas
    if matriz1(i,rotulos(i)) == matriz2(i,rotulos(i));
      acertos+=1;
    endif
  endfor
  porcentagem_acertos = acertos/linhas;
endfunction
