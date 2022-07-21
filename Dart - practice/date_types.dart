//  Dart adalah bahasa yang mendukung type inference. Ketika Anda mendeklarasikan variabel dengan var, Dart akan secara otomatis menentukan tipe datanya. Misalnya :

void main () {
  var greetings = "Hello Universitas Muhammadiyah!";
  var myAge = 26;
  print('Hi, $greetings $myAge');

  //Anda tetap bisa mendeklarasikan tipe data variabel secara eksplisit untuk menghindari kebingungan dan memudahkan proses debugging.
  //String greetings = 'Hello Dart!';
  //int myAge = 26;


/*
Tipe	Deskripsi	Contoh
int	Integer (bilangan bulat)	5, -7, 0
double	Bilangan desimal	3.14, 18.0, -12.12
num	Bilangan bulat dan bilangan desimal	5, 3.14, -99.00
bool	Boolean	true, false
String	Teks yang terdiri dari 0 atau beberapa karakter	‘Dicoding’, ‘Y’, ‘’
List	Daftar nilai	[1, 2, 3], [‘a’, ‘b’, ‘c’]
Map	Pasangan key-value	{“x”: 4, “y”: 10}
dynamic	Tipe apa pun

Dart mendukung type inference, menariknya ketika kita mendeklarasikan variabel tanpa melakukan inisialisasi, variabel akan memiliki tipe dynamic. Karena sebuah variabel bernilai dynamic bisa berisi tipe apa pun, maka tidak ada masalah jika kita mengubah nilai di dalamnya.



 */

  var x; // dynamic
  x = 7;
  x = 'Dart is great';
  print(x);
  // Dart is great

  //Kode di atas tetap bisa berjalan dan menampilkan pesan ‘Dart is great’ tanpa ada masalah. Berbeda jika kita menginisialisasi nilai variabel x secara langsung. Akibatnya, editor akan menampilkan eror karena terjadi perubahan tipe data.

  /*
var x = 7;  // int
x = 'Dart is great'; // Kesalahan assignment
print(x);
   */

}