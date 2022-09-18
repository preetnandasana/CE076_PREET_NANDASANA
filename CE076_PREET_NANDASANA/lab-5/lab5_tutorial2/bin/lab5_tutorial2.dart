import 'dart:ffi';

import 'package:lab5_tutorial2/lab5_tutorial2.dart' as lab5_tutorial2;

enum Grades { A, B, C, D, F }

void main(List<String> arguments) {
  // print('Hello world: ${lab5_tutorial2.calculate()}!');

  // Advanced classes

/*
  // Using the classes
  final jon = Person("Jon", "Snow");
  final jane = Student("Jane", "Snow");
  print(jon.fullName);
  print(jane.fullName);

 
  */

/*
  // Multi-level hierarchy
  // Sibling classes
  final jane = Student("Jane", "Snow");
  final jessie = SchoolBandMember('Jessie', 'Jones');
  final marty = StudentAthlete('Marty', 'McFly');

  */

/*
  // Mini-exercise
  // 1)
  var f1 = Fruit('red');
  f1.describeColor;

  // 2)
  var wm = WaterMelon('red');
  var cl = Cantaloupe('yellow');
  wm.describeColor;
  cl.describeColor;

  // 3)
  var wm2 = WaterMelon('red');
  wm2.describeColor;
  */

/*
  // Abstract classes
  // final animal = Animal();  //Abstract classes can't be instantiated.

 
  final platypus = Platypus();
  print(platypus.isAlive);
  platypus.eat();
  platypus.move();
  platypus.layEggs();
  print(platypus);

  */

/*
  // Interfaces
  // final repository = DataRepository();
  final DataRepository repository = FakeWebServer();
  final temperature = repository.fetchTemperature('Berlin');
  print(temperature);
*/

  // Mini - exercises
  // 1)
  // 2)
  var sb = sodaBottel();
  sb.open();
  // 4)
  final bottel = Bottle();
  bottel.open();

/*
  // Mixies
  final platypus = Platypus();
  final robin = Robin();
  platypus.layEggs();
  robin.layEggs();
  */

  // mini-exercise
  // 1)
  var calc = Calculator();
  calc.sum(3, 2); //5

  // 2)
  // 3)
  var calc2 = Calculator();
  calc2.sum(33, 42); //5

  // Challenges
  // ch:1) Heavy monotremes

  var plt1 = Platypus(2.5);
  var plt2 = Platypus(1.5);
  var plt3 = Platypus(0.4);
  var plt4 = Platypus(3.5);
  var plt5 = Platypus(5.2);

  final platypus = [plt1, plt2, plt3, plt4, plt5];
  platypus.forEach((element) {
    print(element.weight);
  });
  print('\n');
  platypus.sort();
  platypus.forEach((element) {
    print(element.weight);
  });

  // ch:2) Fake notes
  final database = Database();
  database.saveNote('Have a nice day');
  database.saveNote('Hello world');
  database.saveNote('Hii');
  print(database.selectNote(1));
  print(database.selectNote(0));
  print(database.selectNote(2));

  // ch:3) time to code
  final timeRemaining = 3.minutes;
  print(timeRemaining);
}

// ch:3)
extension on int {
  Duration get minutes => Duration(minutes: this);
}

// ch:2)
abstract class Database {
  factory Database() => fakeDataBase();
  String selectNote(int id);
  void saveNote(String note);
}

class fakeDataBase implements Database {
  List<String> allNotes = [];

  @override
  void saveNote(String note) {
    // TODO: implement saveNote
    allNotes.add(note);
  }

  @override
  String selectNote(int id) {
    // TODO: implement selectNote
    return allNotes[id];
  }
}

// 3)-1)
// class Calculator {
//   void sum(int x, int y) => print(x + y);
// }

// 3)-2)
mixin Adder {
  void sum(int x, int y) => print(x + y);
}

// 3)-3)
class Calculator with Adder {}

// 2)-1)
abstract class Bottle {
  void open();
  // 2)-3)
  factory Bottle() => sodaBottel();
}

// 2)-2)
class sodaBottel implements Bottle {
  @override
  void open() {
    // TODO: implement open
    print("Fizz fizz");
  }
}

// 1)
class Fruit {
  Fruit(this.color);
  String color;

  void get describeColor => print(color);
}

//  2)
class Melon extends Fruit {
  Melon(var color) : super(color);
}

// 2,3)
class WaterMelon extends Melon {
  WaterMelon(var color) : super(color);

  @override
  void get describeColor => print('Water melon color : $color');
}

class Cantaloupe extends Melon {
  Cantaloupe(var color) : super(color);
}

class Person {
  Person(this.givenName, this.surname);
  String givenName;
  String surname;
  String get fullName => '$givenName $surname';
  @override
  String toString() => fullName;
}

class Student extends Person {
  Student(String givenName, String surname) : super(givenName, surname);

  var grades = <Grades>[];

  @override
  String get fullName => '$surname, $givenName';
}

class SomeParent {
  void doSomeWork() {
    print('parent working');
  }
}

class SomeChild extends SomeParent {
  @override
  void doSomeWork() {
    print('child doing some other work');
    super.doSomeWork();
  }
}

// Multi-level hierarchy
class SchoolBandMember extends Student {
  SchoolBandMember(String givenName, String surname)
      : super(givenName, surname);
  static const minimumPracticeTime = 2;
}

// Sibling classes
class StudentAthlete extends Student {
  StudentAthlete(String givenName, String surname) : super(givenName, surname);

  bool get isEligible => grades.every((grade) => grade != Grades.F);
}

// Abstract classes
abstract class Animal {
  bool isAlive = true;
  void eat();
  void move();

  @override
  String toString() {
    return "I'm a $runtimeType";
  }
}

abstract class DataRepository {
  // factory constructor can return
  factory DataRepository() => FakeWebServer();
  double? fetchTemperature(String city);
}

class FakeWebServer implements DataRepository {
  @override
  double? fetchTemperature(String city) {
    return 42.0;
  }
}

// mixins
abstract class Bird {
  void fly();
  void layEggs();
}

mixin EggLayer {
  void layEggs() {
    print('Plop plop');
  }
}
mixin Flyer {
  void fly() {
    print('Swoosh swoosh');
  }
}

class Robin extends Bird with EggLayer, Flyer {}

class Platypus extends Animal with EggLayer implements Comparable {
  Platypus(this.weight);
  num weight;

  @override
  void eat() {
    print('Munch munch');
  }

  @override
  void move() {
    print('Glide glide');
  }

  @override
  int compareTo(other) {
    // TODO: implement compareTo
    // throw UnimplementedError();

    if (weight > other.weight)
      return 1;
    else if (weight < other.weight) return -1;
    return 0;
  }
}
