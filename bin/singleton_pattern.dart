import 'package:singleton_pattern/singleton_class.dart';

void main() {
  final obj1 = Mysingleton();
  final obj2 = Mysingleton();
  print(identical(obj1, obj2));
}
