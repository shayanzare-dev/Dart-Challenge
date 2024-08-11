import 'package:project/kar_amoozi/oop/game_club/game.dart';

import '../safe_number_get_input.dart';
import 'game_club.dart';
import 'player.dart';

void main() {
  final GameClub gameClub = GameClub();
  int choose;

  while (true) {
    choose = safeGetNumber(printValue: '''
  which item do you choose?:
  1- add game
  2- show all games 
  3- play game
  4-exit''');
    switch (choose) {
      case 1:
        gameClub.addGame(
            game: Game(name: 'bA', Description: 'this is a good game'));
        break;
      case 2:
        gameClub.showGamesList();
        break;
      case 3:
        final Player player = Player(name: 'shayan');
        player.playGame();
        break;
      case 4:
        return;
    }
  }
}
