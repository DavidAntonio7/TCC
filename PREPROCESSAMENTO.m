function [rotulos, totClasses, baseNormalizada, totObjetos, dimObjeto,nomeBase] = PREPROCESSAMENTO(base)

[BD, nomeBase] = Carregarbase3_0(base);
#[BD, nomeBase] = Carregarbase2_0();
[classeCorreta, totClasses, baseNormalizada, totObjetos, dimObjeto] = PREPROCESSAMENTOBASE(BD, nomeBase);%normaliza��o da base de dados
rotulos = GERARVETORROTULOS(classeCorreta);%vetor de r�tulo de objetos
rotulos = rotulos';%converte em vetor coluna (um indice do rotulo corresponde ao respectivo objeto)
