//Spread Operator
// Dart memiliki fitur menarik untuk menambahkan banyak nilai ke dalam List dengan cara yang singkat, yaitu spread operator.
//
// Sesuai namanya “spread”, fitur ini digunakan untuk menyebarkan nilai di dalam collections menjadi beberapa elemen. Spread operator dituliskan dengan tiga titik (...). Mari kita lihat contoh kode berikut:

void main () {
  var favorites = ['Seafood', 'Salad', 'Nugget', 'Soup'];
  var others = ['Cake', 'Pie', 'Donut'];
  var allFavorites = [favorites, others];
  print(allFavorites);

/* output
[[Seafood, Salad, Nugget, Soup], [Cake, Pie, Donut]]
 */
}

//Nilai List tidak akan tergabung, Alih-alih menggabungkan nilainya, variabel allFavorites menjadi List yang menampung dua List di dalamnya. Nah, dengan spread operator kita dapat menggabungkan kedua List di atas:
var favorites = ['Seafood', 'Salad', 'Nugget', 'Soup'];
var others = ['Cake', 'Pie', 'Donut'];
var allFavorites = [...favorites, ...others];
print(allFavorites);

/* output
[Seafood, Salad, Nugget, Soup, Cake, Pie, Donut]
 */


//Yup, dengan spread operator kita dapat memasukkan masing-masing elemen di dalam List ke dalam List lainnya.


//Untuk mengatasi List yang bisa bernilai null, kita dapat menggunakan null-aware spread operator (...?) seperti berikut:

var list;
var list2 = [0, ...?list];
print(list2);

/* output
[0]
 */

