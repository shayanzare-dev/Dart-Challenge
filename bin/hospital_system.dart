import 'dart:io';

int? turnTime;
int? turnNumber;
int? hoursWork;
int? startTime;
void main() {
  getHospitalWatch();
  computing(turnNumber!, turnTime!, hoursWork!);
}

void getHospitalWatch() {
  int? endTime;
  print("start time:");
  startTime = int.tryParse(stdin.readLineSync()!);
  print("end time:");
  endTime = int.tryParse(stdin.readLineSync()!);
  if ((startTime! > 0 && startTime! < 24) &&
      (endTime! > 0 && endTime < 24 && endTime > startTime!)) {
    startTime = startTime;
    endTime = endTime;
    hoursWork = endTime - startTime!;
    print("hours work = $hoursWork");
  } else {
    print("ساعت مجاز کاری بین 1 تا 23 هست");
  }
  getTurnTime(hoursWork!);
  getTurnNumber();
}

void getTurnTime(int hoursWork) {
  print("میزان ساعت هر نوبت:");
  turnTime = int.tryParse(stdin.readLineSync()!);
  if (turnTime! <= hoursWork) {
    turnTime = turnTime;
  } else {
    print("بالا تر از حد ساعت کاری وارد کردین");
  }
}

void getTurnNumber() {
  print("نوبت چندی؟:");
  turnNumber = int.tryParse(stdin.readLineSync()!);
}

void computing(int turnNumber, int turnTime, int hoursWork ) {
  int math;
  int a;
  math = turnNumber * turnTime;
  print("ساعت ویزیت نشده $math");
  for (int i = 0;; i++) {
    if (math <= hoursWork) {
      a = startTime! + math;
      print("و در ساعت $a تشریف$iروز دیگر تشریف بیاورید");
      break;
    } else {
      math = math - hoursWork;
    }
  }
}
