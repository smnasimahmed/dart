// Challange 2

class Spheres {
  const Spheres({required double radius})
      : _radius = radius,
        assert(radius >= 0);

  double get volume => (4 / 3) * pi * (_radius * _radius * _radius);
  double get surfaceArea => 4 * pi * (_radius * _radius);

  @override
  String toString() =>
      "If the Radious is $_radius then Volume are $volume and Surface area are $surfaceArea";

  final double _radius;
  static const double pi = 3.1416;
}
