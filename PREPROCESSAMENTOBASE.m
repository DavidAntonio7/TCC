function [vclasseCorreta, totClasses, baseNormalizada, totObjetos,dimObjeto] = PREPROCESSAMENTOBASE(BD,nomeBase)

[vclasseCorreta] = OBTERCLASSECORRETA(nomeBase);%obtem as classes corretas da base de dados
[totClasses]= OBTERNUMCLASSES(vclasseCorreta);

if nomeBase==5
    disp(sprintf('Base Butterfly não normalizada\n '))
    disp(sprintf('Base Butterfly não normalizada\n '))
    disp(sprintf('Base Butterfly não normalizada\n '))
    input(': ');
    baseNormalizada = BD;
else
    if nomeBase==14
        disp(sprintf('Base tres_grupos não normalizada\n '))
        disp(sprintf('Base tres_grupos não normalizada\n '))
        disp(sprintf('Base tres_grupos não normalizada\n '))
        input(': ');
        baseNormalizada = BD;
    else
        if nomeBase==18
            disp(sprintf('Base Grupos Simétricos não normalizada\n '))
            disp(sprintf('Base Grupos Simétricos não normalizada\n '))
            disp(sprintf('Base Grupos Simétricos não normalizada\n '))
            input(': ');
            baseNormalizada = BD;
        else
            if nomeBase==19
                disp(sprintf('Base Dois Pntos não normalizada\n '))
                disp(sprintf('Base Dois Pntos não normalizada\n'))
                disp(sprintf('Base Dois Pntos não normalizada\n '))
                input(': ');
                baseNormalizada = BD;
                
            else
                if nomeBase==20
                    disp(sprintf('Base Pontos Horizontais não normalizada\n '))
                    disp(sprintf('Base Pontos Horizontais não normalizada\n '))
                    disp(sprintf('Base Pontos Horizontais não normalizada\n '))
                    input(': ');
                    baseNormalizada = BD;
                    
                else
                    if nomeBase==21
                        disp(sprintf('Base Incomplete Butterfly\n '))
                        disp(sprintf('Base Incomplete Butterfly\n '))
                        disp(sprintf('Base Incomplete Butterfly\n '))
                        input(': ');
                        baseNormalizada = BD;
                    else
                        if nomeBase==22
                            disp(sprintf('Nao separaveis\n '))
                            disp(sprintf('Nao separaveis\n '))
                            disp(sprintf('Nao separaveis\n '))
                            input(': ');
                            baseNormalizada = BD;
                        else
                            if nomeBase==23
                                disp(sprintf('Ponte\n '))
                                disp(sprintf('Ponte\n '))
                                disp(sprintf('Ponte\n '))
                                input(': ');
                                baseNormalizada = BD;
                            else
                                if nomeBase==24
                                    disp(sprintf('Volumes\n '))
                                    disp(sprintf('Volumes\n '))
                                    disp(sprintf('Volumes\n '))
                                    input(': ');
                                    baseNormalizada = BD;
                                else
                                    baseNormalizada = NORMALIZACAO(BD);%normalizaçao da base de dados (0,1)
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
[totObjetos, dimObjeto] = size(BD);%qtd de objetos da base e dimensão dos objetos
