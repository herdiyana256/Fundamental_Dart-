void main () {
    var greetings = 'Hello Dart';
    print(greetings);
//Pada contoh kode di atas kita memasukkan data berupa teks ke dalam variabel. Lalu, bagaimana dengan data numerik atau berupa angka? Tentu saja bisa. Anda cukup menginisialisasi variabel dengan nilai angka.

    // Numerik
    var myAge= 26;
    print(myAge);

    //Lalu bagaimana jika kita ingin membuat variabel namun tidak ingin langsung menginisialisasinya? Misalnya Anda ingin menunggu beberapa operasi selesai lalu menginisialisasinya ke dalam variabel.
   //Proses ini disebut dengan deklarasi variabel. Deklarasi variabel akan menyimpan nama dan ruang di dalam memori tanpa memberikan nilai. Anda dapat menginisialisasi nilai setelah deklarasi sesuai dengan kebutuhan Anda.
    var myAge;
    myAge = 26;
    print(myAge);
    // output : 26

    //Apakah konsol Anda menampilkan null? Setiap deklarasi variabel akan memberikan nilai default berupa null. Ini berarti variabel tersebut belum terinisialisasi atau bisa dibilang variabel Anda tidak memiliki nilai atau null.

}


