// Functions -> Functions pada Dart digunakan untuk menghasilkan output berdasarkan input tertentu yang diberikan, selain itu juga sebagai blok kode atau prosedur yang dapat digunakan kembali. Sadar atau tidak, sebenarnya kita telah mengimplementasikan beberapa functions pada kode kita. Semua program Dart dimulai dari fungsi main(). main() adalah contoh fungsi utama yang selalu kita gunakan. Selain itu, print() juga termasuk fungsi.
// Example Basic ->
//print('Hello Brow!');


//Fungsi print() akan mengambil nilai String atau objek lainnya dan menampilkannya ke konsol. Untuk mencetak sesuatu ke konsol sebenarnya dibutuhkan beberapa instruksi yang lebih low-level, namun kita menjadi sangat terbantu dengan adanya fungsi print() ini dan dapat menggunakannya secara berulang.


//Untuk mendeklarasikan fungsi, caranya sama dengan penulisan fungsi main() yaitu dengan menentukan tipe nilai balik atau return value lalu nama fungsi dan parameter inputnya.

// returnType functionName (type param1, type param2, ...) {
//     return result;
// }


// Note : Setiap fungsi Dart selalu mengembalikan nilai. Namun ada satu tipe data khusus yang bisa kita lihat pada fungsi main yaitu return type void. Keyword void berarti fungsi tersebut tidak menghasilkan output atau nilai kembali. Biasanya fungsi seperti ini digunakan untuk kumpulan instruksi atau prosedur yang berulang dan sering digunakan.


//Setelah fungsi dibuat, selanjutnya kita bisa memanggilnya pada fungsi main() atau pada bagian program lain yang Anda inginkan.
void main () {
    greet(); // output : Hello!
}

void greet() {
    print('Hello!'); // Hello!


// Note : Pada contoh sederhana di atas fungsi greet() memang belum menghemat banyak kode yang Anda tulis. Namun, apabila Anda memiliki 30 instruksi greet dan ternyata versi terbaru aplikasi Anda memerlukan perubahan teks yang ditampilkan, Anda cukup ubah satu baris kode saja, tak perlu 30 baris kode yang berbeda. Selain itu, jika Anda memiliki kode yang cukup panjang akan lebih baik jika kode tersebut dimasukkan ke dalam fungsi supaya lebih mudah dibaca.






}