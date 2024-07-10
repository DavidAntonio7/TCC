function [BD,nomeBase] = Carregarbase2_0()

disp(sprintf('1.Base de Dados Ruspini \n '));
disp(sprintf('2.Base de Dados Planta Iris \n '));
disp(sprintf('3.Base de Dados Yeast \n '));
disp(sprintf('4.Base de Dados Wine \n '));
disp(sprintf('5.Base Butterfly \n '));
disp(sprintf('6.Base Pima Indians Diabetes \n '));
disp(sprintf('7.Base Shuttle \n '));
disp(sprintf('8.Base Magic Gama\n '));
disp(sprintf('9.Teste 2 grupos\n '));
disp(sprintf('10.Ionosphere\n '));
disp(sprintf('11.Soybean_Small\n '));
disp(sprintf('12.Glass_Identification\n '));
disp(sprintf('13.Statlog_Heart\n '));
disp(sprintf('14.Tres_Grupos_sigma_0.001\n '));
disp(sprintf('15.Tres_Grupos_sigma_0.06\n '));
disp(sprintf('16.Tres_Grupos_sigma_0.03\n '));
disp(sprintf('17.Tres_Grupos_sigma_0.08\n '));
disp(sprintf('18.Grupos_Simetricos\n '));
disp(sprintf('19.Dois_Pontos\n '));
disp(sprintf('20.Pontos_Horizontais\n '));
disp(sprintf('21.Incomplete_Butterfly\n '));
disp(sprintf('22.Tese_1_Nao_lineramente_separaveis\n '));
disp(sprintf('23.Tese_2_Ponte\n '));
disp(sprintf('24.Tese_3_Volumes\n '));
disp(sprintf('25.Teste_3_grupos\n '));
disp(sprintf('26.Ecoli\n '));
disp(sprintf('27.Haberman\n '));
disp(sprintf('28.Balance_Scale\n '));
disp(sprintf('29.Liver\n '));
disp(sprintf('30.Wisconsin Original\n '));
disp(sprintf('31.\n SINTETICA A'));
disp(sprintf('32.\n SINTETICA B'));
disp(sprintf('33.\n SINTETICA C'));
disp(sprintf('34.\n SINTETICA D'));
disp(sprintf('35.\n SINTETICA E'));
disp(sprintf('36.\n SINTETICA FUZZY A'));
disp(sprintf('37.\n SINTETICA FUZZY B'));
disp(sprintf('38.\n SINTETICA FUZZY C'));
disp(sprintf('39.\n SINTETICA FUZZY D'));
disp(sprintf('40.\n SINTETICA FUZZY E'));
disp(sprintf('41.\n SINTETICA FUZZY F'));
nomeBase = input(': ');

# Insere o caminho da pasta da base de dados e carrega todos os arquivos de dados
caminho = 'C:\Users\ALEXANDRE\Desktop\01042022\';

