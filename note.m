function[x,t]=note(genlik,frekans,vurus)%genli�in frekans�n� buluyor
t=0:1/10000:vurus;
x=genlik*sin(2*pi*frekans*t)%verilenlere g�re yapt���m�z form�l