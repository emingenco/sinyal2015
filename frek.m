function [frekans]=frek(nota,oktav,oktavdegeri)%frekans yaptýk

notalar={'Do','Dod','Re','Mib','Mi','Fa','Fad','Sol','Sold','La','Sib','Si','Sus'}; %dizi yazdik.
n=strcmp(notalar,nota); %dizenin icine aktardik,indekside 1 artirdik.
m=find(n,1);%n dizisinde 1 degerinin indeksini donderduk.
        if (nargin==0) %fonsiyona hic deger gonderilmemisse
                 disp ('veri girisi yapiniz');%deger gir
        elseif (nargin==1)%deger gonderilmis ise
                 if (m==13)%durma oldugunu konrol eder
                    frekans=0;%sus degeri ise frekansý 0 dondurur
                else %degilse
                    frekans=16.35*(2^(4))*(2^((m-1)/12));%gonderilen tek degeri nota kabul eder ve 4 oktavdekýlerini 0 kabul ederek frekans hesaplar
                end%sus notasý kontrolunu biter
        elseif (nargin==2) %iki deger gonderilirse
                 if (m==13)%nota degeri Sus ise
                    frekans=0;%frekansa 0 donderir
                 else%degilse
                    frekans=16.35*(2^(oktav))*(2^((m-1)/12)); %oktav fonksiyonuna gore frekans uretir
                 end
        else %eger 2 den fazla deger gonderilmis ise
                 if (m==13)%ve nota degeri Sus ise
                     frekans=0;%frekansý 0 dondurur
                 else%degil ise
                     frekans=16.35*(2^(oktav+oktavdegeri))*(2^((m-1)/12)); %gonderilen nota oktav ve oktav degerine gore frekans hesaplamasi yapar
                 end


    end

end 
   


