// Exception- > Sebuah aplikasi yang sudah berjalan mungkin mengalami eror dan crash. Kondisi eror pada saat aplikasi berjalan (runtime) ini dikenal dengan exception. Ketika exception terjadi aplikasi akan dihentikan dan program setelahnya juga tidak akan dieksekusi.

//Salah satu contoh exception yang mungkin terjadi adalah pada aplikasi kalkulator. Di mana menurut prinsip matematika kita tidak bisa membagi bilangan lain dengan bilangan nol (0).
void main () {
   // var a = 7;
  //  var b = 0;
   // print(a ~ / b); //exceptions.dart:7:13: Error: '~' isn't a binary operator.


// Untuk menangani exception, mari gunakan try dan catch. Pindahkan kode yang berpeluang menimbulkan exception ke dalam blok try.
 // try {
   // var a = 7;
   // var b = 0;
    // print(a ~/ b);
 //}
 // Note : Kode di atas masih belum lengkap karena di dalam sebuah blok try ada kode yang diasumsikan berpeluang menjadi exception sehingga perlu ditangani. Pada eror sebelumnya telah diketahui bahwa exception yang terjadi adalah IntegerDivisionByZeroException . Sehingga kita bisa memanfaatkan keyword on untuk mengatasi ketika exception tersebut terjadi.


  //Nah, kita telah berhasil membuat program kita aman dari crash dengan memanfaatkan Exception. Blok kode on Exception di atas adalah pemanfaatan exception secara umum. Namun bagaimana dengan exception lainnya yang belum kita ketahui? Pada Dart sendiri telah tersedia beberapa exception seperti IOException, FormatException, dsb. Untuk menangani exception yang tidak diketahui secara spesifik, kita bisa menggunakan keyword catch setelah blok try.

  // try {
  //     var a = 25;
  //     var b = 0;
  //     print(a ~/ b);
  //
  // } on Exception {
  //     print('Can not Divide by Zero'); // Can Not Devide by Zero
  // }


// try  {
//     var a = 7;
//     var b = 0;
//     print(a ~/ b);
//
// } else {
//     print('Exception Happened: $e');
//   }
// //Kode catch membutuhkan satu parameter yang merupakan objek exception. Kita dapat mencetak exception tersebut ke layar untuk menampilkan exception apa yang terjadi. Output kode di atas adalah:
//
//   Exception happened: IntegerDivisionByZeroException



// Selain itu, kita juga dapat menambahkan satu parameter lagi di dalam catch yang merupakan objek stack trace. Dari stack trace ini kita bisa melihat detail exception dan di baris mana exception tersebut terjadi.
try {
    var a = 7;
    var b = 0;
    print(a ~/ b);

} catch(e, s) {
    print('Exception happened: $e');
    print('Stack Trace: $s');
}
///*
// Output :
// Exception happened: IntegerDivisionByZeroException
// Stack trace: #0      int.~/ (dart:core-patch/integers.dart:24:7)
// #1      main (file:///home/dicoding/Playground/dart/Belajar%20Dart/bin/main.dart:25:13)
// #2      _startIsolate.<anonymous closure> (dart:isolate-patch/isolate_patch.dart:305:32)
// #3      _RawReceivePortImpl._handleMessage (dart:isolate-patch/isolate_patch.dart:174:12)
//  */

//Blok catch dapat digabungkan dengan on. Catch akan menangkap apabila tidak ada exception yang memenuhi blok on yang terpasang.



//Finally
// Selain try, on, dan catch, ada satu blok lagi yang ada dalam mekanisme exception handling, yaitu finally. Blok finally akan tetap dijalankan tanpa peduli apa pun hasil yang terjadi pada blok try-catch.
try {
    var a = 7;
    var b = 0;
    print(a ~/ b);

} catch (e, s) {
    print('Exception Happened: $e');
    print('Stack Trace: $s');
} finally {
    print('This Line Still Executed'); //This Line Still Executed

}








}
