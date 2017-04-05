function p = plotalphat(A, L)

    alpha = A(1:end, 7)/L.*(A(1:end, 6) - 30);
    T = A(1:end, 5);
    
    p = plot(T, alpha);
    grid on
    title('Alpha lin�aire en fonction de la temp�rature')
    xlabel('Temp�rature en �C')
    ylabel('Alpha lin�aire en 1/K')
end 