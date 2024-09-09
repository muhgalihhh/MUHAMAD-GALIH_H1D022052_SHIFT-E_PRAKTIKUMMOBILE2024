Future<void> main() async {
  print('Memulai pemrosean data...');
  await prosesData();
  print('Selesai pemrosean data...');
}

Future<void> prosesData() async {
  await Future.delayed(Duration(seconds: 3));
  print('Data berhasil diproses!');
}
