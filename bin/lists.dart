void main() {
  // List<String> desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
  // final secondElement = desserts[1];
  // final index = desserts.indexOf('pie');
  // print(secondElement);
  // print(desserts);
  // print(index);
  // desserts.add('brownies');
  // print(desserts);
  // desserts.remove('donuts');
  // print(desserts);

  // final modifiableList = [
  //   DateTime.now(),
  //   DateTime.now(),
  // ];

  // print(modifiableList);
  // // When you dont know what will be the value comes after runtime
  // // But you want to value become deeply immutable that 'final' can't
  // final unmodifiableList = List.unmodifiable(modifiableList);
  // print(unmodifiableList);

  const drinks = ['water', 'milk', 'juice', 'soda'];

  // // access the first and last element
  // drinks.first; // water
  // drinks.last; // soda

  // // check whether a list is empty or not empty
  // drinks.isEmpty; //false
  // drinks.isNotEmpty; //true
  // // similarly you can do this too
  // drinks.length == 0; //false
  // drinks.length > 0; //true

  // for (var dessert in desserts) {
  //   print(dessert);
  // }

  // desserts.forEach((dessert) => print(dessert)); //same job as for loop
  // desserts.forEach(print); // same job
  const pastries = ['cookies', 'croissants'];
  const candy = ['Junior Mints', 'Twizzlers', 'M&Ms'];

  const desserts = ['donutes', ...pastries, ...candy];
  print(desserts);
}
