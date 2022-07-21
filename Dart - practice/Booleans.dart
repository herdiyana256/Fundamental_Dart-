// Booleans
/*
Nama boolean ini diambil dari nama seorang matematikawan asal Inggris yang bernama George Boole. Beliau dikenal karena penciptaan aljabar boolean, yakni cabang aljabar di mana nilai variabel selalu benar atau salah.

Boolean pada Dart dideklarasikan dengan kata kunci bool. Sesuai dengan penjelasan di atas, variabel boolean hanya bisa menyimpan dua nilai, yaitu true dan false.
 */

//example code :
void main () {
    bool alwaysTrue = true; // true
    var alwaysFalse = false; // false
    var notTrue = !true; // akan menjadi false
    bool notFalse = !false; // true
  print(alwaysTrue);
    print(alwaysFalse);
    print(notTrue);
    print(notFalse);

//Tanda ! di atas disebut dengan operator “not” atau “bang”. Operator ini berfungsi untuk menegasikan nilai boolean, sederhananya membalik nilai boolean. Misalnya !true sama saja bernilai false.



//Kita akan banyak menggunakan boolean dalam pengembangan aplikasi untuk operasi perbandingan dan juga pengondisian aplikasi.


  if(true) {
    print("It's true");
}else {
      print("It's False");
  }

}
