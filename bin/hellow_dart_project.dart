import 'package:hellow_dart_project/user.dart';

void main() {
  final user = User(id: 426, name: 'nasimma');
  print(user.id);
  print(user.name);
  print(user.isBigid);

  final email = Email();
  print('value of email ${Email().getValue}');
  email.setValue = 'nasim@gmail.com';
  print(email.getValue);
}
