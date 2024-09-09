import 'dart:io';
import 'dart:math';

// Class untuk game Suit
class SuitGame {
  List<String> options = ['Gunting', 'Batu', 'Kertas'];

  void playGame() {
    String playerChoice = getPlayerChoice();
    String computerChoice = getComputerChoice();

    print('\nPilihan Pemain: $playerChoice');
    print('Pilihan Komputer: $computerChoice');

    determineWinner(playerChoice, computerChoice);
  }

  String getPlayerChoice() {
    print('\nPilih salah satu: Gunting, Batu, atau Kertas');
    String? choice = stdin.readLineSync();

    if (choice != null && options.contains(choice)) {
      return choice;
    } else {
      print('Pilihan tidak valid, coba lagi.');
      return getPlayerChoice();
    }
  }

  String getComputerChoice() {
    Random random = Random();
    return options[random.nextInt(3)];
  }

  void determineWinner(String player, String computer) {
    if (player == computer) {
      print('Hasil: Seri!');
    } else if ((player == 'Gunting' && computer == 'Kertas') ||
        (player == 'Batu' && computer == 'Gunting') ||
        (player == 'Kertas' && computer == 'Batu')) {
      print('Hasil: Kamu Menang!');
    } else {
      print('Hasil: Komputer Menang!');
    }
  }
}

// Class untuk tampilan menu
class MainMenu {
  void showMenu() {
    print('--- Menu ---');
    print('1. Mulai Game');
    print('2. About');
    print('3. Exit');
  }

  void start() {
    bool exit = false;
    while (!exit) {
      showMenu();
      stdout.write('Pilih opsi: ');
      String? choice = stdin.readLineSync();

      switch (choice) {
        case '1':
          SuitGame suitGame = SuitGame();
          suitGame.playGame();
          break;
        case '2':
          showAbout();
          break;
        case '3':
          print('Terima kasih sudah bermain.');
          exit = true;
          break;
        default:
          print('Pilihan tidak valid. Coba lagi.');
      }
    }
  }

  void showAbout() {
    print('--- About ---');
    print('Suit Game (Gunting, Batu, Kertas) adalah permainan klasik.');
    print('Dibuat menggunakan bahasa pemrograman Dart.');
    print('Pengembang: MUHAMAD GALIH');
    print('NIM: H1D022052');
    print('Mata Kuliah: Praktikum Pemrograman Mobile');
    print('Shift: E');
    print('----------------');
  }
}

// Fungsi utama
void main() {
  MainMenu mainMenu = MainMenu();
  mainMenu.start();
}
