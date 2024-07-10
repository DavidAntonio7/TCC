function [novoCalculado] = alinhamento_centroides(calculado, real)

%Função de alinhamento ideal porque não privilegia a ordem do centroide selecionado

%elimina grupos vazios
[novoCalculado,lcalc] = eliminar_centroides_origem(calculado);
[novoReal,lreal] = eliminar_centroides_origem(real);

if(lcalc < lreal)
  aux = lcalc;
  lcalc = lreal;
  lreal = aux;
  
  aux = novoCalculado;
  novoCalculado = novoReal;
  novoReal = aux;  
end

[lcalc,ccalc]=size(calculado);
novoCalculado=zeros(lcalc,ccalc);

% o segundo centroide pode estar mais próx daquele q se correspondeu ao primeiro, então associar por meio de uma matriz de distâncias de todos para todos
M = inf(lreal, lcalc);

  for i=1:lreal
    for j=1:lcalc        
        M(i,j) = DISTEUCLIDIANA(real(i,:),calculado(j,:));        
    end           
  end
    
for k=1:lreal    
    [val,ids] = min(M');%id do calculado mais próximo do respectivo real
    [nval, nids]=sort(val);
    novoCalculado(nids(1),:) = calculado(ids(nids(1)),:);
    val(nids(1))=inf;
    M(nids(1),:)=inf;
    M(:, ids(nids(1)),:)=inf;
end



%calculado(ids) = inf;
%totAlinhasdos = sum(ids>0);
%for i=1:lcalc%adicionar os demais prototipos na nova matriz
%  if(calculado(i)~=inf)
%    totAlinhasdos++;  
%    novoCalculado(totAlinhasdos,:)=calculado(i,:);
%  end
%end  
   
i;



% for i=1:lreal
%     for j=1:lcalc%calculado; pode ter diferente qtde centroides em relação ao real
%         
%         val_dist(1,j) = dist(real(i,:),calculado(j,:)');
%         
%     end
%     
%     [val,index]=min(val_dist);
%     aux_centroides(i,:) = calculado(index,:);
%     calculado(index,:)=inf;
% end

