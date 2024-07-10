function [Erro, erroparc] = QUALIDADEGRUPOSGK(mPert, base, prototipos, distanciaGK)


[totprototipos, ~] = size(prototipos);
[totObjetos,~]= size(base);
mdist = zeros(totprototipos, totObjetos);

for j=1:totprototipos %para cada centroide
    for i=1:totObjetos %para cada objeto da base de dados
        mdist(j,i) = (mPert(j,i)).*distanciaGK(j,i);
    end
end


###seleciona apenas a distancia dos objetos ao respectivo grupo, e faz a media dos mesmos
##M = zeros(1, totprototipos);
##colinic=1;
##for i=1:totprototipos
##  colfim=colinic+volume(i)-1;
##  objetosDoGrupo = distanciaGK(i,colinic:colfim);
##  M(1,i) = mean(objetosDoGrupo);
##  colinic=colfim+1;
##end

Erro = sum(sum(mdist')); %valor escalar
erroparc = sum(mdist');

endfunction