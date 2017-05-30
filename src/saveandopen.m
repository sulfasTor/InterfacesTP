%Script qui prend une capture d'ecran des graphes

function saveandopen(h)
file = 0;

try
    [file, path] = uiputfile('*.png');
catch
    msgbox('Une erreur est survenue.')
end

if (file ~= 0)
    printfile = strcat(path, file);
    photo=getframe(h);
    [photo,cmp]=frame2im(photo);
    imwrite(photo,printfile,'png');
    winopen(strcat(path,file));
end
