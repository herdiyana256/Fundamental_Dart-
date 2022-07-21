//List - List berguna untuk menyimpan informasi secara berurutan, informasi tersebut bisa tersortir atau tidak, data yang diisi bisa bertipe apa saja, panjang datanya bisa berapa saja, dengan List kita bisa menyimpan informasi/data dalam satu tempat. untuk mendeklarasikan List dart menggunakan kurung siku [], perhatikan contoh berikut ini:

List<int> numberList = [1,2,3,4,5 ];

//Kode di atas adalah contoh dari satu objek List yang berisi kumpulan data dengan tipe integer. Karena kompiler bisa mengetahui tipe data yang ada dalam sebuah objek List, maka tak perlu kita menuliskannya secara eksplisit.

var numberList = [1, 2, 3, 4, 5];
var stringList = ['Hello', 'Dicoding', 'Dart'];


//Sesuai contoh di atas, kita mendefinisikan tipe data yang bisa dimasukkan ke dalam List di dalam tanda kurung siku ([ ]). Sama seperti variabel, jika kita tidak mendefinisikan nilai secara eksplisit ke dalam List, maka List akan menyimpan tipe dynamic atau bisa menyimpan semua tipe data.

List dynamicList = [1, 'Dicoding', true]; // List<dynamic>


//Ketika bermain dengan sebuah List, tentunya ada saat di mana kita ingin mengakses posisi tertentu dari List tersebut. Untuk melakukannya, kita bisa menggunakan fungsi indexing seperti berikut:
print(dynamicList[1]);



/*
Perhatikan kode di atas. Fungsi indexing ditandai dengan tanda [ ]. Jika Anda mengira bahwa konsol akan menampilkan angka 1, maka tebakan Anda kurang tepat. Karena dalam sebuah List, indeks dimulai dari 0. Maka ketika kita akan mengakses data pada dynamicList yang berada pada indeks ke-1, artinya data tersebut merupakan data pada posisi ke-2. Jadi data yang akan ditampilkan pada konsol adalah Dicoding.

Lalu apa yang akan terjadi jika kita berusaha menampilkan item dari List yang berada di luar dari ukuran List tersebut? Sebagai contoh, Anda ingin mengakses indeks ke-3 dari dynamicList:
 */

print(dynamicList[3]);


/*
Hasilnya adalah eror! Kompiler akan memberitahukan bahwa perintah itu tidak bisa dijalankan. Berikut pesan eror yang akan muncul:

Unhandled exception:
RangeError (index): Invalid value: Not in range 0..2, inclusive: 3

Pesan di atas memberitahu kita bahwa List telah diakses dengan indeks ilegal. Ini akan terjadi jika indeks yang kita inginkan negatif atau lebih besar dari atau sama dengan ukuran List tersebut.

Masih ingat looping? Untuk menampilkan seluruh item dari list kita bisa memanfaatkan looping. Contohnya perhatikan kode berikut:
 */

for (int i = 0; i < stringList.lenght; i++) {
    print(stringList[i]);
}


//Pada kode di atas kita memanfaatkan perulangan sebanyak jumlah data di dalam list untuk mencetak data yang ada di dalam list. Banyaknya data di dalam list bisa kita panggil melalui properti .length.
//
// Selain itu kita juga bisa menggunakan fungsi foreach untuk menampilkan data di dalam list.
stringList.forEach((s) => print(s));


//Mekanisme di atas dikenal sebagai lambda atau anonymous function. Kita akan mempelajarinya lebih dalam pada modul yang akan datang.
//
// Sejauh ini kita baru belajar menginisialisasikan dan mengakses data dari sebuah List. Pastinya Anda bertanya, “Bagaimana kita memanipulasi data pada List tersebut?” Nah, untuk menambahkan data ke dalam list, kita bisa menggunakan fungsi add().
stringList.add('Flutter');


//Fungsi add ini akan menambahkan data di akhir list. Sehingga ketika dicetak, konsol akan menampilkan data berikut:
[Hello, Dicoding, Dart, Flutter]


    //Lalu bagaimana jika kita ingin menambahkan data namun tidak di akhir List? Jawabannya adalah dengan fungsi insert. Di dalam fungsi insert kita perlu memasukkan 2 parameter, yaitu indeks list dan data yang akan dimasukkan.
stringList.insert(0, 'Programming');
// stringList = [Programming, Hello, Dicoding, Dart, Flutter]


//Untuk mengubah nilai di dalam list, kita bisa langsung menginisialisasikan nilai baru sesuai indeks yang diinginkan.
stringList[1] = 'Application';


//Sedangkan untuk menghapus data terdapat beberapa fungsi remove yang bisa kita gunakan, antara lain:
stringList.remove('Programming'); // Menghapus list dengan nilai Programming
stringList.removeAt(1);           // Menghapus list pada index ke-1
stringList.removeLast();          // Menghapus data list terakhir
stringList.removeRange(0, 2);     // Menghapus list mulai index ke-0 sampai ke-1 (indeks 2 masih dipertahankan)













