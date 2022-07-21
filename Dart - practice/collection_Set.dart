// SET
//Selanjutnya kita akan membahas jenis collection yang kedua, yaitu Set. Set merupakan sebuah collection yang hanya dapat menyimpan nilai yang unik. Ini akan berguna ketika Anda tidak ingin ada data yang sama alias duplikasi dalam sebuah collection. Kita bisa mendeklarasikan Set dengan beberapa cara berikut:

var numberSet ={1, 4, 6};

Set<int> anotherSet = new Set.from([1,,4,6,4,1]);

//Perhatikan kode di atas. Di sana terdapat beberapa angka yang duplikat, yaitu angka 1 dan 4. Silakan tampilkan pada konsol dan lihat hasilnya.

print(anotherSet);

// Output: {1, 4, 6}

//Secara otomatis Set akan membuang angka yang sama, sehingga hasilnya adalah {1, 4, 6}.




//Untuk menambahkan data ke dalam Set kita dapat memanfaatkan fungsi add() atau addAll().
numberSet.add(6);
numberSet.addAll({2, 2, 3});



//Fungsi add akan menambah satu item ke dalam Set, sementara addAll digunakan untuk menambahkan beberapa item sekaligus. Nilai yang duplikat akan diabaikan.


//Lalu gunakan fungsi remove() untuk menghapus objek di dalam set yang diinginkan.
numberSet.remove(3);



//Kode di atas akan menghapus nilai 3 di dalam Set, bukan indeks ke-3.



//Kemudian untuk menampilkan data pada indeks tertentu, gunakanlah fungsi elementAt().
var numberSet = {1, 4, 6};

numberSet.add(6);
numberSet.addAll({2, 2, 3});
numberSet.remove(3);

print(numberSet.elementAt(2));

// Output: 6



//Selain itu, Dart juga memiliki fungsi union dan intersection untuk mengetahui gabungan dan irisan dari 2 (dua) buah Set. Sebagai contoh:
var setA = {1, 2, 4, 5};
var setB = {1, 5, 7};

var union = setA.union(setB);
var intersection = setA.intersection(setB);

print(union);
print(intersection);

// union: {1, 2, 4, 5, 7}
// intersection: {1, 5}


