// Optional Parameters


// kita memiliki fungsi sebagai berikut :
void greetNewUser(String name, int age, bool isVerified)


// Satu satu nya cara untuk bisa memanggil fungsi diatas , sbb :
greetNewUser('Herdiyan', 26, true);


//Namun, Dart mendukung optional parameter, di mana kita tidak wajib mengisi parameter yang diminta oleh fungsi. Untuk bisa membuat parameter menjadi opsional, kita perlu memasukkannya ke dalam kurung siku seperti contoh berikut:

void greetNewUser([String name, int age, bool isVerified])



//Cara ini disebut dengan positional optional parameters. Dengan optional parameter seperti di atas kita bisa memanggil fungsi seperti berikut:
greetNewUser('Herdiyan', 26, true);
greetNewUser('Herdiyan', 26);
greetNewUser('Herdiyan');
greetNewUser();


//Setiap parameter yang tidak dimasukkan akan memiliki nilai null. Namun sejak versi 2.12, Dart memiliki fitur null safety di mana suatu variabel secara default tidak bisa memiliki nilai null. Solusinya, kita bisa menambahkan tanda tanya (?) setelah tipe data supaya bisa menyimpan nilai null atau memberikan nilai parameter default. Nilai ini akan digunakan jika kita tidak memasukkan parameternya.
void greetNewUser([String? name, int? age, bool isVerified = false ]) {}


//Dengan cara ini, urutan parameter masih perlu diperhatikan sehingga jika kita hanya ingin mengisi parameter terakhir, kita perlu mengisi parameter sebelumnya dengan null.
greetNewUser(null, null, true);


//Untuk mengatasi masalah di atas kita bisa memanfaatkan named optional parameters. Pada opsi ini kita menggunakan kurung kurawal pada parameter.
void greetNewUser({String? name, int? age, bool? isVerified})


//Dengan cara ini Anda bisa memasukkan parameter tanpa mempedulikan urutan parameter dengan menyebutkan nama parameternya.
greetNewUser(name: 'Herdiyan', age: 20, isVerified: true);
greetNewUser(name: 'Adam', age: 20);
greetNewUser(age: 20);
greetNewUser(isVerified: true);


//Perhatikan bahwa parameter ini bersifat opsional dan secara default akan bernilai null. Untuk memenuhi null safety, Anda bisa menggunakan cara seperti sebelumnya, atau menandai parameter wajib diisi dengan keyword required.
void greetNewUser({required String name, required int age, bool isVerified = false}) {}










