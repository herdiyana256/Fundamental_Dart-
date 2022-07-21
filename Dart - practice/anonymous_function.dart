// Anonymous Functions
// Masih ingatkah Anda dengan materi function dan cara membuatnya? Seperti yang kita tahu, untuk mendeklarasikan sebuah fungsi kita perlu mendefinisikan nilai kembalian dan juga nama fungsinya.

int sum (int num1, int num2) {
    return num1 + num2;
}

//Kebanyakan fungsi pada Dart memiliki nama seperti sum(), main(), atau print(). Pada Dart kita bisa membuat fungsi yang tidak bernama alias nameless atau anonymous. Anonymous function ini juga dikenal dengan nama lambda.


// Untuk membuat lambda atau anonymous function kita cukup menuliskan tanda kurung untuk menerima parameter dan body function-nya.
void main() {
      (int num1, int num2) {
    return num1 + num2;
  };
}



//Lalu bagaimana kita bisa menggunakan fungsi tersebut? Seperti yang telah dijelaskan sebelumnya bahwa function adalah first-class citizen, maka fungsi juga merupakan sebuah objek yang bisa disimpan ke dalam variabel. Kita bisa menggunakan keyword var atau secara eksplisit menggunakan tipe data Function.
void main() {
  var sum = (int num1, int num2) {
    return num1 + num2;
  };

  Function printLambda = () {
    print('This is lambda function');
  };
}


//Untuk memanggilnya kita bisa langsung memanggil nama variabelnya seperti berikut:
printLambda();
print(sum(3,4));


//Selain itu lambda juga mendukung function expression untuk membuat kode fungsi menjadi lebih ringkas dengan memanfaatkan fat arrow (=>).
var sum = (int num1, int num2) => num1 + num2;
Function printLambda = () => print('This is lambda function');