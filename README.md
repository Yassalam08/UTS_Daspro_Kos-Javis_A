# Anak Kos Simulator

## Anak Kos Simulator
Anak Kos Simulator adalah game simulasi berbasis teks yang dibuat dengan bahasa
pemrograman Pascal. Pemain berperan sebagai mahasiswa rantau yang harus bertahan
selama 7 hari dengan modal awal Rp 100.000 dan energi 60%. Setiap hari pemain
memiliki 3 aksi yang bisa dipilih, yaitu makan, kuliah, atau kerja, lalu mengakhiri
hari dengan tidur.

Pemain harus mengatur uang, energi, dan nilai kuliah agar tidak kehabisan uang dan
mendapat nilai yang baik. Game berakhir dengan game over jika uang habis. 
Jika berhasil bertahan sampai hari ke-7, ending ditentukan oleh nilai dan sisa uang pemain

## Daftar Anggota Kelompok
1. **Muhammad Reifani Rizki** - 261401062 (Kom A dan Lab 1)
2. **Javier Eugenius Batistuta Sinaga** - 261401011 (Kom A dan Lab 1)
3. **Fajar Musaddad Fy**- 261401091 (Kom A dan Lab 2)

## Fitur Fitur Utama Program
### 1. Status Pemain
Menampilkan uang, energi, dan nilai pemain di setiap giliran memilih aksi.

### 2. Menu Interaktif Harian
Menu aksi terus muncul sampai pemain memilih Tidur. Pilihan di luar 1-4 ditolak
dengan pesan "Pilihan tidak valid".

### 3. Makan
Uang -15, energi +15%. Ditolak jika uang kurang dari 15 atau energi sudah 100%.

### 4. Kuliah
Energi -25%, nilai +10. Ditolak jika energi kurang dari 25% atau sudah kuliah
hari itu (maksimal 1x per hari).

### 5. Kerja
Energi -30%, uang +Rp 25.000. Ditolak jika energi kurang dari 30%.

### 6. Tidur
Energi +50% (maksimal 100%), uang -Rp 30.000 untuk biaya kos, lalu hari berganti.
Tidur tidak memakai jatah aksi, jadi selalu bisa dipilih.

### 7. Batas 3 Aksi per Hari
Pemain hanya bisa melakukan 3 aksi (makan, kuliah, atau kerja) per hari. Setelah
jatah habis, pemain harus tidur.

### 8. Game Over
Jika uang habis (0 atau kurang) setelah hari berganti, permainan langsung berakhir.

### 9. Ending
Jika bertahan 7 hari, ending ditentukan oleh nilai dan sisa uang:
- **Mahasiswa Teladan**: nilai minimal 60 dan uang minimal Rp 30.000
- **Anak Kos Tangguh**: nilai minimal 40
- **Survivor**: selain kondisi di atas
