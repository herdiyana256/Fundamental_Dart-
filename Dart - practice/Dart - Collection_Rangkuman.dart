Rangkuman Materi
Untuk menyelesaikan masalah yang lebih kompleks secara efisien, kita membutuhkan struktur data yang lebih canggih dibandingkan tipe data biasa. Dart memiliki tipe data lain yang dapat menyimpan banyak data sekaligus, contohnya seperti List, Set, dan Map.

Beberapa hal yang telah kita bahas pada modul ini, antara lain:

List digunakan untuk menyimpan banyak data. Data pada List disusun secara berurutan dan diakses menggunakan index.
var numberList = [1, 2, 3, 4, 5];
var stringList = ['Hello', 'Dicoding', 'Dart'];
List menerapkan zero-based indexing, di mana 0 adalah indeks dari nilai pertama dan list.length - 1 adalah indeks dari nilai terakhir.
Set digunakan untuk menyimpan banyak data secara unik, tidak ada duplikasi, tidak berurutan, dan tidak diindeks.
var numberSet = {1, 4, 6};
Pada Set memiliki beberapa fungsi yang bisa digunakan, antara lain:
add(value), untuk menambahkan nilai value pada Set.
remove(value), untuk menghapus nilai value pada Set.
union(other), membuat set baru yang berisi gabungan Set ini dan Set other.
intersection(other), membuat set baru yang berisi irisan Set ini dan Set other.
Map menyimpan banyak data dengan format pasangan key-value
var capital = {
  'Jakarta': 'Indonesia',
  'London': 'England',
  'Tokyo': 'Japan'
};
Terdapat beberapa properti yang tersedia pada Map, antara lain:
keys, untuk menampilkan seluruh key yang ada di dalam Map.
values, untuk mengetahui seluruh nilai yang ada di dalam Map.
clear(), untuk menghapus seluruh key-value yang ada di dalam Map.
Saat mengakses key yang tidak ada pada map, nilai variabel akan bernilai null.
print(capital['New Delhi']); // null
