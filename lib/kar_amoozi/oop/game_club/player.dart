import '../safe_number_get_input.dart';
import 'game_club.dart';

class Player {
  static int idCount = 0;
  final String name;
  final int id;

  Player({required this.name}) : id = ++idCount;

  int showMenu() {
    int chooseMenu = safeGetNumber(printValue: '''  
   1-play
   2-exit''');
    return chooseMenu;
  }

  void playGame() {
    int chooseMenu = showMenu();
    if (chooseMenu == 1) {
      final GameClub gameClub = GameClub();
      gameClub.showGamesList();
      final int gameChoose = safeGetNumber(printValue: 'which one?:');
      if (gameChoose > 0 && gameChoose <= gameClub.games.length) {
        print('you are playing ${gameClub.games[gameChoose - 1].name} now!');
        print('description => ${gameClub.games[gameChoose - 1].Description}');
        chooseMenu = safeGetNumber(
            printValue: 'would you like to say description game?:(1-yes,2-no)');
        chooseMenu == 1
            ? print(
                'description => ${gameClub.games[gameChoose - 1].Description}')
            : null;
      } else {
        print('please valid number!');
      }
    } else {
      return;
    }
  }
}
