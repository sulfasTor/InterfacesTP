function i = indexOf(val, mat)
i=0;

for j=ceil(length(mat)/2):length(mat)
    if(val == mat(j))
        i=j;
        return
    elseif(val > mat(j))
        j = ceil(length(mat)/4);
    else 
        j = ceil ( length(mat) * 3 / 4 );
    end
end