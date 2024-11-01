program _KokoyangpunyaToko ;
uses crt;
var
  kembalian,totallembaran,i: longint;
  pecahan: array[1..11] of longint;
  jumlah: array[1..11] of longint;

begin
clrscr;
  pecahan[1] := 100000;
  pecahan[2] := 75000;
  pecahan[3] := 50000;
  pecahan[4] := 20000;
  pecahan[5] := 10000;
  pecahan[6] := 5000;
  pecahan[7] := 2000;
  pecahan[8] := 1000;
  pecahan[9] := 500;
  pecahan[10] := 200;
  pecahan[11] := 100;

  write('Masukkan jumlah kembalian yang harus diberikan:');
  readln(kembalian);

  totallembaran := 0;
  for i := 1 to 11 do
    begin
        jumlah[i] := kembalian div pecahan[i];
        kembalian := kembalian mod pecahan[i];
        totallembaran := totalLembaran + jumlah[i];
    end;

  writeln('Jumlah minimum lembaran atau koin yang dibutuhkan: ', totallembaran);
end.
