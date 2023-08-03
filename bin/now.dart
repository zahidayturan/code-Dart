void main() {
  int ifDay = DateTime.now().day;
  print(ifDay);
  int ifMonth = DateTime.now().month;
  int ifYear = DateTime.now().year;
  String ifDate =
      ifDay.toString() + "." + ifMonth.toString() + "." + ifYear.toString();
  print(ifDate);
  int calculateDaysBetween(DateTime date1, DateTime date2) {
    Duration difference = date2.difference(date1);
    return difference.inDays;
  }

  DateTime date1 = DateTime(2023, 7, 26);
  print(date1);
  DateTime date2 =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
  print(date2);
  int daysBetween = calculateDaysBetween(date1, date2);
  print(daysBetween);
  for (int i = 0; i < daysBetween; i++) {
    print("Eklendi ${i}");
    print(
      i == daysBetween - 1 ? "sabit" : "değişti",
    );
    date1 = date1.add(Duration(days: 1));
  }

  DateTime simdikizaman = DateTime.now();//İNTERNETETEN
  DateTime firebase = DateTime(2023, 8, 2, 0, 0, 0);

  for (int i = 0; i < 12; i++) {
    print(firebase);
    if (firebase.isBefore(simdikizaman)) {
      print("evet önce");
      //güncelleme
      firebase = firebase.add(Duration(hours: 7));
    } else {
      print("işleme giremyecek");
      break; // Eğer tarih simdikizaman'dan sonra veya eşitse döngüyü sonlandır.
    }
  }
}
