function matriz = Rotulos_para_matriz (rotulos)

n_classes = max(rotulos);
quantidade_ojetos = size(rotulos)(1);

matriz = zeros(quantidade_ojetos,n_classes);

for i=1:quantidade_ojetos
  matriz(i,rotulos(i)) = 1;
endfor

endfunction
