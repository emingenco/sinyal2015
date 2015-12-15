function[x,t]=note(genlik,frekans,vurus)%genliðin frekansýný buluyor
t=0:1/10000:vurus;
x=genlik*sin(2*pi*frekans*t)%verilenlere göre yaptýðýmýz formül