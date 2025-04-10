import 'package:sets/sets_and_map_variable.dart';

void main() {
  print(anotherSet);
  print(anotherSet.contains(1));
  print(anotherSet.contains(99));
  someSet.add(42);
  someSet.add(2112);
  someSet.add(42);
  print(someSet);
  someSet.remove(2112);
  print(someSet);
  someSet.addAll([42, 1, 2, 3, 4]);
  print(someSet);

  final intersection = setA.intersection(setB);
  print(intersection);
  final union = setA.union(setB);
  print(union);

  final Map<String, String> treasureMap = {

}

// Other operations can be used in set
// collection if
// collection for
// for-in loops
// forEach loops
// spread operators