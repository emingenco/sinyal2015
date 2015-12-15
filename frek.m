function [frekans]=frek(nota,oktav)%frekansý oktava göre döndürüyor
notalar={'Do','C#','Re','Eb','Mi','Fa','F#','Sol','G#','La','Bb','Si'};
n=strcmp(notalar,nota);%nota dizide aratýlýyor
m=find(n,1);
frekans=round(16.35*(2^oktav)*(2^((m-1)/12)));%sayýsal olarak frekansý oluþturdu