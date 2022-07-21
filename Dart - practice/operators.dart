// Operators-> Operator dalam bahasa pemrograman adalah simbol yang memberitahu compiler atau interpreter untuk melakukan operasi matematika, relasional atau logis tertentu dan menghasilkan hasil akhir. Operator akan selalu digunakan pada setiap bahasa pemrograman apapun

//Sebeneranya kita telah menerapkan beberapa contoh operator pada materi sebelum nya , Sebagai contoh operator Assignment (=) yang kita gunakan untuk inisialisasi nilai variable .

void main () {
    var firstNumber = 26; // Pada kode di atas kita menginstruksikan komputer untuk memasukkan nilai 26 ke dalam variabel firstNumber.



  // Operator Aritmatika -> Aritmatika merupakan cabang ilmu matematika yang memiliki jenis-jenis perhitungan sederhana.contoh nya : penambahan, pengurangan, perkalian, sisa bagi, penjumlahan , pembagian
  var firstNumbers = 4;
  var secondNumber = 13;
  var sum = firstNumber + secondNumber;
  print(sum); // 17


/*
Operator	Deskripsi
+	Penjumlahan
-	Pengurangan
*	Perkalian
/	Pembagian
~/	Pembagian, mengembalikan nilai int
%	Modulo atau sisa hasil bagi
 */


  // Example code :
  print(5 + 2);   // int add = 7
  print(5 - 2);   // int subtract = 3
  print(5 * 2);   // int multiply = 10
  print(5 / 2);   // double divide = 2.5
  print(5 ~/ 2);  // int intDivide = 2
  print(5 % 2);   // int modulo = 1


  //Operator aritmatika pada pemrograman memiliki aturan yang sama dengan matematika, di mana perkalian dan pembagian akan didahulukan sebelum penjumlahan atau pengurangan.
  print(2+4 * 2); // 10

  //Jika Anda ingin melakukan operasi penjumlahan terlebih dahulu, gunakan tanda kurung atau parentheses.
  print((1+3) * (4-2)); //8


  //Selain itu Dart mendukung increment dan decrement. Contohnya adalah seperti berikut:
  var  a= 0, b=5;
  a++; // a = a+ 1 = 1
  b--; // b = b - 1 = 4
  print(a); // 1
  print(b); // 4

  // Note : Expression a++ di atas dapat diartikan dengan a = a + 1. Komputer akan mengambil nilai dari a kemudian menambahkan 1 lalu memasukkannya kembali ke variabel a. Bentuk increment lainnya adalah seperti berikut:



  var c = 0;
  c += 5; // c = c + 5  atau c = 0 + 5
  print(c); // 5


  //Operator ini juga bisa digunakan pada operator aritmatika lain seperti perkalian dan pembagian.
  var d = 2;
  d *= 3; // d = d * 3 atau d = 2 * 3
  print(d); // 6


  /*
  Operator perbandingan
Dart juga mendukung operasi perbandingan untuk membandingkan nilai-nilai yang dijadikan sebagai operands. Berikut ini adalah contoh operator perbandingan pada Dart:

Operator	Deskripsi
==	Sama dengan
!=	Tidak sama dengan
>	Lebih dari
<	Kurang dari
>=	Lebih dari sama dengan
<=	Kurang dari sama dengan
   */



  //Operator perbandingan ini akan mengembalikan nilai dalam bentuk boolean.
  //Example Code :
  if(2 <= 3) {
      print('Ya, 2 kurang dari sama dengan 3');
   } else {
      print('Anda salah'); // Ya, 2 kurang dari sama dengan 3
  }




  /*
  Operator logika
Kita juga dapat menggabungkan ekspresi boolean atau membaliknya dengan operator logika. Operator ini meliputi:

Operator	Deskripsi
||	OR
&&	AND
!	NOT
Kita telah membahas operator NOT atau bang pada materi boolean. Sementara itu operator OR atau AND digunakan untuk menguji logika dari beberapa nilai boolean. Operator AND akan menghasilkan nilai true jika semua operand-nya bernilai true, sedangkan OR jika salah satu saja dari operand bernilai true maka operator akan mengembalikan nilai true. Contohnya seperti kode berikut:

   */

  if (2 < 3 && 2 + 4 == 5) {
      print('Untuk mencetak ini semua kondisi harus benar');
  } else {
      print('2 kurang dari 3, tapi 2 + 4 tidak sama dengan 5, maka ini akan tampil');
  }

if(false  || true || false) {
    print('Ada satu nilai true'); // Output : Ada satu nilai true
} else {
    print('Jika semuanya false, maka ini akan tampil'); // tidak keluar 
}


}
