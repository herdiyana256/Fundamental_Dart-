// Function Parameters -> Pada beberapa kasus fungsi bisa memerlukan input data untuk diproses. Input data ini kita kenal sebagai parameter. Untuk menambahkan parameter ke dalam fungsi, kita bisa memasukkannya ke dalam tanda kurung. Sebuah fungsi bisa menerima nol, satu, atau beberapa parameter.

// Contoh penggunaan parameter pada fungsi print()
// print('Hello World!');


//Berikut ini adalah contoh fungsi dengan dua parameter:
import 'functions.dart';

void main () {
    greet('Universitas Saintek Muhammadiyah', 2021); //
}

void greet(String name, int bornYear) {
    var age = 2022 - bornYear;
    print('Hello, $name! Tahun ini adalah dimana kampus kita menjadi Universitas di $age tahun  silam');
    //Hello, Universitas Saintek Muhammadiyah! Tahun ini adalah dimana kampus kita menjadi Universitas di 1 tahun  silam




  //Sebuah fungsi juga bisa menghasilkan output atau mengembalikan nilai. Fungsi yang mengembalikan nilai ditandai dengan definisi return type selain void dan memiliki keyword return. Contohnya seperti berikut:
  
void main () {
    var firstNumber = 7;
    var secondNumber = 10;
    print('Rata-rata dari $firstNumber & $secondNumber adalah ${average(firstNumber, secondNumber)}');
}

    double average(num num1, num num2) => (num1 + num2) / 2;
    void greeting() => print('Hello');

//Jika fungsi hanya memiliki satu baris kode atau instruksi di dalamnya, maka bisa disingkat dengan anotasi =>. Ini juga dikenal dengan nama arrow syntax.
//double average(num num1, num num2 ) => (num1 + num2)
  // void greeting() => print('Hello');

}



