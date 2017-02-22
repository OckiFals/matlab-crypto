clc;

p = str2num(input('Masukan nilai p (harus prima) : ', 's'));
g = str2num(input('Masukan nilai g (generator) : ', 's'));
a = str2num(input('Masukan nilai secret key A : ', 's'));
b = str2num(input('Masukan nilai secret key B : ', 's'));

ya=mod(g^a, p);
yb=mod(g^b, p);

disp(['Nilai yA : ', num2str(ya)])
disp(['Nilai yB : ', num2str(yb)])

ya2=mod(yb^a, p);
yb2=mod(ya^b, p);

disp(['Nilai shared key A : ', num2str(ya2)])
disp(['Nilai shared key B : ', num2str(yb2)])