function retval = Grafico (base, centroides)
    plot(base(:,1), base(:,2), 'r*',...
          centroides(:,1), centroides(:,2), 'b*')
endfunction
