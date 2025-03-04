class User {
  User({required this.id, required this.name});

  String toJson() {
    return '{"id":$id,"name":$name}';
  }
  
// Using factory
  factory User.fromJson(Map<String, Object> json) {
    final userId = json['id'] as int;
    final userName = json['name'] as String;
    return User(id: userId, name: userName);
  }

 // Using Static
  // static User fromJson(Map<String, Object> json) {
  //   final userId = json['id'] as int;
  //   final userName = json['name'] as String;
  //   return User(id: userId, name: userName);
  // }

  @override
  String toString() => '{"id":$id,"name":$name}';

  int id;
  String name;
}
