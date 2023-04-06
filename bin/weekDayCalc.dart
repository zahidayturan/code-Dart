void main() {
  var year = 2023;
  var month = 4;
  var week = 6;
  var date = DateTime.utc(year, month, 1);
      var daysToAdd = ((week - 1) * 7) - date.weekday + 1;
      var startDate = date.add(Duration(days: daysToAdd));
      var endDate = startDate.add(Duration(days: 6));
      print(startDate);
      print(endDate);


    DateTime firstDay = DateTime(year, month, 1);
    int firstWeekday = firstDay.weekday;

    int numDays = DateTime(year, month + 1, 0).day;
    int numWeeks = ((numDays - (7 - firstWeekday)) / 7).ceil() + 1;

    List<String> MonthList = [];
    for (int i = 1; i <= numWeeks; i++) {
      MonthList.add(i.toString());
    }
    print(MonthList);
}