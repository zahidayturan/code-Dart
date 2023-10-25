import 'dart:io';

void main(List<String> args) {
  print("---HESAP MAKİNESİ----");
  String? userInput;
  int? operationType;
  do {
    print(
        "**Ana Menü** \nToplama --> 1 \nÇikarma --> 2 \nÇarpma --> 3 \nBölme --> 4 \nÇikmak için --> 0");

    userInput = stdin.readLineSync();
    if (userInput == null) {
      print("Hatali giriş.");
      continue;
    }

    if (!isNumeric(userInput)) {
      print("Hatali giriş. Lütfen bir sayi girin.");
      continue;
    }

    operationType = int.parse(userInput);

    if (operationType == 0) {
      break;
    } else if (0 < operationType && operationType < 5) {
      print(
          "Sonuç: ${getCalculated(operationType, getNumberPiece(operationType))}");
    } else {
      print("Yanliş tuşlama yaptiniz. Tekrardan işlem seçin");
    }
  } while (operationType != 0);
  print("---ÇIKIŞ YAPILDI----");
}

bool isNumeric(String controller) {
  if (controller == null) {
    return false;
  }
  return double.tryParse(controller) != null;
}

int getNumberPiece(int operationType) {
  String? userInput;
  int numberPiece = 0;
  List<String> hintText = [
    "Kaç tane sayiyi toplayacaksiniz?",
    "Kaç tane sayiyi çikaracaksiniz?",
    "Kaç tane sayiyi çarpacaksiniz?",
    "Kaç tane sayiyi böleceksiniz?"
  ];

  do {
    print(hintText[operationType - 1]);

    userInput = stdin.readLineSync();

    if (userInput == null) {
      print("Hatali giriş.");
      continue;
    }

    if (!isNumeric(userInput)) {
      print("Hatali giriş. Lütfen bir sayi girin.");
      continue;
    }

    numberPiece = int.parse(userInput);

    if (numberPiece <= 0) {
      print("İşlem sayisi 0 dan büyük olmali. Tekrar girin");
    }
  } while (numberPiece <= 0);
  return numberPiece;
}

double getCalculated(int operationType, int? numberPiece) {
  double calculated = 0.0;
  List<double> numbers = [];
  for (int i = 0; i < numberPiece!; i++) {
    String? userInput;
    do {
    print("${i + 1}.Sayi :");
    userInput = stdin.readLineSync();

    if (userInput == null) {
      print("Hatali giriş.");
      continue;
    }

    if (!isNumeric(userInput)) {
      print("Hatali giriş. Lütfen bir sayi girin.");
      continue;
    }

    double number = double.parse(userInput);

    if (operationType == 4 && number != 0.0) {
      numbers.add(number);
    } else if (operationType == 4 && number == 0.0) {
      double? numberForDiv;
      String? userInputForDiv;
      do {
        print(
        "Bir sayinin 0 ile bölümü tanimsizdir. Lütfen 0 'dan başka bir sayi giriniz");
        print("${i + 1}.Sayi :");
        userInputForDiv = stdin.readLineSync();

        if (userInputForDiv == null) {
        print("Hatali giriş.");
        continue;
        }

        if (!isNumeric(userInputForDiv)) {
          print("Hatali giriş. Lütfen bir sayi girin.");
          continue;
        }

        numberForDiv = double.parse(userInputForDiv);
        print(numberForDiv);
        if (numberForDiv != 0 && isNumeric(userInputForDiv)) {
          numbers.add(numberForDiv);
        }
      } while (!isNumeric(userInputForDiv!) || numberForDiv == 0);
    } else {
      numbers.add(number);
    };
      
    } while (!isNumeric(userInput!));

  }

  operationType != 1 ? calculated = numbers[0] : null;
  print(numbers);

  if (operationType == 1) {
    numbers.forEach((element) {
      calculated = calculated + element;
    });
  } else if (operationType == 2) {
    for (int i = 1; i < numbers.length; i++) {
      calculated = calculated - numbers[i];
    }
  } else if (operationType == 3) {
    for (int i = 1; i < numbers.length; i++) {
      calculated = calculated * numbers[i];
    }
  } else if (operationType == 4) {
    for (int i = 1; i < numbers.length; i++) {
      calculated = calculated / numbers[i];
    }
  }
  return calculated;
}
