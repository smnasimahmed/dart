import 'package:sets/sets_and_map_variable.dart';

void main() {
//   print(anotherSet);
//   print(anotherSet.contains(1));
//   print(anotherSet.contains(99));
//   someSet.add(42);
//   someSet.add(2112);
//   someSet.add(42);
//   print(someSet);
//   someSet.remove(2112);
//   print(someSet);
//   someSet.addAll([42, 1, 2, 3, 4]);
//   print(someSet);

//   final intersection = setA.intersection(setB);
//   print(intersection);
//   final union = setA.union(setB);
//   print(union);

// Other operations can be used in set
// collection if
// collection for
// for-in loops
// forEach loops
// spread operators

// Maps
  final Map<String, int> emptyMap = {};
  print(inventory);
  print(digitToWord);
  print(treasureMap); // as you can see here is only one gold map
  print(treasureMapList); // both gold map can be sown for List
  final numberOfCakes = inventory['cakes']; //Accessing elements from a map
  print(numberOfCakes);
  print(numberOfCakes?.isEven);
  inventory['brownies'] = 3; //Adding elements to a map
  print(inventory);
  inventory['cakes'] = 1;
  print(inventory); //Updating an element
  inventory.remove('cookies'); //Removing elements from a map
  print(inventory);
}
