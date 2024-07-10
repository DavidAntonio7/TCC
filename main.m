function main (input1, input2)

  #classe dos respectibos objetos, numero de classes, base dos objetos normalizadas, numero de obj, dimensao obj, nome da base (Carregarbase2_0)
  lista_bases = [1,2,3,4,10,11,13,27,28,29];
  for j = 1:length(lista_bases)
    lista_bases = [1,2,3,4,10,11,13,27,28,29];
    nomeBase = lista_bases(j)
    [rotulos, totClasses, base, totObjetos, dimObjeto,nomeBase] = PREPROCESSAMENTO(nomeBase);
    
    #cada posicao representa uma classe e seu valor é a qtd de objetos na respectiva classe
    classeCorreta = OBTERCLASSECORRETA(nomeBase); 
    
    for i = 1:10
      while true
        try
          [centroideMc(i,:,:), eq_mc(i,:), pcc_mc(i,:),desvio_padrao_EQ(i,:), melhorCentroide(i,:,:), melhorPcc(i,:), melhorEQ(i,:), mediaPcc(i,:), desvio_padrao_PCC(i,:),eq_mc_kmeans(i,:),pcc_mc_kmeans(i,:),centroidesAlinhados(i,:,:,:)] = ensemble(rotulos, totClasses, base, totObjetos, dimObjeto, nomeBase, classeCorreta);
          
          % Se a função não retornar um erro, saia do loop interno
          break;
        catch
          % Se ocorrer um erro, imprima uma mensagem e tente novamente
          fprintf('Erro ao executar a função ensemble. Tentando novamente...\n');
        end
      end
    end
    
    #para cada base faz um arquivo csv
    escrever_arquivo(melhorEQ,melhorPcc,melhorCentroide,eq_mc,pcc_mc,centroideMc,mediaPcc,desvio_padrao_PCC,nomeBase,eq_mc_kmeans,pcc_mc_kmeans);
    
    clear;
    clc;
  endfor
  
  

endfunction
