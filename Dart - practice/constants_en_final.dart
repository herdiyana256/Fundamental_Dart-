// Constants & Final ->Terkadang kita butuh menyimpan sebuah nilai yang tidak akan pernah berubah selama program berjalan. Variabel telah membantu kita untuk menyimpan nilai dan bisa diakses dengan nama yang deskriptif. Constants adalah hal baru yang akan kita pelajari dan berguna untuk menyimpan nilai yang tidak akan berubah selama program berjalan.

// Example Code : ?
//const pi = 3.14;


//Type inference dari Dart akan secara otomatis mendeteksi tipe data dari const pi di atas sebagai double, namun Anda dapat menentukan tipe data secara eksplisit.
//const num pi = 3.14;


//Sehingga pada sebuah aplikasi kalkulator luas lingkaran, kode Anda akan menjadi seperti berikut:
import 'dart:io';

const num pi = 3.14;

void main () {
      var radius = 7;
      print('Luas Lingkaran dengan radius $radius = ${calculateCircleArea(radius)}');
}
  num calculateCircleArea(num radius) => pi * radius * radius;
  // Luas Lingkaran dengan radius 7 = 153.86



//Selain const, opsi lain untuk menghindari perubahan nilai variabel setelah diinisialisasi adalah final. Apa bedanya final dan const?

//Variabel yang dideklarasikan sebagai const bersifat compile-time constants, artinya nilai tersebut harus sudah diketahui sebelum program dijalankan. Sedangkan final, nilainya masih bisa diinisialisasi ketika runtime atau ketika aplikasi berjalan. Sebagai contoh kode berikut:
// Example code :
final firstName = stdin.readLineSync();
final lastName = stdin.readLineSync();

// lastName = 'Dart' ; tidak bisa mengubah nilai

print('Hello $firstName $lastName');
//Kita masih bisa menerima input dan menyimpannya pada variabel firstName dan lastname, namun nilai variabel tersebut tidak bisa diubah setelah diinisialisasi.



// Noted : Kita masih bisa menerima input dan menyimpannya pada variabel firstName dan lastname, namun nilai variabel tersebut tidak bisa diubah setelah diinisialisasi.


//Jadi kapan kita harus menggunakan const dan kapan final? Kapan pun memungkinkan, selalu gunakan const karena compile-time constant memiliki performa yang lebih baik dan menggunakan memori lebih sedikit. Jika tidak memungkinkan untuk menggunakan const, gunakan final untuk melindungi variabel agar tidak berubah.
