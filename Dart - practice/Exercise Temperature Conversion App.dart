//Latihan Aplikasi Konversi Suhu

//Alur aplikasi konversi suhu kita akan seperti berikut:
// Menerima input suhu fahrenheit dari pengguna.
// Melakukan konversi sesuai rumus.
// Menampilkan hasil konversi.

// Flowchar : Start -> Output: Masukan suhu dalam fahrenheit -> Input : num fahrenheit -> celcius = (fahrenheit - 32) * 5/ 9 -> Output : $fahrenheit derajat Fahrenheit = $celcius derajat celcius -> END :

import 'dart:io';

void main () {
    stdout.write('Masukkan suhu dalam Fahrenheit: ');
    var fahrenheit = num.parse(stdin.readLineSync()!);

    var celcius = (fahrenheit - 32 ) * 5 / 9;
    print('$fahrenheit derajat Fahrenheit = $celcius derajat Celcius');

    // Output : Apabila kita memasukan angka suhu farenheit : 12 maka -> Masukkan suhu dalam Fahrenheit: 12
  // 12 derajat Fahrenheit = -11.11111111111111 derajat Celciu
}