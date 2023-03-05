void main(){
  var urunler = List<String>.filled(5,"Null", growable: false); //growable liste uzunluk değişebilir mi?
  urunler[0] = "telefon";
  urunler[1] = "klavye";
  urunler[2] = "mouse";
  urunler[3] = "mikrofon";
  urunler[4] = "kamera";
  print(urunler);

  var sehirler = ["Ankara","Amasya"];  //bu bir growable liste
  print(sehirler);
  print(sehirler.where((eleman) => eleman.contains("k"))); //eleman eleman dolaşıyor (where)
}