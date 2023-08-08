
void main() {
        int calculateDaysBetween(DateTime date1, DateTime date2) {
          int difference = date2.month - date1.month;
            //print("Fark Hesaplandı $difference");
            return difference;
        }

        DateTime date1 = DateTime(2023,1, 31);
        DateTime date2 = DateTime(2023, 7, 29);
        int daysBetween = calculateDaysBetween(date1, date2);

        String time = "30.9.2023";
          List<String> parts = time.split(".");
          int parseDay = int.parse(parts[0]);
          int parseMonth = int.parse(parts[1]);
          int parseYear = int.parse(parts[2]);
          DateTime initialDate = DateTime(parseYear, parseMonth, parseDay);

          // Bir sonraki taksit tarihini hesaplama
          int nextMonth = initialDate.month + 1;
          int nextYear = initialDate.year;
          if (nextMonth > 12) {
            // Eğer bir sonraki ay 12'den büyükse, yılı güncelleyip ayı 1 yapma
            nextMonth = 1;
            nextYear++;
          }
          // Ayın son gününü al
          int lastDayOfMonth = DateTime(nextYear, nextMonth + 1, 0).day;
          // Sonraki taksit tarihini ayarla (ayın son gününe göre veya aynı gün)
          if (parseDay > lastDayOfMonth) {//son günse
            initialDate = DateTime(nextYear, nextMonth, lastDayOfMonth);
          } else { //son gün değilse
            initialDate = DateTime(nextYear, nextMonth, parseDay);
          }
          //print(initialDate);


        List<DateTime> calculateInitialDate(DateTime date,int count){
          List<DateTime> myDates = [];
          DateTime initialDate = DateTime(date.year, date.month, date.day);
          for(int i =0 ; i < count ; i++){
          print("Hesaplanan $date");
          int nextMonth = initialDate.month + 1;
          int nextYear = initialDate.year;
          if (nextMonth > 12) {
            nextMonth = 1;
            nextYear++;
          }
          int lastDayOfMonth = DateTime(nextYear, nextMonth + 1, 0).day;
          print("last day $lastDayOfMonth");
          if (date.day > lastDayOfMonth) {
            print("Son gün");
            initialDate = DateTime(nextYear, nextMonth, lastDayOfMonth);
          } else {
            print("Değil");
            initialDate = DateTime(nextYear, nextMonth,date.day);
          }
          print("Sonuç $initialDate");
          myDates.add(initialDate);
          }
          return myDates;
        }


        for(int i =0 ; i < 1 ; i++){
          //print("Eski tarih $date1");
          print(calculateInitialDate(date1, 3));
          //print("İşlwm Eklendi Yeni tarih $date1 \n");
        }
}




