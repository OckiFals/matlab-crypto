clear all;
clc;

pesan = input ('Masukan pesan : ', 's'); %meminta inputan user untuk pesan
kunci = input ('Masukan kunci : ', 's'); %meminta inputan user untuk kunci
sorted = sort(kunci); %mengurutkan karakter pada variabel kunci sesuai abjad
disp('Ciphertext : ')
for i=1 : length(sorted) %pengulangan sebanyak karakter kunci
    row = 0;
    while row*length(kunci) < length(pesan) %pengulangan sebanyak total karakter pesan
        col = 0;
        while col < length(kunci) %pengulangan untuk mengambil huruf yang berada dibawah kunci yang telah diurutkan
            if (row*length(kunci) + col >= length(pesan))
                continue;
            end
            ch1 = charat(kunci, col+1);
            ch2 = charat(sorted, i);
            pos = row*length(kunci)+col;
            
            if isequal(ch1,ch2)
                ct = charat(pesan, pos+1);
                fprintf(ct); %menampilkan ciphertext yang telah dihasilkan
            end
            col = col + 1;
        end
        row = row + 1;
    end
end
disp(' ')
