
// Inheritance

/*
Beberapa objek bisa memiliki beberapa karakteristik atau perilaku yang sama, namun sebenarnya mereka bukanlah objek yang sama. Di sini hadirlah peran inheritance atau pewarisan. Apa definisi keduanya? Inheritance adalah kemampuan suatu program untuk membuat kelas baru dari kelas yang ada. Konsep inheritance ini bisa dibayangkan layaknya seorang anak mewarisi sifat dari orang tuanya. Di dalam OOP kelas yang menurunkan sifat disebut sebagai kelas induk (parent class/superclass) sementara kelas yang mewarisi kelas induknya disebut sebagai kelas anak (child class/subclass).

Yuk kembali lagi pada contoh objek kucing. Selain kucing ada jenis hewan lain yang bersifat sama. Misalnya ikan dan burung juga memiliki nama, berat, dan umur. Selain itu mereka juga melakukan aktivitas seperti makan dan tidur. Yang membedakan objek tersebut adalah cara mereka bernafas dan bergerak. Untuk lebih memahami, perhatikanlah tabel kelas berikut:
 */

/*
Cat	Fish	Bird
+ name
+ weight
+ age
+ furColor	+ name
+ weight
+ age
+ skinColor	+ name
+ weight
+ age
+ featherColor
- eat()
- sleep()
- poop()
- walk()	- eat()
- sleep()
- poop()
- swim()	- eat()
- sleep()
- poop()
- fly()
Bisa kita lihat pada tabel di atas bahwa objek Cat, Fish, dan Bird memiliki beberapa property dan method yang sama seperti name, weight, age, eat(), dan sleep().

Dibandingkan membuat 3 kelas dan menuliskan ulang properti yang sama, kita bisa memanfaatkan teknik inheritance dengan mengelompokkan properti dan fungsi yang sama. Caranya buat sebuah kelas baru yang nantinya akan diturunkan sifatnya.

Animal
+ name
+ weight
+age
- eat()
- sleep()
- poop()
Cat	Fish	Bird
+ furColor	+ skinColor	+ featherColor
- walk()	- swim()	- fly()

 */
//Setelah membuat kelas Animal, kita dapat membuat kelas lainnya lalu melakukan extends ke kelas induknya. Untuk menerapkan inheritance gunakan keyword extends seperti contoh berikut:

class ChildClass extends ParentClass {

}


//----------------------------------------------------------------------------------

import 'dart:io';


import '../constructor.dart';

class Cat Extends Animal {
  late String furColor;

  Cat(String name, int age, double weight, String furColor) : ) : super(name, age, weight) {
this.furColor = furColor;
}

void walk() {
  print('$name is walking');
}

}

//Karena kelas Cat adalah turunan dari kelas Animal, maka kita bisa mengakses sifat dan perilaku dari Animal melalui kelas Cat.
import 'Cat.dart';

void main() {
  var dicodingCat = Cat('Grayson', 2, 2.2, 'Gray');
  dicodingCat.walk();
  dicodingCat.eat();
  print(dicodingCat.weight);
}

/*
Output :
  Grayson is walking
  Grayson is eating.
  2.4000000000000004
 */