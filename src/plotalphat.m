function p = plotalphat(data, L0)


T = data(1:end, 2);
m = alphames(data, L0);
s = correctionSilice(T);

alpha_moy = m - s;

bound = find(T == max(T));
bound = bound(1);

P = polyfit(T(1:bound), alpha_moy(1:bound),1);

p = plot(T, alpha_moy);
grid on
title('Alpha lineaire en fonction de la temperature');
xlabel('Temperature en C');
ylabel('Alpha lineaire en 1/C');

text(max(T)/3,max(alpha_moy)/5,num2str(P,'Y = %dX + %d'))

end