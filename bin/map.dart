void main() {
  var dictionary1 = new Map();
    dictionary1["pencil"]="kalem";
    dictionary1["book"]="kitap";


  var dictionary2 = {"kalem":"pencil","kitap":"book"};//key:value,key:value
  dictionary2["küçük"]="small";

  print(dictionary1);
  print(dictionary2);

  dictionary1.remove("book");//book elemanını siler
  //olmayan bir şey silme işleminde remove hata vermez
  
  for(var gezilen_key  in dictionary2.keys ){
    //print(gezilen_key); //önce key
    //print(dictionary2[gezilen_key]); //sonra onun valuesi
    print(gezilen_key +" : "+ dictionary2[gezilen_key].toString());  //üstteki iki yorum satırının toplanmış hali
  }

  print(dictionary2.containsKey("klavye"));//false
  print(dictionary2.containsKey("kalem"));//true

  dictionary2.forEach((key, value)=> {
    print(key +" : "+ value)    }
  );

}