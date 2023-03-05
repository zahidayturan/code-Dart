void main(){
  for(var i =1; i<10;i++){
    print(i);
  }
  var urunler = ["laptop","klavye","kulaklık"];
  for(var k=0; k<urunler.length;k++){
    print("Ürün "+k.toString()+": "+ urunler[k]);
  }
  for(var gezilen_eleman in urunler){
    print(gezilen_eleman);
  }

  var sayi = 10;
  while(sayi>=1){
    print(sayi);
    sayi--;
  }

  int m= 2;
  do {
    print(m);
    m++;
  } while (m<1);
}