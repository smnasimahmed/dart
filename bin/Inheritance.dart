class Animal {
  void eat() {
    print("Eating.....");
  }

  void sleep() {
    print("Sleeping");
  }
}

class Dog extends Animal {
  void bark() {
    print("Dog Bark...");
  }
}

class Cat extends Animal {
  void meow() {
    print("Cat Meow....");
  }
}

// Inheritance Practice

class Vehicle {
  void start() {
    print('Starter motor coil sound');
  }

  void stop() {
    print('Engine stop and sound off');
  }
}

class Car extends Vehicle {
  void honk() {
    print("Peeep Peep");
  }
}

class Motorcycle extends Vehicle {
  void rev() {
    print('Engine RPM sound');
  }
}
