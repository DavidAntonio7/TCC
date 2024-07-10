function [classeCorreta] = OBTERCLASSECORRETA(nomeBaseDados)

switch nomeBaseDados,
    case 1,%Base Ruspini. 2 atributos
        Ruspini='Ruspini'
        classeCorreta = [20,15,23,17]%cada posicao representa uma classe e seu valor é a qtd de objetos na respectiva classe
        
    case 2,%Base Planta Iris. 4 atributos
        %classes: Iris-setosa,Iris-versicolor,Iris-virginica
        Iris='Iris_Plant'
        classeCorreta = [50,50,50]
        
    case 3,%Base Yeast.
        %Não possui valores ausentes.
        %8 atributos (no total são 9, mas o atributo 1 é a sequencia e esta foi eliminada dos experimentos)
        OBS='Somente as 4 classes mais abundantes foram usadas' %(GT2FCM
        %O.Linda):CYT(463), NUC(429), MIT(244), ME3(163)
        Yeast='Yeast_4_classes_mais_usadas'
        classeCorreta = [463,429,244,163]%são as classes mais abundantes (1299 objs)
        
    case 4,%Base Wine.
        %Não possui valores ausentes.
        %13 atributos
        Wine='Wine (178 objs)'
        classeCorreta = [59,71,48]%3 diferentes cultivares
        
    case 5, %butterfly
        Butterfly='Butterfly'
        classeCorreta = [9,10]
        
    case 6,% Pima Indians Diabetes,
        %8 atributos, 768 objetos, 2 classes (500, 268)
        Pima_Indians_Diabetes='Pima_Indians_Diabetes'
        classeCorreta = [500,268]%classe 0, classe 1
        
    case 7,%Statlog Shuttle,
        %OBS='Somente 2 classes (a classe 1 é a mais abundantes, e classe 2 é a soma das demais classes)'
        %9 atributos,
        %uso apenas o training set 43500 objetos (Ondrej e Manic, FCM
        %2012), a classe 1 é a mais abundantes, e classe 2 é a soma das demais classes
        %Statlog_Shuttle='Statlog_Shuttle'
        classeCorreta = [34108,9392]
        Statlog_Shuttle='Statlog_Shuttle'
        %classeCorreta = [ temos a shuttle completa, agora, com 7 classes]%
        
    case 8%Magic,
        %10 atributos, 19020 objetos, 2 classes (12332, 6688) class g e class h
        Magic='Magic'
        classeCorreta = [12332,6688]%classe signal, classe background
        
    case 9%Teste 2 grupos,
        Teste='Teste 2 grupos'
        classeCorreta = [3,4]%
        
    case 10%Ionosphere (good e bad classes, respectivamente)
        %34 atributos
        %351 objetos
        Ionosphere='Ionosphere'
        classeCorreta = [225,126]%
        
    case 11%Soybean_Small (4 classes, 47 objetos, 35 atributos)
        Soybean_Small='Soybean_Small'
        classeCorreta = [10,10,10,17]%
        
    case 12%Glass Identification (6 classes, 214 objetos, 9 atributos)
        Glass_Identification='Glass_Identification'
        OBS='classes: 1,2,3,5,6,7'
        classeCorreta = [70,76,17,13,9,29]%
        
    case 13%Statlog_Heart (2 classes, 270 objetos, 13 atributos, classe 1:ausência de doença)
        Statlog_Heart='Statlog_Heart'
        classeCorreta = [150,120]%
        
    case 14%Tres grupos sigma 0.001
        Tres_Grupos001='Tres Grupos sigma 0.001'
        classeCorreta = [50,50,50]%
        
    case 15%Tres grupos_sigma 0.06
        Tres_Grupos_sigma06='Tres Grupos_sigma 0.06'
        classeCorreta = [50,50,50]%
        
    case 16%Tres grupos_sigma 0.03
        Tres_Grupos_sigma003='Tres Grupos_sigma 0.03'
        classeCorreta = [50,50,50]%
        
    case 17%Tres grupos_sigma 0.08
        Tres_Grupos_sigma008='Tres Grupos_sigma 0.08'
        classeCorreta = [50,50,50]%
        
    case 18%Dois grupos simétricos com dois objetos ruidosos
        Grupos_Simetricos='Grupos_Simetricos'
        classeCorreta = [7,4]%
        
    case 19%Dois pontos
        Dois_Pontos='Dois_Pontos'
        classeCorreta = [1,1]%
    case 20%pontos horizontais
        Pontos_Horizontais='Pontos_Horizontais'
        classeCorreta = [4,1]%
        
    case 21, %incomplete butterfly
        Butterfly='Incomplete Butterfly'
        classeCorreta = [5,10]
        
    case 22, %nao separaveis
        Nao_separaveis='Tese_1_nao_separaveis'
        classeCorreta = [18,18]
        
    case 23, %ponte
        Ponte='Tese_2_ponte'
        classeCorreta = [14,19]
        
    case 24, %volumes
        Volumes='Tese_3_volumes'
        classeCorreta = [9,20]
        
    case 25, %volumes
        Volumes='Tese_3_volumes'
        classeCorreta = [3,2,3]
        
    case 26, %Ecoli
        Ecoli ='Ecoli'
        classeCorreta = [143,77,2,2,35,20,5,52]        
        
    case 27, %haberman
        Haberman ='Haberman'
        classeCorreta = [225,81]                
    case 28, %balance_scale
         Balance_Scale ='Balance_Scale'
         classeCorreta = [288,49, 288]          
    case 29, %liver
         Liver ='Liver'
         classeCorreta = [145, 200]         
  case 30, %wisconsin original, 9 atributos, 699 obj
         wisconsin_original ='wisconsin original, 458 benig(2), 241 malig(4), val ausente moda (classe b, val 1; classe m, val 10)'
         classeCorreta = [458, 241]
         
    case 31, %SINTETICA A, SIGMA 0.001
        A ='SINTETICA A'
        classeCorreta = [400, 300, 100, 200]
        
    case 32, %SINTETICA B, SIGMA 0.001
        B ='SINTETICA B'
        classeCorreta = [100, 200, 300, 100, 100, 200]
        
    case 33, %SINTETICA C, SIGMA 0.001
        C ='SINTETICA C'
        classeCorreta = [350, 300, 350]
        
    case 34, %SINTETICA D, SIGMA 0.001
        D ='SINTETICA D'
        classeCorreta = [500, 500]
        
    case 35, %SINTETICA E, SIGMA 0.001
        E ='SINTETICA E'
        classeCorreta = [200, 200, 150, 300, 150]

    case 36, %SINTETICA A, SIGMA 0.02
        A ='SINTETICA A FUZZY'
        classeCorreta = [7,8]
        
    case 37, %SINTETICA B, SIGMA 0.02
        B ='SINTETICA B FUZZY'
        classeCorreta = [7, 6, 7]
        
    case 38, %SINTETICA C, SIGMA 0.02
        C ='SINTETICA C FUZZY'
        classeCorreta = [15, 15]

    case 39, %SINTETICA D, SIGMA 0.02
        D ='SINTETICA D FUZZY'
        classeCorreta = [50, 50]

    case 40, %SINTETICA E, SIGMA 0.02
        E ='SINTETICA E FUZZY'
        classeCorreta = [50, 50, 30, 20]
        
    case 41, %SINTETICA F, SIGMA 0.02
        F ='SINTETICA F FUZZY'
        classeCorreta = [40,40,40,40,40]     
end;

%
% case 8,%Base dois grupos
%         classeCorreta = [3,4];%