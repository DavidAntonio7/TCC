function exibicao(melhorEQ,melhorPCC,vetMelhorCentroide,eq_mc,pcc_mc,VetCentroideMc,mediaPcc,desvio_padrao_PCC)

clc;
for i =1:10
  melhorCentroide(:,:) = vetMelhorCentroide(i,:,:);
  centroideMc(:,:) = VetCentroideMc(i,:,:);
  printf("\n execucao %d \n\n  Particoes: \n   Melhor EQ: %d \n   Melhor PCC: %d \n   Media Pcc: %d\n   Desvio Padrao: %d\n",i,melhorEQ(i),melhorPCC(i),mediaPcc(i),desvio_padrao_PCC(i))
  #disp(melhorCentroide)
  printf("\n Matriz consenso: \n   EQ: %d \n   PCC: %d \n",eq_mc(i),pcc_mc(i));
  #disp(centroideMc)
endfor
  #subplot(2,1,1)
  #plot(1:10,melhorPCC,'r-','LineWidth',2);
  #hold on;
  #plot(1:10,pcc_mc,'b--','LineWidth',2);
  #plot(1:10,mediaPcc,'g-.','LineWidth',2);
  #title('Grafico PCC')
  #xlabel('execuçao')
  #ylabel('PCC')
  #legend('Melhor Partição','Matriz Consenso','Media Pcc')
  
  
  #subplot(2,1,2)
  #plot(1:10,melhorEQ,'r-','LineWidth',2);
  #hold on;
  #plot(1:10,eq_mc,'b--','LineWidth',2);
  #title('Grafico EQ')
  #xlabel('execuçao')
  #ylabel('EQ')
  #legend('Melhor Partição','Matriz Consenso')
  


endfunction
