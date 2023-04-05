void main() {
    List<double> categoryBaseAmounts = [15,10,25];
    double total = categoryBaseAmounts.fold(0, (a, b) => a + b);
    List<double> percentages = categoryBaseAmounts.map((amount) => double.parse((amount / total * 100).toStringAsFixed(1))).toList();
    List <String> categoryBaseType = ['Giyim','Ulaşım','Eğitim'];

    List<Map<String, dynamic>> listMap = [];
    for (int i = 0; i < categoryBaseAmounts.length; i++) {
      Map<String, dynamic> map = {
        'category': categoryBaseType[i],
        'percentages': percentages[i],
        'amount' : categoryBaseAmounts[i],
      };
      listMap.add(map);
    }
    listMap.sort((a, b) => b['amount'].compareTo(a['amount']));

    print(listMap[0]['category']);
}