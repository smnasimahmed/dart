abstract class Vehicle {
  void start() {
    print('Starter motor coil sound');
  }

  void stop() {
    print('Engine stop and sound off');
  }

  void drive();
  // Using Abstract with extending

  void soundEffect();
  // I wanted to add extra sound effect
}

// Here extends is Inheritance
class Car extends Vehicle {
  @override
  void drive() {
    // Changing child class behaviour is called polymorphism
    // Polimorphism forcing to change child behave
    print('Driving a car smoothly on the road.');
  }

  // I wanted to add extra sound effect
  // So, I added extra soundEffect function from abstract
  @override
  void soundEffect() {
    honk();
  }

  void honk() {
    print('Peeep Peep!');
  }
}

class Motorcycle extends Vehicle {
  @override
  void drive() {
    print('Riding a motorcycle with engine revving!');
  }

  // I wanted to add extra sound effect
  // So, I added extra soundEffect function from abstract
  // Here is same too
  @override
  void soundEffect() {
    rev();
  }

  void rev() {
    print('Vrooom Vrooom!');
  }
}
