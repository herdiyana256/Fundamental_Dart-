// Constructor
/*
Ketika suatu objek dibuat, semua properti pada kelas tersebut harus memiliki nilai. Kita dapat langsung menginisialisasi pada properti tertentu atau menginisialisasinya melalui constructor. Constructor adalah fungsi spesial dari sebuah kelas yang digunakan untuk membuat objek.

Sesuai namanya, constructor digunakan untuk mengonstruksi objek baru.

Jadi kenapa constructor disebut sebagai fungsi yang spesial? Apa bedanya dengan fungsi lain pada class? Beberapa perbedaan antara constructor dan fungsi biasa adalah:

Constructor memiliki nama yang sama dengan nama kelas.
Constructor tidak memiliki nilai kembalian (return type).
Constructor akan secara otomatis dipanggil ketika sebuah objek dibuat.
Jika kita tidak mendefinisikan constructor, default constructor tanpa argumen akan dibuat.
Pada materi sebelumnya, secara tidak langsung Anda telah belajar membuat constructor yang menerima beberapa argumen. Namun, secara default sebuah constructor pada kelas tidak menerima argumen apapun. Sebagai contoh pada kelas Animal akan menjadi seperti berikut:
 */


class Animal {
    String name = '';
    int age = 0;
    double weight = 0;
}



//Untuk membuat objek baru dari kelas tersebut, Anda tidak perlu memberikan argumen apapun.
var dicodingCat = Animal();


/*
Karena kita tidak memasukkan nilai ketika membuat objek, maka nilai default dari properti atau variabel akan digunakan. Anda perlu berhati-hati jika tidak memberikan nilai pada properti, karena akan membuat properti bernilai null sehingga bisa menyebabkan eror.

Untuk memberikan nilai pada properti, silakan akses properti yang ada di dalam sebuah kelas.
 */
var dicodingCat = Animal();
dicodingCat.name = 'Gray';
dicodingCat.age = 2;
dicodingCat.weight = 4.2;


//Dengan membuat constructor, kita tidak hanya bisa menginisialisasikan nilai namun juga menjalankan instruksi tertentu ketika objek dibuat.

Animal(String name, int age, double weight) {
  this.name = name;
  this.age = age;
  this.weight = weight;
  // other instructions
}




//Keyword this di atas menunjuk pada objek yang ada di kelas tersebut. Keyword this ini umumnya digunakan untuk menghindari ambiguitas antara atribut dari class dan parameter yang memiliki nama yang sama.
//
// Jika constructor hanya digunakan untuk menginisialisasi nilai properti, maka kode konstruktor dapat diringkas menjadi seperti berikut:
Animal(this.name, this.age, this.weight);


//====================================================================================================



/*
Named Constructor
Pada beberapa kasus kita mungkin akan membutuhkan beberapa constructor untuk skenario yang berbeda-beda. Pada situasi ini kita bisa memanfaatkan named constructor.

Dengan menggunakan named constructor, kita dapat membuat beberapa constructor pada kelas yang sama. Setiap constructor akan memiliki nama yang unik.
 */

class_name.constructor_name (arguments){
// Statements
}


//Contoh pada class Animal adalah seperti berikut:
Class Animal {
...
Animal.Name(this._name);
Animal.Age(this._age);
Animal.Weight(this._weight);
...
}

