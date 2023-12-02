

mixin EggLayer {
  void layEggs() => print('Laying Eggs');
}

mixin Flyer {
  void flying() => print('Bird is FLying');
}

abstract class Animal {
  bool isAlive = true;
  void eat();
  void move();

  @override
  String toString() => 'I am a $runtimeType';
}

class Platyous extends Animal with EggLayer, Flyer {
  @override
  void eat() => print('Platypus eats -- Mmmmm');

  @override
  void move() => print('Platypus moves - romp romp');
}


void mixins() {

  Platyous aPlatypus = Platyous();
  aPlatypus.eat();
  aPlatypus.move();
  // mixins
  aPlatypus.flying();
  aPlatypus.layEggs();
  print(aPlatypus);
}

void main() {

  mixins();
}