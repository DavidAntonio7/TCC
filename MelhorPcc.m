function [melhorPcc,indice] = MelhorPcc(vetPcc, indice)

melhorPcc = vetPcc(indice);
for i = 1:length(vetPcc)
  if(vetPcc(i)>melhorPcc)
    melhorPcc = vetPcc(i);
    indice = i;
  endif
endfor 

endfunction
