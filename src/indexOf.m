function i = indexOf(val, mat)


for j=length(mat)/2:length(mat)
    if(val == mat(j))
        i=j;
        return
    elseif(val > mat(j))
        j =length(mat)/4;
    else 
        j = length(mat)*3/4;
    end
end