#apenas com as bases que serao usadas no tcc
function [BD,nomeBase] = Carregarbase3_0(nomeBase)


# Insere o caminho da pasta da base de dados e carrega todos os arquivos de dados
#caminho = 'C:\Users\ALEXANDRE\Desktop\01042022\';
caminho = 'D:\Users\d-dan\OneDrive\Área de Trabalho\Pastas\TCC\';

switch nomeBase,
    case 1, %Base Ruspini #
        local = strcat(caminho,'datasets\ruspini.m');
        BD = load(local, 'r');
    case 2,%Base Planta Iris #
        local = strcat(caminho,'datasets\iris_plant.m');
        BD = load(local, 'r');
    case 3,%Base Yeast #
        local = strcat(caminho,'datasets\yeast.m');
        BD = load(local, 'r');
    case 4,%Base Wine #
        local = strcat(caminho,'datasets\wine.m');
        BD = load(local, 'r');
    case 10,%Ionosphere #
        local = strcat(caminho,'datasets\ionosphere.m');
        BD = load(local, 'r');
    case 11,%Soybean_Small #
        local = strcat(caminho,'datasets\soybean_small.m');
        BD = load(local, 'r');
    case 12,%Glass Identification #
        local = strcat(caminho,'datasets\glass.m');
        BD = load(local, 'r');
    case 13,%Statlog_Heart #
        local = strcat(caminho,'datasets\statlog_heart.m');
        BD = load(local, 'r'); 
    case 27,%Haberman #
        local = strcat(caminho,'datasets\haberman.m');
        BD = load(local, 'r');               
    case 28,%Balance_Scale #
        local = strcat(caminho,'datasets\balance.m');
        BD = load(local, 'r');
    case 29,%Liver #
        local = strcat(caminho,'datasets\liver.m');
        BD = load(local, 'r');     
         
end;
BD;