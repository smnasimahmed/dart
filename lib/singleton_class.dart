class Mysingleton {
  Mysingleton._();

  static final _instance = Mysingleton._();

  factory Mysingleton() => _instance;
}
