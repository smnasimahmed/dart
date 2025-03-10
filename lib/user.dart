class User {
  User({this.id = 0, this.name = _annonymouseName}) : assert(id >= 0);

  User.annonymouse() : this();

  bool get isBigid => id >= 1000;

  int id;
  String name;

  int get annonymouseId => _annonymouseId;
  set annonymouseIdSet(value) => _annonymouseId = value;

  static var _annonymouseId = 0;
  static const _annonymouseName = 'annonymouse';
}

class Email {
  String get getValue => _address;
  set setValue(String address) => _address = address;
  var _address = '.';
}
