program _PanitiasukaTelat;
uses 
crt,sysutils;
var
Nama,Jabatan:string;
waktujam,waktumenit,waktutotal:integer;
denda:real;

begin
clrscr;
write('Nama: ');
readln(nama);
write('Jabatan : ');
readln(Jabatan);

repeat
write('Datang(jam): ');
readln(waktujam);
if waktujam > 24 then
    begin
    writeln('harap masukan jam 1-24');
    end;
until waktujam <= 24;

repeat
write('Datang(menit): ');
readln(waktumenit);
if waktumenit > 60 then
    begin
    writeln('Harap masukan menit 1-60');
    end;
until waktumenit <= 60;
waktutotal:=(waktujam*60)+waktumenit;

if (jabatan= 'panitia') and (waktutotal>420) then
    begin
        denda:=((waktutotal-420) div 5)*10000;
    end;
if jabatan = ('ketua') then   
    if waktutotal >420 then
        denda:=((waktutotal-420) div 5)*20000;       
if jabatan = ('wakil ketua') then   
    if waktutotal >420 then
        denda:=((waktutotal-420) div 5)*20000;        
if jabatan = ('sekretaris umum') then   
    if waktutotal >420 then
        denda:=((waktutotal-420) div 5)*20000;        
if jabatan = ('bendahara') then   
    if waktutotal >420 then
        denda:=((waktutotal-420) div 5)*20000;

write('Denda: Rp.', denda:0:0);

end.