switch nomeBase,
    case 1, %Base Ruspini
        local = strcat(caminho,'datasets\ruspini.m');
        BD = load(local, 'r');
    case 2,%Base Planta Iris
        local = strcat(caminho,'datasets\iris_plant.m');
        BD = load(local, 'r');
    case 3,%Base Yeast
        local = strcat(caminho,'datasets\yeast.m');
        BD = load(local, 'r');
    case 4,%Base Wine
        local = strcat(caminho,'datasets\wine.m');
        BD = load(local, 'r');
    case 5,%Base Butterfly
        local = strcat(caminho,'datasets\butterfly.m');
        BD = load(local, 'r');
    case 6,%Base Pima Indians
        local = strcat(caminho,'datasets\pima_indians.m');
        BD = load(local, 'r');
    case 7,%Base Shuttle
        local = strcat(caminho,'datasets\statlog_shuttle.m');
        BD = load(local, 'r');
    case 8,%Base Magic
        local = strcat(caminho,'datasets\magicgama.m');
        BD = load(local, 'r');
    case 9,%Teste 2 grupos
        local = strcat(caminho,'datasets\teste_dois_grupos.m');
        BD = load(local, 'r');
    case 10,%Ionosphere
        local = strcat(caminho,'datasets\ionosphere.m');
        BD = load(local, 'r');
    case 11,%Soybean_Small
        local = strcat(caminho,'datasets\soybean_small.m');
        BD = load(local, 'r');
    case 12,%Glass Identification
        local = strcat(caminho,'datasets\glass.m');
        BD = load(local, 'r');
    case 13,%Statlog_Heart
        local = strcat(caminho,'datasets\statlog_heart.m');
        BD = load(local, 'r');
    case 14,%Tres Grupos sigma 0.001
        local = strcat(caminho,'datasets\tres_grupos_001.m');
        BD = load(local, 'r');
    case 15,%Tres Grupos sigma 0.06
        local = strcat(caminho,'datasets\tres_grupos_sigma_06.m');
        BD = load(local, 'r');
    case 16,%Tres Grupos sigma 0.03
        local = strcat(caminho,'datasets\tres_grupos_sigma_03.m');
        BD = load(local, 'r');
    case 17,%Tres Grupos sigma 0.08
        local = strcat(caminho,'datasets\tres_grupos_sigma_08.m');
        BD = load(local, 'r');
    case 18,%Dois grupos simetricos e dois objetos ruidosos
        local = strcat(caminho,'datasets\grupos_simetricos.m');
        BD = load(local, 'r');
    case 19,%Dois Pontos
        local = strcat(caminho,'datasets\dois_pontos.m');
        BD = load(local, 'r');
    case 20,%ponto na horizontal
        local = strcat(caminho,'datasets\pontos_horizontais.m');
        BD = load(local, 'r');
    case 21,%incomplete butterfly
        local = strcat(caminho,'datasets\incomplete_butterfly.m');
        BD = load(local, 'r');
    case 22,%nao separaveis
        local = strcat(caminho,'datasets\tese_1_nao_separaveis.m');
        BD = load(local, 'r');
    case 23,%ponte
        local = strcat(caminho,'datasets\tese_2_ponte.m');
        BD = load(local, 'r');
    case 24,%Volumes
        local = strcat(caminho,'datasets\tese_3_volumes.m');
        BD = load(local, 'r');
    case 25,%teste
        local = strcat(caminho,'datasets\teste_tres_grupos.m');
        BD = load(local, 'r');
    case 26,%Ecoli
        local = strcat(caminho,'datasets\ecoli.m');
        BD = load(local, 'r');        
    case 27,%Haberman
        local = strcat(caminho,'datasets\haberman.m');
        BD = load(local, 'r');               
    case 28,%Balance_Scale
        local = strcat(caminho,'datasets\balance.m');
        BD = load(local, 'r');
    case 29,%Liver
        local = strcat(caminho,'datasets\liver.m');
        BD = load(local, 'r');     
    case 30,%wisconsin original
        local = strcat(caminho,'datasets\wisconsinoriginal.m');
        BD = load(local, 'r');
    case 31,%SINTETICA A
        local = strcat(caminho,'datasets\SINTETICA_A.m');
        BD = load(local, 'r');
    case 32,%SINTETICA B
        local = strcat(caminho,'datasets\SINTETICA_B.m');
        BD = load(local, 'r');
    case 33,%SINTETICA C
        local = strcat(caminho,'datasets\SINTETICA_C.m');
        BD = load(local, 'r');
    case 34,%SINTETICA D
        local = strcat(caminho,'datasets\SINTETICA_D.m');
        BD = load(local, 'r');
    case 35,%SINTETICA E
        local = strcat(caminho,'datasets\SINTETICA_E.m');
        BD = load(local, 'r');

    case 36,%SINTETICA A FUZZY 
        local = strcat(caminho,'datasets\AFUZZY.m');
        BD = load(local, 'r');
    case 37,%SINTETICA B FUZZY 
        local = strcat(caminho,'datasets\BFUZZY.m');
        BD = load(local, 'r');
    case 38,%SINTETICA C FUZZY 
        local = strcat(caminho,'datasets\CFUZZY.m');
        BD = load(local, 'r');
    case 39,%SINTETICA D FUZZY 
        local = strcat(caminho,'datasets\DFUZZY.m');
        BD = load(local, 'r');
    case 40,%SINTETICA E FUZZY 
        local = strcat(caminho, 'datasets\EFUZZY.m');
        BD = load(local, 'r');
    case 41,%SINTETICA F FUZZY 
        local = strcat(caminho, 'datasets\FFUZZY.m');
        BD = load(local, 'r');        
end;
BD;