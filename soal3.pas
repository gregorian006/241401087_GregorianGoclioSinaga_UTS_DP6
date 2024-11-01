program _PemilihanSuaraRakyat;
uses crt;
var
  jumlahPemilih, i: integer;
  pilihan: char;
  jumlahPilihanA, jumlahPilihanB: integer;

begin
clrscr;
  write('Masukkan jumlah pemilih: ');
  readln(jumlahPemilih);

  for i := 1 to jumlahPemilih do
  begin
    write('Masukkan pilihan pemilih ', i, ', (A/B): ');
    readln(pilihan);

    if pilihan = 'A' then
    begin
        jumlahPilihanA := jumlahPilihanA + 1
    end
    else if pilihan = 'B' then
      jumlahPilihanB := jumlahPilihanB + 1;
  end;

  writeln;
  writeln('Jumlah pemilih yang memilih opsi A: ', jumlahPilihanA);
  writeln('Jumlah pemilih yang memilih opsi B: ', jumlahPilihanB);
end.