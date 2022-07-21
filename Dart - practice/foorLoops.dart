// For Loops - Looping adalah sebuah urutan perintah yang secara menerus diulang hingga suatu kondisi tercapai. Kondisi yang dimaksud disini dapat dalam bentuk yang berbeda-beda seperti; mendapatkan data dan merubah data, dan apakah sebuah nilai sudah mencapai jumlah yang ditentukan.


print(1);
print(2);
print(3);
print(4);
print(5);
print(6);
print(7);
print(8);
print(9);
print(10);

//Bagaimana jika kita perlu menampilkan angka 1 sampai 100?

// Dart memiliki banyak opsi untuk melakukan perulangan kode, salah satunya adalah for. For cocok digunakan pada kondisi perulangan di mana kita membutuhkan variabel indeks dan tahu berapa kali perulangan yang kita butuhkan. Sebagai contoh jika kita ingin menampilkan angka 1 sampai 100, kita bisa menuliskan seperti berikut:


for (int i = 1; i <= 100 i++) {
    print(i);
}


//Lebih ringkas bukan? Terdapat tiga bagian utama dalam sintaks for di atas:
//
// Pertama, variabel index yang seringkali diberi nama i yang berarti index. Pada variabel ini kita menginisialisasi nilai awal dari perulangan yang kita lakukan.
// Kedua, operasi perbandingan. Pada bagian ini komputer akan melakukan pengecekan kondisi apakah perulangan masih perlu dilakukan. Jika bernilai true maka kode di dalam blok for akan dijalankan.
// Ketiga, increment/decrement. Di sini kita melakukan penambahan atau pengurangan variabel index. Jadi pada contoh di atas variabel indeks akan ditambah dengan 1 di setiap akhir perulangan.
// Jika dituliskan dalam bentuk pseudocode, maka kode di atas bisa dimaknai dengan “Jika i kurang dari sama dengan 100, maka jalankan kode berikut.”




//Challenge
// Kini saatnya menguji pemahaman Anda tentang materi for loops. Bisakah Anda membuat program Dart yang menampilkan output seperti berikut?
//
// *
// **
// ***
// ****
// *****
// ******
// *******
// ********
// *********
// **********