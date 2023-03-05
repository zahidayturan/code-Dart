void main(){
  var sistemGiris = false; //bool
  if(sistemGiris == true){
    print("Sayfaya Girildi");
  }
  else
  print("Giriş Yapılamadı");

  String not = "A";
  switch(not){
    case "A" : print("Geçti");
    break;
    case "B" : print("Kaldı");
    break;
    default : print("Bilinmiyor");
    break;
  }
}