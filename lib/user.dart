class User {
  User({required id, required name});

  String toJson() {
    return '{"id":$id,"name":$name}';
  }

  int id = 0;
  String name = '';
}
