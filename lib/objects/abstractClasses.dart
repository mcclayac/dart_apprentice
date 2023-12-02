

abstract class Animal {

  bool isAlive = true;
  void eat();
  void move();

  @override
  String toString() => "I'm a $runtimeType";
}

class Platypus extends Animal {
  @override
  void eat() => print('munch much');

  @override
  void move() => print('slide slide');

  void layEggs() => print('Layimg an egg');
}


creatingAnimals() {

  print('\nCreating Animals');
  final aPlatypus = Platypus();
  print('aPlatypus.isAlive = ${aPlatypus.isAlive}');
  aPlatypus.eat();
  aPlatypus.move();
  aPlatypus.layEggs();
  print('aPlatypus = $aPlatypus');
}
void main() {

  creatingAnimals();
}