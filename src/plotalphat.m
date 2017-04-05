function p = plotalphat(A, L)

    alpha = A(1:end, 7)/L.*(A(1:end, 6) - 30);
    T = A(1:end, 5);
    
    p = plot(T, alpha);
    grid on
    title('Alpha linéaire en fonction de la température')
    xlabel('Température en °C')
    ylabel('Alpha linéaire en 1/K')
end 