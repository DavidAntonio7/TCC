function [centroideMc,eq_mc, pcc_mc,desvio_padrao_EQ,melhorCentroide,melhorPcc,melhorEQ,mediaPcc,desvio_padrao_PCC,eq_mc_kmeans,pcc_mc_kmeans,centroidesAlinhados,rotulosPcc] = ensemble(rotulos, totClasses, base, totObjetos, dimObjeto,nomeBase,classeCorreta)
  
  
  #classe dos respectibos objetos, numero de classes, base dos objetos normalizadas, numero de obj, dimensao obj, nome da base (Carregarbase2_0)
  #[rotulos, totClasses, base, totObjetos, dimObjeto,nomeBase] = PREPROCESSAMENTO();
  
  #cada posicao representa uma classe e seu valor é a qtd de objetos na respectiva classe
  #classeCorreta = OBTERCLASSECORRETA(nomeBase); 
  
  #centroides iniciados aleatoriamente, de acordo com o numero de classes e dimensoes  
  #prototiposIniciais = rand(totClasses,dimObjeto);
  
  %execução do KMEANS e avaliação das partições global e individuais
  
  ##cria o ensemble e armazena os votos em um vetor de matriz
  ##a posição da matriz com o melhor erro fica armazenado em indice
  [vetCentroides,vetMatrizPert,melhorEQ, vetEQ,indice]= Cria_ensemble(base,rotulos,totClasses);
  desvio_padrao_EQ = std(vetEQ);
  
  melhorCentroide(:,:) = vetCentroides(indice,:,:)
  
  ##organiza o vetor de matrizes criado no ensemble
  #[inicioClasse,posClasses,matrizOrdenada] = OrganizaVetMatriz(vetMatrizPert, classeCorreta,totClasses);
  [centroidesAlinhados,matrizAlinhada] = alinhaMatriz(vetMatrizPert, vetCentroides,indice)
  
  ##avaliar a partir de medida externa
  #[percClassifCorretaGlobal] = Classificacao_correta(matrizAlinhada, rotulos, 2);
  
  
  
  mp(:,:) = matrizAlinhada(indice,:,:);
  c(:,:) = vetCentroides(indice,:,:);
  [rotulosPcc] = rotulos_pcc(mp, c,rotulos,totClasses,dimObjeto,base)
  vetPcc = Classificacao_correta(matrizAlinhada, vetCentroides,rotulosPcc,totClasses,dimObjeto,base,2,indice)
  
  
  
  
  mediaPcc = mean(vetPcc)
  desvio_padrao_PCC = std(vetPcc)
  
  [melhorPcc,pos] = MelhorPcc(vetPcc, indice)
  
  
  #aplicando a funçao consenso 
  [matrizConsenso,centroideMc] = votoMajoritario(matrizAlinhada, rotulos,totClasses,dimObjeto,base)
  
  
  ##calcula os erros da matriz consenso
  [eq_mc, eq_parc_Mc,pcc_mc] = ErrosMatrizCons(matrizConsenso, totClasses,dimObjeto,base,rotulos)
  
  
  #################################### ENSEMBLE KMEANS
  [eq_mc_kmeans,pcc_mc_kmeans] = Ensemble_Kmeans(centroidesAlinhados,totClasses,melhorCentroide,base,rotulosPcc,dimObjeto)
  
  
  #if dimObjeto ==2
  
   # plot(baseNormalizada(:,1), baseNormalizada(:,2), 'b*',...
         #prototiposIniciais(:,1), prototiposIniciais(:,2), 'ko', 
    #     prototipos(:,1), prototipos(:,2), 'ro')
  #endif
    
endfunction
