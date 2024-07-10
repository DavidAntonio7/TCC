function [Erro, erroparc] = ERROQUADRATICO(mPert, m, base, prototipos)


[totprototipos, ~] = size(prototipos);
[totObjetos,~]= size(base);
mdist = zeros(totObjetos, totprototipos);

matrizPert = mPert.^m; %ij^m, para algoritmos fuzzy

for j=1:totprototipos %para cada centroide
    for i=1:totObjetos %para cada objeto da base de dados
        mdist(i,j) = (matrizPert(i,j)).*((DISTEUCLIDIANA(base(i,:),prototipos(j,:))))^2;
    end
end

Erro = sum(sum(mdist)); %valor escalar
erroparc = sum(mdist);

endfunction