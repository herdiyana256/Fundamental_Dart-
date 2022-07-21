// Property & Methods

//Seperti yang telah disebutkan pada materi Class, property merepresentasikan atribut pada sebuah objek sementara method menggambarkan perilaku dari objek.

// Sama seperti variabel, kita mendeklarasikan property di dalam kelas dengan menentukan tipe datanya atau menginisialisasikan nilainya secara eksplisit.


// Example
// class Animal {
//     String _name = '';
//     int_age = 0;
//     double _weight = 0;
// }

//OOP memiliki konsep enkapsulasi di mana kita bisa menyembunyikan informasi di dalam objek sehingga status atau data di dalam objek tidak bisa diubah atau bahkan dilihat. Umumnya bahasa pemrograman memiliki visibility modifier untuk menentukan siapa saja yang bisa mengakses property atau method. Namun, Dart tidak memiliki keyword visibility modifier seperti private atau public. Bagaimana cara  mengatasinya?


//Jadikanlah class sebagai library lalu panggilah ia dengan keyword import. Untuk membuat class sebagai library Anda cukup membuat berkas baru, sehingga Anda akan memiliki 2 buah berkas:
// Example :
 import 'dart:io';

import 'oop_Class.dart';

void main () {
    var dicodingCat = Animal('Gray', 2, 4.2);


    dicodingCat.eat();
    dicodingCat.poop();
    print(dicodingCat.weight);
}


//Property yang private artinya hanya bisa diakses pada berkas atau library yang sama. Kita akan membutuhkan private property ini di saat kita tidak ingin objek diubah dari luar. Karena Dart tidak memiliki modifier private, sebagai gantinya kita perlu menambahkan underscore (_) sebelum nama property.
String _name = '';
int _age = 0;
double _weight = 0;



//Setelah menambahkan underscore pada nama variabel, Anda akan mendapatkan eror di berkas main.dart ketika mengakses property weight. Apa pasal? Kini  weight bersifat private dan tidak bisa diakses dari luar berkasnya. Solusinya, Anda bisa menambahkan setter dan getter untuk mendapatkan nilai serta mengubahnya dari luar berkas. Jika menggunakan IntelliJ IDEA Anda bisa menggunakan shortcut Alt + Insert lalu pilih Getter and Setter.
 // Example :

// Setter
set name (String value) {
    _name = value;
}


// Getter
double get weight => _weight;


//Selain dengan setter, Anda juga bisa mengubah nilai dengan property dari pemanggilan method. Pada contoh kelas hewan tentunya kita tidak bisa langsung mengubah nilai berat badan, namun kita bisa menambah dan mengubah nilainya melalui proses makan atau buang air besar (BAB).
void main () {
    print('$_name is eating.';
    _weight = _weight + 0.2;
}

    void poop(){
      print('$_name is pooping.');
      _weight = _weight - 0.1;
    }


    //Sehingga, keseluruhan kode pada berkas Animal.dart akan menjadi seperti berikut.

class Animal {
  String _name = '';
  int _age = 0;
  double _weight = 0;

  Animal(this._name, this._age, this._weight);

  // Setter
  set name(String value) {
    _name = value;
  }
  // Getter
  double get weight => _weight;

  void eat() {
    print('$_name is eating.');
    _weight = _weight + 0.2;
  }

  void sleep() {
    print('$_name is sleeping.');
  }

  void poop() {
    print('$_name is pooping.');
    _weight = _weight - 0.1;
  }
}
