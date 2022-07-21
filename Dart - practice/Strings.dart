// String

void main () {
  String singleQoute = 'ini adalah String';
  String doubleQoute = "Ini juga String";
  print(singleQoute);
  print(doubleQoute);

//Anda dapat menggunakan tanda petik secara bergantian, khususnya jika Anda memiliki teks yang mengandung tanda petik.
print('"What do you think about Dart?"he asked');

//Lalu Bagaimana jika teks kita memiliki kedua tanda petik ini ?

//print('"I think it's great!" I answered confidently');
// output : error -> Solusi

//Tentunya kode di atas akan menghasilkan eror. Solusinya, gunakanlah backslash (\) untuk mengurangi ambiguitas dalam tanda petik. Mekanisme ini juga dikenal dengan nama escape string. Sehingga kode di atas akan menjadi seperti berikut:
  print('"I think it\'s great!" I Answered confidently'); // benar


  //Backslash sebelum tanda petik ini akan mengatakan kepada Dart bahwa itu hanyalah tanda petik dan tidak boleh ditafsirkan sebagai pembatas string. Selain tanda petik, backslash juga berguna untuk mengabaikan simbol lain yang menimbulkan ambigu di dalam string, contohnya seperti backslash itu sendiri.
  print("Windows path:D:\\Dicoding - Memulai Pemogaman dengan dart");

// Fitur lain dari String adalah String interpolation di mana kita bisa memasukkan nilai dari variabel atau expression ke dalam string. Interpolation ini bisa kita terapkan dengan simbol $.
var name = 'Herdiyan';
print('Hello $name, nice to meet you.');
print('1 + 1 = ${1+ 1}'); // String Interpolation




//Jika Anda perlu menampilkan harga dalam dollar, maka apa yang akan Anda lakukan? Yup, backslash akan memberitahu Dart mana tanda $ sebagai interpolation atau sebagai mata uang. Selain itu Anda juga menggunakan cara seperti berikut:
print(r'Gaji seorang IT Junior Developer idealnya sebesar $800');
// Huruf'r' sebelum String akan membantu Dart untuk menganggap String Sebagai raw, yang berarti akan mengabaikan interpolation.



// kita juga bisa menambahkan sebuah Unicode ke dalam String. Pada Dart Unicode ini dikenal dengan runes. Unicode mendefinisikan nilai numerik unik untuk setiap huruf, angka, dan simbol yang digunakan dalam semua sistem penulisan dunia. Cara umum untuk mengekspresikan unicode adalah \uXXXX, di mana XXXX adalah nilai heksadesimal 4 digit. Misalnya karakter hati (♥) adalah \u2665.
print('Hii \u2665'); // Hii ♥




}