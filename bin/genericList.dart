void main() {
  List<String> sehirler = new List<String>.filled(3,"Null", growable: false);
  sehirler[0] = "Ankara";
  sehirler[1] = "Amasya";
  sehirler[2] = "Adana";
  print(sehirler);

  List urunler = ["Laptop","Mouse"];
  print(urunler);
  var product1 = Product("TV",500);
  var product2 = Product("Firin",300);
  List<Product> products = [product1,product2];
  print(products[0].name+"-"+products[0].price.toString());
}



class Product{
  String name = "";
  double price = 0;
  Product(String name, double Price){
    this.name = name;
    this.price = price;
  }
}