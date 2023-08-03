void main() {
      String time = "2.08.2023";
      List<String> parts = time.split(".");
      int parseDay = int.parse(parts[0]);
      int parseMonth = int.parse(parts[1]);
      int parseYear = int.parse(parts[2]);
      DateTime operationDate = DateTime(parseYear,parseMonth,parseDay);
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
     
 print(initialDate);
      for(int i =0; i <32;i++){
        if (operationDate.isBefore(initialDate)) {
        print('öncedir');
      }
      else if (operationDate.isAfter(initialDate)){
        print("geçtin");
      }
      else if(operationDate.isAtSameMomentAs(initialDate)){
        print("aynı günde geldik");
        //itemi ekle
        //tarihi initial date yap
      }
      operationDate = operationDate.add(Duration(days: 1));
      }
  String aa = "1/3";
  List<String> partsProcessOnce = aa.split("/");
      int finished = int.parse(partsProcessOnce[0]);
      print(finished);
     
}