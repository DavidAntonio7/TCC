function escrever_arquivo(melhorEQ, melhorPCC, vetMelhorCentroide, eq_mc, pcc_mc, VetCentroideMc, mediaPcc, desvio_padrao_PCC, base,eq_mc_kmeans,pcc_mc_kmeans)
  
  
  nome_pasta = 'resultados';
  nome_arquivo = ["base",num2str(base),".csv"];
  caminho_completo = fullfile(nome_pasta, nome_arquivo);
  arquivo = fopen(caminho_completo, 'w');

  if arquivo == -1
    error('Não foi possível abrir o arquivo.');
  end
  
  fprintf(arquivo, "execucao,Melhor_EQ,Melhor_PCC,Media_Pcc,Desvio_Padrao,Matriz_consenso_EQ,Matriz_consenso_Pcc,EQ_Kmeans,PCC_Kmeans\n");

  for i = 1:10
    melhorCentroide(:,:) = vetMelhorCentroide(i,:,:);
    centroideMc(:,:) = VetCentroideMc(i,:,:);

    fprintf(arquivo, "%d,%d,%d,%d,%d,%d,%d,%d,%d\n", i, melhorEQ(i), melhorPCC(i), mediaPcc(i), desvio_padrao_PCC(i), eq_mc(i), pcc_mc(i),eq_mc_kmeans(i),pcc_mc_kmeans(i));

  end

  fclose(arquivo);
end
