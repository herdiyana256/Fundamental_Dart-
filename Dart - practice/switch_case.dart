// Switch & Case
//Switch case adalah suatu bentuk kondisi percabangan dimana jika suatu kondisi benar(true), maka blok kode bernilai true akan dijalankan.
//
// Switch case ini hampir sama dengan percabangan yang lain yaitu if else, hanya saja penggunaan switch case untuk mengecek data yang bertipe karakter dan integer.
//
// Sementara pada if else pengecekan bisa dengan (<,>,==), yang sudah saya bahas komparasi. Itulah yang membedakan mereka walau bentuknya percabangan.
//
// Pada percabangan switch case, switch digunakan untuk menyeleksi suatu kondisi biasanya memasukkan variable misal switch(nama_variabel){}.
//
// Dan case digunakan sebagai kondisi-kondisi atau kasus-kasusnya. Jika suatu kondisi bernilai true maka blok yang true akan ditampilkan, misalnya seperti ini saya mempunyai switch(angka){} dan sebelumnya saya suruh user untuk memasukkan angka bebas.



//Dart mendukung statement switch untuk melakukan pengecekan banyak kondisi dengan lebih mudah dan ringkas.
switch (variable/expression) {
case value1:
// do something
break;
case value2:
// do something
break;
...
...
default:
// do something else
}




/*
Tanda kurung setelah keyword switch berisi variabel atau ekspresi yang akan dievaluasi. Kemudian untuk setiap kondisi yang mungkin terjadi kita masukkan keyword case diikuti dengan nilai yang valid. Jika kondisi pada case sama dengan variabel pada switch, maka blok kode setelah titik dua (:) akan dijalankan. Keyword break digunakan untuk keluar dari proses switch. Terdapat satu case bernama default yang memiliki fungsi yang sama dengan keyword else pada control flow if-else. Jika tidak ada nilai yang sama dengan variabel pada switch maka blok kode ini akan dijalankan.

Berikut ini adalah contoh aplikasi kalkulator yang menerapkan switch-case.
 */
stdout.write('Masukkan angka pertama : ');
var firstNumber = num.parse(stdin.readLineSync()!);
stdout.write('Masukkan operator [ + | - | * | / ] : ');
var operator = stdin.readLineSync();
stdout.write('Masukkan angka kedua : ');
var secondNumber = num.parse(stdin.readLineSync()!);

switch (operator) {
case '+':
print('$firstNumber $operator $secondNumber = ${firstNumber + secondNumber}');
break;
case '-':
print('$firstNumber $operator $secondNumber = ${firstNumber - secondNumber}');
break;
case '*':
print('$firstNumber $operator $secondNumber = ${firstNumber * secondNumber}');
break;
case '/':
print('$firstNumber $operator $secondNumber = ${firstNumber / secondNumber}');
break;
default:
print('Operator tidak ditemukan');
}


