import 'dart:math';

class MemberShipData {
  static final List<int> memberShipCodes = [];

  static int generateMemberShipCode() {
    while (true) {
      String result = '';
      for (int i = 1; i <= 6; i++) {
        final int random = Random().nextInt(9);
        result += '$random';
      }
      if (!(memberShipCodes.contains(result))) {
        int resultNumber = int.parse(result);
        memberShipCodes.add(resultNumber);
        return resultNumber;
      } else {
        continue;
      }
    }
  }
}
