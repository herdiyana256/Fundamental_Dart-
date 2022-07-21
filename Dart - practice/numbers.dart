void main () {
  /*
  Tipe data angka pada Dart dapat disimpan ke dalam dua jenis: int dan double.

IIntegers adalah nilai bilangan bulat yang tidak lebih besar dari 64 bit tergantung platform yang digunakan. Untuk Dart VM variabel integer dapat menyimpan nilai mulai dari -2^63 hingga 2^63 - 1, sementara jika dikompilasi ke JavaScript integer memiliki nilai dari -2^53 sampai 2^53 - 1.
   */

  //Integer atau bilangan bulat adalah bilangan yang tidak memiliki titik desimal. Contohnya seperti berikut:
  var number = 2022; // 2022
  var hex = 0xDEADBEFF; //3735928575
  print(number);
  print(hex);

//Jika sebuah bilangan adalah bilangan desimal, maka bilangan tersebut termasuk tipe data double. Double juga memiliki ukuran sebesar 64 bit. Berikut ini adalah contoh variabel double:
var decimal = 1.2; //1.2
var pi = 3.14; //3.14
print(decimal);
print(pi);

// Noted : Int dan double adalah subtipe dari tipe data num. Ketiga tipe data ini dapat kita gunakan untuk melakukan perhitungan dasar seperti penjumlahan, perkalian, hingga menggunakan fungsi seperti abs(), ceil(), floor(), dan banyak fungsi lainnya. Jika Anda membutuhkan operasi perhitungan namun tidak tersedia pada tiga tipe data ini maka Anda bisa memanfaatkan library dart:math.


//sebelumnya kita memiliki kebutuhan untuk mengonversi tipe String menjadi int. Konversi tipe data ini adalah hal yang penting dan kita akan banyak membutuhkannya. Selain konversi String menjadi int, kita juga bisa melakukan konversi double menjadi String atau sebaliknya.
// Example : 
//String -> Int
var eleven = int.parse('11'); // 11
print(eleven);

//String -> Double
var eleventPointTwo = double.parse('11.2'); // 11.2
print(eleventPointTwo);

//Int -> String
var elevenAsString = 11.toString(); //11
print(elevenAsString);

// Double -> String
var piAsString = 3.132324.toStringAsFixed(2); // String piAsString = '3.13'
print(piAsString);
}