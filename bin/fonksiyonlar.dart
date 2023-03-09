void main(List<String> args) {
  yaziyaz("Ali");
  var hesapSonucu = hesapla(1500, 12);
  print(hesapSonucu);
}

void yaziyaz(String kullanici){
  print("merhaba"+kullanici);
}
double hesapla(double krediTutari,double yuzde){
  var sonuc = krediTutari*yuzde/100;
  return sonuc;
}