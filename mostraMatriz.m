function retval = mostraMatriz (matriz)
  [qtd,lin,col]=size(matriz)
  
  for q=1:qtd
    #printf("\n");
    #printf("\n");
    #printf("matriz %d \n",q);
    

    for i = 1:lin
      printf("\n");
      for j=1:col
        printf("%d  ",matriz(q,i,j));
      endfor
    endfor
  endfor
  
endfunction
