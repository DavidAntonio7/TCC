function [percClassifCorretaGlobal] = Classificacao_correta(matrizPert, centroides,rotulos,totClasses,dimObjeto,base,controle) 
  #controle = 1 -> matriz bidimensional || controle = 2 -> matriz tridimensional
  
  
  

  if controle == 1  
    
    [rotulos] = rotulos_pcc(matrizPert, centroides,rotulos,totClasses,dimObjeto,base)
    
    [lin, col] = size(matrizPert);
    percClassifCorretaGlobal=0;

    #tratando dos objetos corretos
    melhorPorcentagem = 0
    totObjCorretos = 0;
    for i = 1:lin
      pos = 0;
      for j = 1:col
        if matrizPert(i,j) != 0   ##posições sem voto (com o valor 0) não são tratadas
          pos = j;
        endif 
      endfor
      if pos == rotulos(i)  ## se a posição do objeto for igual o valor do rotulo, soma 1 aos obj corretos
          totObjCorretos++
        endif
    endfor

    clc;
    
    

    %for grupo=1:lin%para cada grupo
    %    if(find(cluster(grupo,:)) > 0)%não considera grupo vazio
    %        totObjCorretos(grupo) = TOTALOBJETOSCORRETOSGRUPO(cluster(grupo,:));%total de objetos corretos por grupo
    %    end
    %end

    percClassifCorretaGlobal = (totObjCorretos/lin)*100;
  
  
  elseif controle == 2  
    
    [dim, lin, col] = size(matrizPert);
    
      percClassifCorretaGlobal=zeros(1,dim);
      
      #dados da melhor matriz pelo EQ
      #mp(:,:) = matrizPert(indice,:,:)  
      #c(:,:) = centroides(indice,:,:)
      
      #alinha os rotulos de acordo com a melhor matriz
      #[rotulos] = rotulos_pcc(mp, c,rotulos,totClasses,dimObjeto,base)
      
    
    for d = 1:dim
      


      #tratando dos objetos corretos
      totObjCorretos = 0;
      for i = 1:lin
        pos = 0;
        for j = 1:col
          if matrizPert(d,i,j) != 0   ##posições sem voto (com o valor 0) não são tratadas
            pos = j;
          endif 
        endfor
        if pos == rotulos(i)  ## se a posição do objeto for igual o valor do rotulo, soma 1 aos obj corretos
            totObjCorretos++
          endif
      endfor

      clc;


      percClassifCorretaGlobal(d) = (totObjCorretos/lin)*100;
    endfor
    
    
    
  endif
  
  