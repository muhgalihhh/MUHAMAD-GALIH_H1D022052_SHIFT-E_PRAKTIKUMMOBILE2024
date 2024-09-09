// eksepsi dalam Dart digunakan untuk menangani kesalahan yang terjadi saat program dijalankan.

void main() {
  try {
    int a = 5 ~/ 0;
    print(a);
  } on UnsupportedError {
    print('Operasi tidak didukung');
  }

  try {
    int a = 5 ~/ 0;
    print(a);
  } catch (e) {
    print('Terjadi kesalahan: $e');
  }
}


// penjelasan kode di atas:
// try = blok kode yang akan dijalankan.
// catch = blok kode yang akan dijalankan jika terjadi kesalahan pada blok try.
