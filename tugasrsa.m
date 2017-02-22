clc;

p = str2num(input('Masukan nilai p : ', 's'));
q = str2num(input('Masukan nilai q : ', 's'));
m = str2num(input('Masukan nilai m : ', 's'));
disp('-----');

n = p*q;
totem = (p-1)*(q-1);

disp(['Pesan yang akan dikirim : ', num2str(m)])

% % % hitung gembok e
e = 1;
for i = 2:n
    a = i;
    b = totem;
    r = a - b * floor( a/b ); 
    
    while r ~= 0 
        a = b; 
        b = r; 
        r = a - b * floor( a/b ); 
    end 

    if b == 1
        e = i;
        break;
    end
end
disp(['Gembok e yang didapat : ', num2str(e)]);

% % % hitung kunci d
d = 1;
for i = 1:n
    modulo = mod(e*i, totem);
    if modulo == 1
        d=i;
        break;
    end
end
disp(['Kunci d yang didapat : ', num2str(d)]);

% % % enkripsi pesan
c = mod(m^e, n);
disp(['Pesan yang telah terenkripsi : ', num2str(c)]);

% % % dekripsi pesan
z = mod(c^d, n);
disp(['Pesan yang telah terdekripsi : ', num2str(z)]);