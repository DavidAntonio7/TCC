#calcula os erros da matriz consenso
#especificamente porque é feito o calculo dos centroides
function [erroMc, erroparcMc,perc_cc_mc] = ErrosMatrizCons (matrizConsenso, totClasses,dimObjeto,base,rotulos)
  
  ##calcula os centroides da matriz consenso para calcular o erro quadratico  
  [centroides] = CalculaCentroides(matrizConsenso, totClasses,dimObjeto,base);
  [erroMc, erroparcMc] = ERROQUADRATICO(matrizConsenso, 1, base, centroides);
  
  
  #percentual de classificação correta
  perc_cc_mc = Classificacao_correta(matrizConsenso, centroides,rotulos,totClasses,dimObjeto,base,1);

endfunction
