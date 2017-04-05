% Fonction qui trace DL en fonction de la temperature

function [f] = plotTt(A)
T = A(1:end, 5);
DL = A(1:end, 7);

f = plot(T, DL);
grid on
title('DL (1/10 mm) en fonction de T (°C)')
xlabel('T en °C')
ylabel('DL en 1/10 mm')

end  