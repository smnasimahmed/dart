// import 'package:sets/sets_and_map_variable.dart';

import 'package:sets/sets_and_map_variable.dart';

void main() {
// // Sets
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

// // Maps
//   // final Map<String, int> emptyMap = {};
//   print(inventory);
//   print(digitToWord);
//   print(treasureMap); // as you can see here is only one gold map
//   print(treasureMapList); // both gold map can be sown for List
//   final numberOfCakes = inventory['cakes']; //Accessing elements from a map
//   print(numberOfCakes);
//   print(numberOfCakes?.isEven);
//   inventory['brownies'] = 3; //Adding elements to a map
//   print(inventory);
//   inventory['cakes'] = 1;
//   print(inventory); //Updating an element
//   inventory.remove('cookies'); //Removing elements from a map
//   print(inventory);
//   // Map properties
//   // Maps have properties just as lists do.
//   inventory.isEmpty; // false
//   inventory.isNotEmpty; // true
//   inventory.length; // 4
//   print(inventory.keys); //it will print only keys in map
//   print(inventory.values); // it will print all values in keys
//   print(inventory.containsKey('pies')); // check key existed in map
//   // Looping over elements of a map
//   // Unlike lists, we can not directly iterate over a map using a for-in loop.
//   // for (var item in inventory) { //The type 'Map<String, int>' used in the 'for' loop must implement 'Iterable'.
//   //   print(inventory[item]);
//   // }

//   // this is the way to iterate a map using keys
//   for (var item in inventory.keys) {
//     print(inventory[item]);
//   }
//   // same things using for each loop
//   inventory.forEach((key, value) => print('$key -> $value'));

//   // Mini-exercises
//   print("========================");
//   print('Mini-exercises part');
//   print("========================");

//   print(myInfo);
//   myInfo['country'] = 'Canada';
//   myInfo['city'] = 'Toronto';
//   myInfo.forEach((key, value) => print('$value')); //print all the values.
//   for (var element in myInfo.keys) {
//     //print all the values.
//     print(myInfo[element]);
//   }

  // map methods (List, Set and Map all have a map method)
  final squares = numbers.map((number) => number * number);
  print(squares);

  // Filtering a collection (where method)
  final evens = squares.where((square) => square.isEven);
  print(evens);

  //
  final total = amounts.reduce((sum, element) => sum + element);
  // so here first time first parameter(sum) got the first value and
  //second parameter (elemet) got the second velue
  //in every iteration first parameter will record the final result
  //and second parameter will take new data from list or set. not Map.
  print(total);

  // Using fold (Same as reduce method but works on emplty list or set)
  final totalFold = amounts.fold<num>(0, (num sum, element) => sum + element);
  print(totalFold);

  // Sorting a list
  desserts.sort();
  print(desserts);
}
