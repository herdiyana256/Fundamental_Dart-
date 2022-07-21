// Cascade Notation

/*
Dart juga dilengkapi dengan cascade notation atau cascade operator. Operator ini memungkinkan kita untuk melakukan beberapa urutan operasi pada objek yang sama. Kita bisa mengakses property dari object dan menjalankan method di dalamnya bersamaan ketika kita menginstansiasi object. Cascade operator dituliskan dengan dua tanda titik (.. atau ?..).

Perhatikan contoh kode yang menggunakan cascade operator berikut berikut:


 */
import 'oop_Class.dart';

void main () {
    var dicodingCat = Animal('Grey', 2, 4.2)
        ..name = 'Gray'
        ..eat();
}

//Apakah Anda mengerti maksud kode di atas? Kita menginstansiasi object Animal dengan constructor seperti biasa. Kemudian cascade operator yang mengikutinya akan melakukan operasi berdasarkan object yang dikembalikan oleh constructor. Contoh kode tersebut melakukan hal yang sama apabila kita menuliskan kode seperti ini:

var dicodingCat = Animal('', 2, 4.2);
dicodingCat.name = 'Gray';
dicodingCat.eat();



//Cascade operator ini sering kali menghemat langkah dalam membuat variabel sementara, sehingga kode yang kita tulis menjadi lebih ringkas.
Animal('', 2, 4.2)
..name = 'Gray'
..eat();


/* output
  Gray is eating.
 */


//Cascade notation juga akan sering kita temui pada builder pattern seperti ini:
final addressBook = (AddressBookBuilder()
  ..name = 'jenny'
  ..email = 'jenny@example.com'
  ..phone = '415-555-0100')
    .build();
