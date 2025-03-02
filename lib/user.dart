class User {
  User({this.id = _annonymouseId, this.name = _annonymouseName})
      : assert(id >= 0);

  User.annonymouse() : this();

  bool get isBigid => id >= 1000;

  int id;
  String name;

  static const _annonymouseId = 0;
  static const _annonymouseName = 'annonymouse';
}

class Email {
  String get getValue => _address;
  set setValue(String address) => _address = address;
  var _address = '.';
}
