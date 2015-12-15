function [frekans]=frek(nota,oktav)%frekans� oktava g�re d�nd�r�yor
notalar={'Do','C#','Re','Eb','Mi','Fa','F#','Sol','G#','La','Bb','Si'};
n=strcmp(notalar,nota);%nota dizide arat�l�yor
m=find(n,1);
frekans=round(16.35*(2^oktav)*(2^((m-1)/12)));%say�sal olarak frekans� olu�turdu