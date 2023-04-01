   void main(){
    const List<int> _daysInMonth = [
    31, // Ocak
    28, // Şubat
    31, // Mart
    30, // Nisan
    31, // Mayıs
    30, // Haziran
    31, // Temmuz
    31, // Ağustos
    30, // Eylül
    31, // Ekim
    30, // Kasım
    31, // Aralık
  ];
    var year = 2023;
    var month = 4;
    DateTime date = DateTime(year, month);
    int startWeekday = date.weekday;
    print(startWeekday);
    int daysInMonth = _daysInMonth[month - 1];
    if (month == DateTime.february && year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)) {
      daysInMonth = 29;
    }
    print(daysInMonth);
    int emptySlots = (startWeekday - DateTime.monday + 7) % 7;
    print(emptySlots);
    DateTime prevMonthDate = date.subtract(Duration(days: emptySlots));
    int daysInPrevMonth = _daysInMonth[prevMonthDate.month - 1];
    print(daysInPrevMonth);
    List<int> prevMonthDays = List.generate(emptySlots, (i) => daysInPrevMonth - emptySlots + i + 1);
    print(prevMonthDays);
     List<int> currentMonthDays = List.generate(daysInMonth, (i) => i + 1);
     print(currentMonthDays);
     int remainingSlots = 42 - currentMonthDays.length - prevMonthDays.length;
     print(remainingSlots);
    DateTime nextMonthDate = date.add(Duration(days: daysInMonth));
    List<int> nextMonthDays = List.generate(remainingSlots, (i) => i + 1);
    print(nextMonthDays);
    List<int> allDays = [...prevMonthDays, ...currentMonthDays, ...nextMonthDays];
    print(allDays);
    print(allDays[0]);
    print(allDays[41]);
  }