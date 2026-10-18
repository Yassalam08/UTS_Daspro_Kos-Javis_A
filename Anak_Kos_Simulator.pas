program AnakKosSimulator;

var
  hari, uang, energi, nilai, pilihan, sisaAksi : integer;
  sudahKuliah : boolean;

begin
  { Nilai Awal }
  hari := 1;
  uang := 100; // Dalam satuan Ribu
  energi := 60; // Dalam persen
  nilai := 0;

  writeln('===================== ANAK KOS SIMULATOR =====================');
  writeln('Bertahan 7 hari tanpa kehabisan uang dan mendapat nilai bagus!');
  writeln;

  {Penjelasan Tentang Sistem Permainan}
  writeln('====================== INFO PERMAINAN ======================');
  writeln('1. Kamu akan diberikan 100 ribu diawal permainan');
  writeln('2. Kamu memiliki 60% energi diawal permainan');
  writeln('3. Setiap hari kamu hanya memiliki maksimal 3 aksi');
  writeln('4. Tidur tidak menggunakan jatah aksi');
  writeln('5. Tujuan kamu adalah bertahan 7 hari tanpa kehabisan uang');
  writeln('6. Game akan berakhir jika kamu kehabisan uang');
  writeln('7. Ending game akan ditentukan tergantung setiap keputusanmu');
  
  { While Loop untuk mengulang hari sampai hari ke 7 }
  while hari <= 7 do
  begin
    sisaAksi := 3; // Dalam 1 hari ada 3 aksi yang bisa dilakukan
    sudahKuliah := false; // Membatasi agar kuliah hanya bisa 1x sehari

    { Program Repeat sampai pemain memilih opsi tidur}
    repeat
      writeln;
      writeln('===== HARI KE-', hari, ' dari 7 =====');
      writeln('Uang   : Rp ', uang, '.000');
      writeln('Energi : ', energi, '%');
      writeln('Nilai  : ', nilai);
      writeln('Sisa aksi hari ini: ', sisaAksi);
      writeln;
      writeln('1. Makan   (uang -15, energi +15%)');
      writeln('2. Kuliah  (energi -25%, nilai +10, maksimal 1x per hari)');
      writeln('3. Kerja   (energi -30%, uang +25)');
      writeln('4. Tidur   (energi +50%, uang -30 untuk biaya kos');
      write('Pilih aksi: ');
      readln(pilihan);

      { Sisa Aksi hanya bisa digunakan untuk pilihan 1-3 dan jika sisa aksi 0 maka akan disuruh tidur }
      if (pilihan >= 1) and (pilihan <= 3) and (sisaAksi = 0) then
      begin
        writeln('Jatah aksi hari ini habis! Silakan tidur.');
        continue;
      end;

      { Case Of pilihan user }
      case pilihan of
        1: begin
            { Program If jika kurang uang atau energi penuh maka tidak bisa makan }
            if uang < 15 then
            begin
              writeln('Tidak bisa makan, uang kurang!');
              continue;
            end
            else if energi >= 100 then
            begin
              writeln('Tidak bisa makan, energi sudah penuh!');
              continue;
            end;
            uang := uang - 15;
            energi := energi + 15;
            if energi > 100 then
              energi := 100;
            writeln('Nyam Nyam Nyam.');
            sisaAksi := sisaAksi - 1; // Sisa Aksi akan berkurang 1 setiap keputusan diambil
          end;

        2: begin
            if energi < 25 then
            begin
              writeln('Energi tidak cukup untuk kuliah!');
              continue;
            end;
             
            if sudahKuliah then
            begin
              writeln('Kamu sudah kuliah hari ini!');
              continue;
            end;

            energi := energi - 25;
            nilai := nilai + 10;
            sudahKuliah := true;
            writeln('Kuliah selesai, nilaimu bertambah 10');
            sisaAksi := sisaAksi - 1; 
          end;

        3: begin
            if energi < 30 then
            begin
              writeln('Energi tidak cukup untuk bekerja!');
              continue;
            end;

            energi := energi - 30;
            uang := uang + 25;
            writeln('Kerja selesai, kamu dapat Rp 25.000');
            sisaAksi := sisaAksi - 1;
          end;

        4: begin
            energi := energi + 50;
            if energi > 100 then
              energi := 100;

            uang := uang - 30;
            writeln('Zzz... kamu tidur nyenyak.');
          end;

      else
        writeln('Pilihan tidak valid!');
      end;

    until pilihan = 4;

    hari := hari + 1;

    { Jika Uang Habis Maka Game Berakhir }
    if uang <= 0 then
      break;
  end;

  { Ending dari game }
  writeln;
  writeln('=================================================');
  if uang <= 0 then
    writeln('GAME OVER: uangmu habis, kamu pulang kampung...')
  else
  begin
    writeln('SELAMAT! Kamu bertahan 7 hari.');
    { Ending Game tergantung dari decision pemain }
    if (nilai >= 60) and (uang >= 30) then
      writeln('Ending: MAHASISWA TELADAN')
    else if nilai >= 40 then
      writeln('Ending: ANAK KOS TANGGUH')
    else
      writeln('Ending: SURVIVOR (nilai masih rendah)');
  end;
  writeln('Nilai akhir: ', nilai, ' | Uang akhir: Rp ', uang, '.000');
  writeln('=================================================');
end.
