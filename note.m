function[x,t]=note(frekans,vurus)%sinyali çiziyor
    fs=8192;%orneklenme tanimlandi
    t=0:1/fs:vurus-(1/fs); %periyodu tanimladik
       a=length(t);%periyodun uzunlugu
    hk=[1 0.8 0.4 0.1]; %harmonik katsayilari atama
        b=length(hk); %hk dizisinin boyutu b ye atandi
        x=zeros(1,a); %periyot boyutu kadar 0 degerinden olusan bir x matrisi tanimlandi
        for i=1:b %1 den  dizi boyutuna kadar bir dongu olusturuldu
            x=x+(hk(i)*sin(2*pi*(i*frekans)*t)); %disardaki alinan degerlere gore olusturulan sinus sinyalinin harmonigi olusturuldu
        end
A=linspace(0,1.5,a/4);%genligi 1,5'a kadar olan ve periyodun 1/4'u kadar aralıkta vektor olusturur
B=linspace(1.5,1,a/8);%genligi 1,5 dan 1'e kadar inen ve periyodun 1/8'i kadar aralıkta vektor olusturur
C=linspace(1,1,a/2);%genligi sabitolan ve periyodun 1/2'si kadar aralıkta vektor olusturur
D=linspace(1,0,a/8);%genligi 1 den 0'e kadar inen ve periyodun 1/8'i kadar aralikta vektor olusturur
 zarf=[A B C D];%vektorler bir dizide  siralanir
 x=x.*zarf;%x dizisinin her elemani zarf dizisinin her elemani tek tek carpilara tekrar x dizisine atanır yani x sinyali zarflanir.
 