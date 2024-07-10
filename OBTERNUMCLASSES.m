function [totClasses] = OBTERNUMCLASSES(vclasse)%vetor linha

%é o nro de posicoes do vetor

totClasses=0;
[lin, col] = size(vclasse);

if(lin==1)%vetor linha
    totClasses = col;
else%vetor coluna
    totClasses = lin;
end

% for i=1:col
%     for j=1:vclasse(i)
%         totClasses = totClasses+1;
%     end
% end