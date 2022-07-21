/*
Enumerated Types
Bagaimana kita bisa menyimpan banyak nilai konstan di satu tempat dan menanganinya secara bersamaan? Solusinya, Dart menyediakan Enumerated Type, sering disebut Enumerations atau Enums. Enums mewakili kumpulan konstan yang membuat kode kita lebih jelas dan mudah dibaca.
 */

enum Rainbow {
  red, orange, yellow, green, blue, indigo, violet
}

enum Weather {
  sunny, cloudy, rain, storm;
}


// Enums pada Dart memiliki beberapa properti bawaan yang dapat kita gunakan untuk menampilkan seluruh nilai dalam bentuk list serta menampilkan item dan indeks dari item tersebut.
print(Rainbow.values);
print(Rainbow.blue);
print(Rainbow.orange.index);


//Ketika kode di atas dijalankan, maka konsol akan tampil seperti berikut:
[Rainbow.red, Rainbow.orange, Rainbow.yellow, Rainbow.green, Rainbow.blue, Rainbow.indigo, Rainbow.violet]
Rainbow.blue
1


    //Semenjak Dart versi 2.15, Enums memiliki properti baru untuk menampilkan nilai String setiap itemnya [3]. Anda dapat gunakan properti .name.
print(Rainbow.blue.name);   // blue



//Kita juga bisa menggunakan enums ke dalam switch statements. Namun kita perlu menangani semua kemungkinan nilai enums yang Ada.
var weatherForecast = Weather.cloudy;

switch(weatherForecast) {
case Weather.sunny:
print("Today's weather forecast is sunny");
break;
case Weather.cloudy:
print("Today's weather forecast is cloudy");
break;
case Weather.rain:
print("Today's weather forecast is rain");
break;
case Weather.storm:
print("Today's weather forecast is storm");
break;


//Dengan kecanggihan fitur yang disediakan oleh Enums, Dart versi 2.17 rilis dengan fitur baru [4]. Enums mempunyai fitur layaknya kelas yang memiliki attribute dan behaviour. Dengan begitu, kita dapat memberikan variabel ataupun constructor di dalam Enums.

enum Weather {
sunny(15),
cloudy(34),
rain(69),
storm(83);

final int rainAmount;

const Weather(this.rainAmount);
}



//Dengan kehadiran variabel di dalam Enums, kita dapat akses attribute rainAmount dengan cara seperti berikut.
print(Weather.rain.rainAmount);


//Selain itu, kita dapat melakukan override method toString(). Dengan begitu, kita dapat mengonversi teks sesuai dengan apa yang diinginkan.

enum Weather {
…

@override
String toString() => "Today's weather forecast is $name with a $rainAmount% chance of rain";
}



//Untuk menjalankannya, Anda dapat jalankan perintah berikut.
print(Weather.cloudy.toString());
// atau
print(Weather.cloudy)

