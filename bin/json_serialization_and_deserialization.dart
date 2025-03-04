import 'package:json_serialization_and_deserialization/user.dart';

void main() {
  final user = User(id: 42, name: 'Ray');
  print(user.toJson());
}
