import 'package:json_serialization_and_deserialization/user.dart';

void main() {
  final user = User(id: 42, name: 'Ray');
  print(user.toJson());
  final map = {'id': 10, 'name': 'Manda'};
  final manda = User.fromJson(map);
  print(manda);
}
