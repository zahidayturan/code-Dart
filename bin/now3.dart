void main() {

  DateTime date1 = DateTime(2023,7, 31);
  DateTime date2 = DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);


    int calculateDaysBetween(DateTime date1, DateTime date2) {
      Duration difference = date2.difference(date1);
      print(difference.inDays);
      print("Fark Hesaplandı ${(difference.inDays / 7).toInt()}");
      return difference.inDays~/7;
    }
 

  
  int daysBetween = calculateDaysBetween(date1, date2);
  print(calculateDaysBetween(date1, date2));

}
