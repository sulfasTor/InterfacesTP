function m = alphames(data, L0)
m = zeros(length(data), 1);

% T0 = data(1, 2); % Temperature initiale
T0 = 29;
T = data(1:end, 2); % Temperatures
L = data(1:end, 4); % DL (1/10 mm),variations de longueur

% bound = indexOf(max(T), T); % On recupere l'indice ou la temperature est maximale car on ne s`interesse pas au refroidissement
% T = T(1:bound);
% L = L(1:bound);
% alpha_moy = zeros(1,length(T));

% for i=1:length(L)-1
%     L(i+1) =  L(i+1) + L(i); % Longueurs en fonction de la temperature
% end

for i=1:length(L)
   temp = ( T(i) - T0 ) * L0*10;
    m(i) = L(i,1) / temp; % Coefficient de dilatation 
end

end
