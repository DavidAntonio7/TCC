function [Mcorresp] = Grupo_correspondente (prototipos,objeto,posicao)
  #função que seleciona qual grupo corresponde o objeto em questão, pode ser usada para selecionar o grupo mais proximo
  # conforme a posição passada, 1 grupo principal, 2 vizinho mais proximo, ... etc.
  [totprototipos, ~] = size(prototipos);
  Vproximidade = zeros(1,totprototipos);
  
  for i=1: totprototipos
    Vproximidade(i) = DISTEUCLIDIANA(objeto,prototipos(i,:));
  endfor
  Vproximidade = sort(Vproximidade);
  Mcorresp = Vproximidade(posicao);
  
endfunction
