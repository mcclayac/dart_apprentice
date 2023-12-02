

class Person {
  Person(this.givenName, this.surName);

  String givenName;
  String surName;
  String get fullName => '$givenName $surName';

  @override
  String toString() => fullName;
}

enum Grade {A,B,C,D,E,F}

class Student extends Person {
  //Student(String givenName, String surName) : super(givenName, surName);

  // removing code duplication
  // Super Paramenters
  Student(super.givenName, super.surName);
  var grades = <Grade>[];

  @override
  String get fullName => '$givenName $surName grades: $grades';

  @override
  String toString() => fullName;
}

class SchoolBandMember extends Student {
  SchoolBandMember(super.givenName, super.surName);

  static const minimunPracticeTime = 2;
}

class StudentAthlete extends Student {
  StudentAthlete(super.givenName, super.surName);

  @override
  String get fullName => '$givenName $surName grades: $grades isEligible = $isEligible';

  bool get isEligible => grades.every((grade) => grade != Grade.F);
}

class SomeParent {
  SomeParent({
    required this.name});

  void doSomeWork() => print('Parent doing some work');

  String name;
}

class SomeChild extends SomeParent {
  SomeChild({
    required double width,
    required double height,
    required String name })
    : _width = width,
      _height = height,
      super(name: name);
  // super call must be at the end of an initializer list

  @override
  void doSomeWork() {
    print('Child doing some work');
    super.doSomeWork();
  }

  final double _width;
  final double _height;
}

void usingClasses() {

  print('usingClasses');
  final jon = Person('Jon', 'Snow');
  final joan = Student('Joan', 'Snow');

  final historyGrade = Grade.B;
  joan.grades.add(historyGrade);
  print(jon);
  print(joan);

  SomeChild aChild = SomeChild(width: 32.2, height: 43.1, name: 'Tony');
  aChild.doSomeWork();

  final jessie = SchoolBandMember('Jessie', 'Jones');
  final lisa = StudentAthlete('Lisa', 'Leroy');
  final angelo = StudentAthlete('Angelo', 'Leroy');
  List<Grade> lisaGrades = [Grade.A,Grade.B,Grade.C];
  List<Grade> angeloGrades = [Grade.D,Grade.E,Grade.F];
  lisa.grades.addAll(lisaGrades);
  angelo.grades.addAll(angeloGrades);

  print(jessie);
  print(lisa);
  print(angelo);

  List<Person> personList = [jessie,lisa,angelo,jon,joan];
  print('\npersonList = $personList');
  print('\npersonList.forEach((person) => print(person));');
  personList.forEach((person) => print(person));



}

void main() {

  usingClasses();

}
