// Break & Continues
//Anda memiliki aplikasi yang menyimpan data 20 bilangan prima pertama. Pengguna dapat mencari bilangan prima lalu komputer akan menampilkan urutan berapa bilangan tersebut. Ketika bilangan prima tersebut sudah ditemukan tentunya komputer tidak perlu melanjutkan proses perulangan lagi. Nah, di sinilah kita bisa menggunakan break untuk menghentikan dan keluar dari proses iterasi.


void main() {
  // 20 bilangan prima pertama
  var primeNumbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71];
  stdout.write('Masukkan bilangan prima : ');
  var searchNumber = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < primeNumbers.length; i++) {
    if (searchNumber == primeNumbers[i]) {
      print('$searchNumber adalah bilangan prima ke-${i+1}');
      break;
    }
    print('$searchNumber != ${primeNumbers[i]}');
  }
}
//Ketika kode di atas dijalankan, proses iterasi akan dihentikan ketika angka yang diinputkan pengguna sama dengan bilangan prima yang dicari.


Masukkan bilangan prima : 13
13 != 2
13 != 3
13 != 5
13 != 7
13 != 11
13 adalah bilangan prima ke-6





//Keyword lain yang berguna pada proses perulangan adalah continue. Dengan continue kita bisa melewatkan proses iterasi dan lanjut ke proses iterasi berikutnya. Misalnya Anda ingin menampilkan angka 1 sampai 10 kecuali angka kelipatan 3. Anda dapat menuliskannya seperti berikut:

void breakContinue() {
  for (int i = 1; i <= 10; i++) {
    if (i % 3 == 0) {
      continue;
    }
    print(i);
  }
}

/*
output :
  1
  2
  4
  5
  7
  8
  10
*/