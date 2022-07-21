// Null Safety -> Null safety adalah perubahan terbesar yang dibuat pada dart 2.0, untuk mengetahui apa itu null safety perhatikan contoh kode berikut:

// Example Code  :
// Tanpa Null Safety
bool isEmpty(String string) => string.length == 0;

main() {
    isEmpty(null);
}


//Jika kita menjalankan program tersebut tanpa null safety, maka program tersebut akan error,  bayangkan jika ada kode pada aplikasi flutter yang ada buat tanpa null safety dan aplikasi tersebut crash pada saat sedang berjalan, tentunya user tidak akan senang dengan hal tersebut, demikian juga anda sebagai pembuat aplikasinya.

// dengan null safety
bool isEmpty(String? string) => string?.length == 0;

main () {
    isEmpty(null);
}




//Terdapat operator baru untuk null safety yaitu ?, ! dan late.
// Ketika kita memilih menggunakan null safety, secara default tipe-tipe data yang kita gunakan,adalah non-nullable yang artinya nilainya tidak boleh berisi null "sampai kita mengatakan boleh berisi null", dengan null safety, error pada saat runtime akan dimunculkan/diberitahu pada saat edit-time analisis error, dengan null safety, semua variabel berikut adalah non-nullable.

// Example Code :
// Pada Null safe Dart, tidak ada satupun variabel berikut berisi null
var  i = 42; // Inferred to be an int
String name = getFileName();
final b = Foo();


//Untuk mengindikasikan bahwa variabel tersebut bisa berisi null, maka tambahkan opreator ? pada saat melakukan deklarasi variabel.
int? bilangan = null;


//Pada saat membuat program jika kita tahu bahwa suatu variabel non-nullable akan di-inisialisasi ke nilai bukan null sebelum digunakan, tetapi Dart Analyzer tidak akan mengizinkan dan menampilkan pesan error pada saat edit-time, maka gunakan keyword late sebelum tipe data dari variabel tersebut, perhatikan kode berikut:
class Segitiga {
  int _alas;
  int _tinggi;

  set alas(int value) => _alas = value;

  set tinggi(int value) => _tinggi = value;

  double luas() {
    return (_alas * _tinggi) / 2;
  }
}



//Kode tersebut akan menghasilkan error:
// Error: Field '_alas' should be initialized because its type 'double' doesn't allow null.
//   double alas;
//          ^^^^
//
// Error: Field '_tinggi' should be initialized because its type 'double' doesn't allow null.
//   double tinggi;
//          ^^^^^^
// Jika kita yakin bahwa variabel _alas dan _tinggi tidak akan pernah berisi nilai null, tetapi kita tidak ingin melakukan inisialisasi nilai awal, maka tambahkan keyword late untuk mengatasi error tersebut, perhatikan kode berikut:

class Segitiga {
  late int _alas;
  late int _tinggi;

  set alas(int value) => _alas = value;

  set tinggi(int value) => _tinggi = value;

  double luas() {
    return (_alas * _tinggi) / 2;
  }
}

void main() {
  var sg = Segitiga();
  sg.alas = 5;
  sg.tinggi = 10;
  print(sg.luas());
}



/*
Keyword late mempunyai 2 efek, yaitu:
Dart Analyzer tidak akan meminta kita untuk menginisialisasi nilai awal dari variabel yang non-nullable.
Dart runtime akan malas (lazy) menginisialisasi variabel late, sebagai contoh: jika ada instance variabel non-nullable harus dikalkulasi, maka dengan menambahkan keyword late akan mendelay kalkulasi tersebut sampai penggunaan pertama sekali variable tersebut.
 Untuk efek no. 2 perhatikan contoh berikut:
 */

int calculate() {
  return 4 * 5;
}

void main() {
  int a = calculate();
  int b = 10;

  print(b);
  print(b);
  print(a);
}



/*
Gunakan Editor VS. Code sehingga kita bisa melakukan debug,
Kemudian set breakpoint pada void main(),
Klik debug pada editor,
Klik step over sebanyak 2 kali, maka akan tampil nilai variabel a: 20,
Kemudian klik stop pada debug.


Modifikasi program tersebut dengan menambahkan keyword late sebelum tipe data variabel a, perhatikan kode berikut:

 */
int calculate() {
  return 4 * 5;
}

void main() {
  late int a = calculate();
  int b = 10;

  print(b);
  print(b);
  print(a);
}



//kemudian lakukan seperti langkah sebelumnya dan klik debug, dan lihat bahwa pada variabel a: <not initialized>, klik step over sampai ke print(a) yaitu pada saat pertama sekali variabel a digunakan, hal ini membuktikan bahwa variabel tersebut akan di inisialisasi oleh dart Runtime pada saat pertama kali digunakan.







//Menggunakan Variabel dan Ekspresi
// Dengan null safety, Dart analyzer akan menghasilkan error ketika menemukan nilai nullable pada variabel non-nullable, dengan demikian kita akan bisa membuat kode lebih aman. Ketka menggunakan variabel nullable atau ekspresi, pastikan kita menangani nilai null tersebut, sebagai contoh, kita dapat menggunakan ekspresi statemen if, operator ?? atau operator ? untuk menangani kemungkinan nilai null tersebut. Misalnya skenario pada program kita adalah kita memberikan nilai non-nullable dengan variabel nullable, hal ini memungkinkan variabel non-nullable berisi nilai null, oleh karena itu kita harus menangani nilai null tersebut, perhatikan potongan kode berikut:
int? aNullableInt;

void main() {

  int b = aNullableInt ?? 0;

  print(b);
}


//Jika kita lihat kode tersebut, ada kemungkinan variabel aNullableInt berisi nilai null, dengan demikian variabel b (non-nullable) perlu menangani hal tersebut, yaitu apa bila variabel aNullableInt berisi nilai null maka ganti dengan 0. (int b = aNullableInt ?? 0) Kode berikut sama tujuannya seperti kode sebelumnya hanya menggunakan statemen if.
int nilaiInt(int? aNullableInt) {
  if (aNullableInt == null) {
    return 0;
  }
  return aNullableInt;
}


//Jika kita yakin bahwa suatu ekspresi dengan variabel nullable tidak akan berisini nilai null, maka kita bisa menambahkan ! untuk membuat Dart memperlakukannya sebagai non-nullable, lebih jelasnya perhatikan contoh berikut:
int? aNullableInt=10;

void main() {
  int b = aNullableInt;
}



//Kode tersebut akan error, karena variabel non-nullable di beri nilai variabel nullable, agar Dart memperlakukan int b = aNullableInt sebaga non-nullable maka tambahkan ! di akhir variabel nullable, dengan demikian kode tersebut menjadi:
int? aNullableInt=10;

void main() {
  int b = aNullableInt!;
}



//Catatan Penting: Jika kita tidak yakin bahwa nilai dari variabel nullable tidak akan pernah berisi null maka jangan gunakan operator !. Jika kita menggunakan null-safety pada variabel, maka kita tidak bisa menggunakan member access operator (.), perhatikan contoh berikut:
double? d;
//print(d.floor()); ini akan error
//gunakan operator ? untuk dapat mengakses fungsi floor
print(d?.floor())