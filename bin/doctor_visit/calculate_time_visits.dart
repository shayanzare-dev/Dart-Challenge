void calculateTimeVisits() {
  var workingTime = 6;
  var anyVisitTime = 2;

  for (int i = anyVisitTime; i <= workingTime; i += anyVisitTime) {
    print('${i - 2} ta $i');
  }
}
