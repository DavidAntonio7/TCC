function [baseNormalizada] = NORMALIZACAO(baseDados)



%Analisando a amplitude dos dados para normalização linear dos dados
% vAmplitudeMaior = zeros(1,dim);
% vAmplitudeMenor = zeros(1,dim);
%
% for(i=1:size(baseDados,dim))
%     vAmplitudeMaior(i) = max(baseDados(:,i));
%     vAmplitudeMenor(i)= min(baseDados(:,i));
%     baseDados(:,i)= (baseDados(:,i)- vAmplitudeMenor(i))/(vAmplitudeMaior(i)- vAmplitudeMenor(i));
% end
%baseNormaliz = baseDados;
[l, col] = size(baseDados);

%normalizacao linear
for i=1:col
    maior = max(max(baseDados(:,i)));
    menor = min(min(baseDados(:,i)));
    denom = (maior-menor);
    if(denom==0)
        denom=1;
    end
    baseDados(:,i)= (baseDados(:,i)-menor)/denom;
    %baseDados(:,i)= (baseDados(:,i)-menor)/maior;
end

baseNormalizada = baseDados;
