function [classificacao] = GERARVETORROTULOS(grupos)

%grupos = sort(grupos);
tot_grupos = length(grupos);
classificacao = zeros(1,sum(grupos));%tot objetos na base de dados
indice=1;

for i=1:tot_grupos%para cada grupo
    for j=1:grupos(i)%para um dos grupos
        classificacao(1,indice) = i;
        indice =indice +1;
    end
end
