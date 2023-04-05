void main() {
    List<double> categoryBaseAmounts = [15,10,24];
    double total = categoryBaseAmounts.fold(0, (a, b) => a + b);
    List<double> percentages = categoryBaseAmounts.map((amount) => double.parse((amount / total * 100).toStringAsFixed(1))).toList();
    List <String> categoryBaseType = ['Giyim','Ulaşım','Eğitim'];

    List<Map<String, dynamic>> listMap = [];
    for (int i = 0; i < categoryBaseAmounts.length; i++) {
      Map<String, dynamic> map = {
        'domain': categoryBaseType[i],
        'measure': percentages[i]
      };
      listMap.add(map);
    }
    listMap.sort((a, b) => b['measure'].compareTo(a['measure']));

    print(listMap);
}