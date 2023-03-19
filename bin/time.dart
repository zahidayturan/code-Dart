void main() {
  var now = DateTime.now();
print("Şimdi: "+now.toString());
print("Gün: "+now.day.toString());
print("Saat: "+now.hour.toString()+"."+now.minute.toString());
print("Ay: "+now.month.toString());
print("Yıl: "+now.year.toString());
}