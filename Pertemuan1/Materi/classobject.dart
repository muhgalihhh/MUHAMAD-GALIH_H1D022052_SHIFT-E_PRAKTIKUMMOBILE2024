class Mahasiswa {
  String nama;
  int usia;
  Mahasiswa(this.nama, this.usia);

  void perkenalan() {
    print('Halo, nama saya $nama. Usia saya $usia tahun.');
  }
}

void main() {
  Mahasiswa mahasiswa = Mahasiswa('Muhamad Galih', 20);
  mahasiswa.perkenalan();
}
