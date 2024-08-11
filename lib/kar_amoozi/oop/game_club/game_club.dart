import 'game.dart';

class GameClub {
  static List<Game> _games = [];

  List<Game> get games => _games;

  void addGame({required Game game}) {
    _games.add(game);
  }

  void showGamesList() {
    for (int i = 0; i < _games.length; i++) {
      print('${i + 1}-${_games[i]}');
    }
  }
}
