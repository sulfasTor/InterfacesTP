function p = plotalphat(data, l_init)

L0 = l_init; % Longueur initial
T0 = data(1, 2); % Temperature initiale
T = data(1:end, 2); % Temperatures
L = data(1:end, 4); % DL (1/10 mm),variations de longueur

bound = indexOf(max(T), T); % On recupere l'indice ou la temperature est maximale car on ne s`interesse pas au refroidissement
T = T(1:bound);
L = L(1:bound);
alpha_moy = zeros(1,length(T));

for i=1:length(L)-1
    L(i+1) =  L(i+1) + L(i); % Longueurs en fonction de la temperature
end

for i=1:length(L)
    alpha_moy(i) = L(i) / L0 * ( T(i) - T0 ); % Coefficient de dilatation 
end


% P=polyfit(T,alpha_moy,2);

p = plot(T, alpha_moy);
grid on
title('Alpha lineaire en fonction de la temperature');
xlabel('Temperature en C');
ylabel('Alpha lineaire en 1/C');

% text(max(T)/3,max(alpha_moy)/10,num2str(P,'Y = %dX^2 + %dX + %d'))

end