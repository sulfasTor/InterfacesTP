% Fonction qui trace DL en fonction de la temperature

function  p = plotTt(A)
T = A(1:end, 2);
DL = A(1:end, 4);

P=polyfit(T,DL,2);

p=plot(T, DL);
grid on
title('DL (1/10 mm) en fonction de T (C)')
xlabel('T en C')
ylabel('DL en 1/10 mm')

text(max(T)/3,max(DL)/10,num2str(P,'Y = %dX^2 + %dX + %d'))

end  