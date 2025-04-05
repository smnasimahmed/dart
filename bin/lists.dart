void main() {
  List<String> desserts = ['coockies', 'cupcakes', 'donuts', 'pie'];
  // final secondElement = desserts[1];
  // final index = desserts.indexOf('pie');
  // print(secondElement);
  // print(desserts);
  // print(index);
  // desserts.add('brownies');
  // print(desserts);
  // desserts.remove('donuts');
  // print(desserts);

  final modifiableList = [
    DateTime.now(),
    DateTime.now(),
  ];

  print(modifiableList);
  // When you dont know what will be the value
  final unmodifiableList = List.unmodifiable(modifiableList);
  print(unmodifiableList);
}
// Notrhign to commit 