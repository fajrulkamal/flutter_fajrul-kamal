var nama = 'Fajrul Kamal';

/* jangan bermalas-malasan
 * mantap
 * wkwk
 
*/
String jeniskelamin = 'Laki-laki';
bool sekolah = true;
int nim = 21060120130082;
double beratbadan = 58.9;

// class Tipedata{
//   var uangsaku = 50000;
//   int nim = 21060120130082;
//   String domisili = "Semarang";
//   double beratbadan = 58.9;
// }

//Rumus dan variabel untuk keliling segitiga sama sisi
int sisi_a = 18;
var keliling_segitiga = 3 * sisi_a;

//Rumus dan variable untuk keliling persegi panjang
int lebar = 128;
int panjang = 100;
var keliling_p_panjang = 2 * (lebar + panjang);





void main() {
  for (int i = 0; i < 1; i++) {
    print('Hello orang ${i + 1}');
    print('Saya $nama dengan $nim');
    print('Jenis kelamin saya $jeniskelamin dengan berat badan $beratbadan Kg');
    print('Apakah saya seorang pelajar? $sekolah');
    
    print('Keliling segitiga = $keliling_segitiga');
    print('Keliling persegi panjang = $keliling_p_panjang');
  }
}