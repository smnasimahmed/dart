void main() {
  List<String> desserts = ['coockies', 'cupcakes', 'donuts', 'pie'];
  final secondElement = desserts[1];
  final index = desserts.indexOf('pie');
  print(secondElement);
  print(desserts);
  print(index);
  desserts.add('brownies');
  print(desserts);
  desserts.remove('donuts');
  print(desserts);
}
// Notrhign to commit 