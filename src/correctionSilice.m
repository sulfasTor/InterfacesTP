function s = correctionSilice(T)

s = zeros(length(T), 1);

for i=1:length(T)
    s(i) = -6.18117e-18 * T(i)^4 + 1.66963e-14 * T(i)^3 - ...
        1.43909e-11 * T(i)^2 + 0.00000000403746 * T(i) + 0.0000003588;
    
end
end