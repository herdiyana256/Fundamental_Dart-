// IF
// Ketika mengembangkan sebuah program, kita akan bertemu dengan alur yang bercabang tergantung kepada kondisi yang terjadi. Untuk mengakomodasi dan mengecek sebuah kondisi pada Dart kita menggunakan kata kunci if.


// Ekspresi if akan menguji suatu kondisi. Jika hasil ekspresi tersebut bernilai true, maka blok kode di dalamnya akan dijalankan. Sebaliknya, jika bernilai false maka proses yang ditentukan akan dilewatkan.


void main () {
    // var isRaining = true; // JIKA DIUBAH MENJADI FALSE MAKA KODE DI DALAM BLOK IF AKAN DILEWATKAN DAN PROGRAM ANDA TIDAK AKAN MENGINGATKAN MEMBAWA PAYUNG
    //
    // print('Prepare before going to office.');
    // if(isRaining) {
    //     print("OH. It's raining, bring an umbrella");
    // }
    // print('Going to the office.');
  //Prepare before going to office.
// OH. It's raining, bring an umbrella
// Going to the office


  // Note : Lalu bagaimana jika Anda ingin melakukan operasi lain ketika kondisi bernilai false? Jawabannya adalah dengan menggunakan else. Pada contoh kode berikut kita akan melakukan pengecekan kondisi pada operator perbandingan dan operator logika.
//   void main () {
//   var openHours = 8;
//   var closedHours = 21;
//   var now = 17;
//
//   if(now > openHours && now < closedHours) {
//       print("Hello, we're open");
//   } else {
//       print("Sorry, we've closed");
//   }
//     // Output :m Hello, we're open
//
// }



/*
START
  |
HUJAN? ----TRUE-----> PESAN TAXI ONLINE
  |                             |
PESAN OJEK ONLINE               |
  |------------------------------
  END
 */



// kita juga bisa mengecek beberapa kondisi sekaligus dengan menggabungkan else dan if . contoh seperti program konversi nilai , sbb :
  import 'dart:io';

  void main() {
    stdout.write('Inputkan nilai Anda (1-100) : ');
    var score = num.parse(stdin.readLineSync()!);

    print('Nilai Anda: ${calculateScore(score)}');
  }

  String calculateScore(num score) {
    if (score > 90) {
      return 'A';
    } else if (score > 80) {
      return 'B';
    } else if (score > 70) {
      return 'C';
    } else if (score > 60) {
      return 'D';
    } else {
      return 'E';
    }
  }


  //Fitur menarik lain dari Dart adalah conditional expressions. Dengan ini kita bisa menuliskan if-else statement hanya dalam satu baris:


// condition ? true expression : false expression

  var shopStatus = now > openHours ? "Hello, we're open" : "Sorry, we've closed";



  //Selain itu Dart juga mendukung conditional expressions seperti berikut:
  expression1 ?? expression2
      var buyer = name ?? 'user';


  //Pada kode di atas jika variabel name tidak bernilai null, maka buyer akan menyimpan nilai dari name. Namun jika bernilai null, buyer akan berisi ‘user’.



