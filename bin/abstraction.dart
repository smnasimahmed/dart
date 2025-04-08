abstract class Animal {
  void makeSound();
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("bark");
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print("Meow");
  }
}

// Practice
abstract class Shape {
  double area();
  void display();
}

class Circle extends Shape {
  static const double pi = 3.1416;
  final double radius;

  Circle(this.radius);

  @override
  double area() {
    return pi * (radius * radius);
  }

  @override
  void display() {
    print('Circle area is ${area()}');
  }
}

class Rectangle extends Shape {
  double height;
  double width;

  Rectangle({required this.height, required this.width});

  @override
  double area() {
    return height * width;
  }

  @override
  void display() {
    print('Area of Rectangle is ${area()}');
  }
}
