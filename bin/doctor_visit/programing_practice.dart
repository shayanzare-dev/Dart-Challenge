// functional
// use List
import 'dart:io';

List<int> fullTimes = [];
List<int> emptyTimes = [];
daysOfWeek? resultDay = null;

void main() {
  print('start time');
  int? timeStart = int.tryParse(stdin.readLineSync()!);

  print('finish time');
  int? timeFinish = int.tryParse(stdin.readLineSync()!);

  int hours = getHoursAppointment();
  int numbers = getNumbersAppointment();
  double workingTime = (timeFinish! - timeStart!) / hours;
  calculateTimeVisits(hours, timeFinish - timeStart);
  resultDay = calculateDaysVisit(numbers: numbers, workingTime: workingTime);
  print(resultDay?.name ?? 'valid insert appointment number!');
}

int getHoursAppointment() {
  print('how time for appointment:(1- one hour ,2- two hours');
  int? timeAppointment = int.tryParse(stdin.readLineSync()!);
  return timeAppointment ?? 1;
}

int getNumbersAppointment() {
  print('what is your appointment number?:');
  int? patientAppointment = int.tryParse(stdin.readLineSync()!);
  return patientAppointment!;
}

daysOfWeek? calculateDaysVisit(
    {required int numbers, required double workingTime}) {
  if (numbers <= workingTime) {
    resultDay = daysOfWeek.today;
  } else if (numbers > workingTime) {
    var a1 = numbers - workingTime;
    if (a1 <= workingTime) {
      resultDay = daysOfWeek.tomorrow;
    } else if (a1 > workingTime) {
      a1 = a1 - workingTime;
      if (a1 <= workingTime) {
        resultDay = daysOfWeek.afterTomorrow;
      } else if (a1 > workingTime) {
        a1 = a1 - workingTime;
        if (a1 <= workingTime) {
          resultDay = daysOfWeek.threeMoreDays;
        }
      }
    }
  }
  return resultDay;
}

void calculateTimeVisits(int anyVisitTime, int workingTime) {
  for (int i = anyVisitTime; i <= workingTime; i += anyVisitTime) {
    fullTimes.add(i);
  }
}

enum daysOfWeek {
  today,
  tomorrow,
  afterTomorrow,
  threeMoreDays,
  fourMoreDays,
  fiveMoreDays,
  sixMoreDays,
  sevenMoreDays;
}
