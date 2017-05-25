function p = plotalphat(data, L0)


T = data(1:end, 2);
m = alphames(data, L0);
s = correctionSilice(T);


alpha_moy = m + s;

% P=polyfit(T,alpha_moy,2);

p = plot(T, alpha_moy);
grid on
title('Alpha lineaire en fonction de la temperature');
xlabel('Temperature en C');
ylabel('Alpha lineaire en 1/C');

% text(max(T)/3,max(alpha_moy)/10,num2str(P,'Y = %dX^2 + %dX + %d'))

end