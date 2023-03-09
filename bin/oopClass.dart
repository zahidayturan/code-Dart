void main() {
    PersonelManager personelManager = new PersonelManager();
    //var PersonelManager personelManager = new PersonelManager(); AYNI DURUM
    //var personelManager = PersonelManager();  ÇALIŞIR
    personelManager.ekle();
    var customerManager = CustomerManager();
    var customer1 = new Customer.withInfo("Ali","Veli");
    Person customer2 = new Customer();   //parametresiz çalışan
    customer2.ad = "ali";
    customer2.soyad = "veli";
    customerManager.ekle(customer1);
    customerManager.ekle(customer2);
}

class PersonelManager{
  void ekle(){
    print("Eklendi");
  }
  void guncelle(){
    print("güncelle");
  }
  void sil(){
    print("silindi");
  }
}

class CustomerManager{
  void ekle(Person customer){
    print("Eklendi : " + customer.ad + customer.soyad);
  }
  void guncelle(){
    print("güncelle");
  }
  void sil(){
    print("silindi");
  }
  
}
class Customer extends Person{ //customer içerisinde personda olan özeliikler var
    Customer(){
    }
    //constructor
    Customer.withInfo(String ad, String soyad){
      this.ad = ad;
      this.soyad = soyad;
    }
}

class Personel extends Person{ //personel içerisinde personda olan özeliikler var
    //String ad ="";  GEREK KALMADI
    //String soyad="";
    int dateOfStart= 0;
    Personel(){
    }
    //constructor
    Personel.withInfo(String ad, String soyad, int dateOfStart){
      this.ad = ad;
      this.soyad = soyad;
      this.dateOfStart = dateOfStart;
    }
}

class Person{
    String ad ="";
    String soyad="";
    //String tc_no="";
}