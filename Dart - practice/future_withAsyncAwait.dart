Future dengan async-await
Pada materi sebelumnya kita telah mempelajari Future untuk berurusan dengan proses asynchronous. Seperti yang kita tahu, penulisan kode asynchronous akan sedikit berbeda dengan proses synchronous. Contohnya program pesan kopi kita sebelumnya jika dituliskan secara asynchronous akan seperti berikut:

2020033111050081b9f735708c1036c2bbb0892ab68b38.jpeg

Dart memiliki keyword async dan await yang merupakan sebuah alternatif supaya kita bisa menuliskan proses asynchronous layaknya proses synchronous. Bagaimana caranya?

Dengan gaya penulisan synchronous, kira-kira kode program pesan kopi kita akan seperti berikut:

void main() {
  print('Getting your order...');
  var order = getOrder();
  print('You order: $order');
}
Namun ketika kode di atas dijalankan hasilnya tidak akan sesuai yang kita harapkan karena fungsi getOrder() merupakan objek Future.

Getting your order...
You order: Instance of 'Future<String>'
Output ini disebabkan karena fungsi main() masih merupakan fungsi synchronous. Untuk mengubahnya menjadi fungsi asynchronous tambahkan keyword async sebelum function body.

void main() async { … }
Kemudian tambahkan keyword await sebelum fungsi yang mengembalikan nilai Future.

var order = await getOrder();
Dari perubahan di atas yang memanfaatkan async-await kita telah berhasil menuliskan proses asynchronous dengan gaya synchronous.

void main() async {
  print('Getting your order...');
  var order = await getOrder();
  print('You order: $order');
}


/*
  Output :
  Getting your order...
  You order: Coffee Boba
*/
Lalu bagaimana menangani ketika terjadi eror? Caranya cukup sederhana yaitu dengan memanfaatkan try-catch:

void main() async {
  print('Getting your order...');
  try {
    var order = await getOrder();
    print('You order: $order');
  } catch (error) {
    print('Sorry. $error');
  } finally {
    print('Thank you');
  }
}
Begitu juga seperti yang telah disebutkan, method whenComplete() bisa digantikan dengan blok finally. Sehingga keseluruhan kode akan menjadi seperti berikut:

20200331110937ec96183151b69f4e8243f18fb7a5516d.jpeg