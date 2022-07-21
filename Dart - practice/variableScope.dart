// Variable Scope -> Variabel Scope (atau ruang lingkup variabel) adalah jangkauan kode program dimana perintah program masih bisa mengakses sebuah variabel.

// Penjelasan : Jika kita mendefenisikan sebuah variabel pada satu file PHP, maka variabel tersebut dapat diakses oleh seluruh kode program pada halaman yang sama. Namun jika variabel tersebut di defenisikan di dalam sebuah fungsi, variabel itu belum tentu bisa diakses dari luar fungsi tersebut. Hal inilah yang dimaksud dengan Variabel Scope.


//Lingkup ini menentukan bagian kode mana yang dapat membaca dan menggunakan variabel tersebut.
// example :

// void main () {
//     var isAvailableForDiscount = true;
//     var price = 3000000;
//     var discount = 0;
//     if(isAvailableForDiscount) {
//         discount = 5000000;
//     }
//     print('You need to Pay: ${price - discount}');
// }




//Pada kode di atas variabel discount masih bisa diakses dari dalam kode if karena masih berada di dalam satu scope fungsi main(). Bagaimana jika Anda ingin memisahkan kode di atas menjadi dua fungsi untuk menghitung diskonnya?
// void main () {
//         var price = 3000000;
//         var discount = checkDiscount(price);
//             print('You need to pay: ${price - discount}');
// }
//
//     num checkDiscount(num price ) {
//         num discount = 0;
//             if(price >= 1000000) {
//                     discount = 10 / 100 * price;
//             }
//             return discount;
//     } // 27000000


    //Variabel discount dideklarasikan pada fungsi checkDiscount() sehingga memiliki scope pada fungsi tersebut dan menyebabkan eror pada fungsi main(). Maka untuk mengatasinya kita tetap perlu membuat variabel di kedua fungsi.





  //Selain berada dalam lingkup fungsi, suatu variabel juga bisa menjadi variabel global, yaitu variabel yang dideklarasikan di luar blok kode apa pun. Variabel ini bisa diakses di mana pun selama masih berada di berkas yang sama.
var price = 30000;


void main () {
        var discount = checkDiscount(price);
        print('You Need to pay: ${price - discount}');
}

    num checkDiscount(num price) {
        num discount = 0;
            if(price >= 10000) {
                    discount = 10 / 100 * price;
            }

                return discount;
            //You Need to pay: 27000.0
    }


//Variabel juga dapat memiliki scope yang sespesifik mungkin hingga ke level control flow.
num checkDiscount(num price) {
  num discount = 0;
  if (!discountApplied) { // Error
    if (price >= 100000) {
      discount = 10 / 100 * price;
      var discountApplied = true;
    }
  }

  return discount;
}



