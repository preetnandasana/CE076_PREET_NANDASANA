import 'package:lab2_tutorial3/lab2_tutorial3.dart' as lab2_tutorial3;

void main(List<String> arguments) {
  /*
    // Data types

    int myIntVar = 10;
    print(myIntVar);

    double myDoubleVar = 3.24;
    print(myDoubleVar);

    num myNumVar = 10;
    print(myNumVar);
    myNumVar = 3.128;
    print(myNumVar);
    // myNumVar = "dvj"; // Not allowed

    dynamic myVar;
    myVar = 10;
    print(myVar);
    myVar = 3.23;
    print(myVar);
    myVar = "DDU";
    print(myVar);

    String myStr = "DDIT";
    print(myStr);

    String myStr2 = "DDIT";
    print(myStr2);

    myStr2 = "hkad";
    print(myStr); // "DDIT"
    print(myStr2); // "hkad"
  */

  /*
    // infer the type

    const int myIntConst = 10;
    const double myDoubleConst = 3.364;

    const myConst1 = 10;
    const myConst2 = 3.364;

    // Checking the inferred type in VS Code
    num myNumber = 3.14;
    print(myNumber is double);
    print(myNumber is int);

    print(myNumber.runtimeType); // double

  */

  /*
    // Type convertion

    var integer = 100;
    var decimal = 12.5;
    // integer = decimal; // not allowed

    // explicit type convertion
    integer = decimal.toInt();
    print(integer);

  */
  /*
    // Operators with mixed types
    const hourlyRate = 19.5;
    const hoursWorked = 10;
    const totalCost = hourlyRate * hoursWorked;
    print(totalCost);

    // const totalCost1 = (hourlyRate * hoursWorked).toInt(); // this will give error because toInt() is runtime method and for const value need to br initialize before program run.

    final totalCost2 = (hourlyRate * hoursWorked).toInt();
    print(totalCost2);

    const wantADouble = 3;

    final actuallyDouble = 3.toDouble();
    const double actuallyDouble1 = 3;
    const wantADouble1 = 3.0;
  */

  /*
    // Casting down
    num someNumber = 3;
    // print(someNumber.isEven); // not possible because num is general type at runtime it may be double and isEven and isOdd is for integers only.

    final someInt = someNumber as int;
    print(someInt.isEven);

    // num someNumber1 = 3;
    // final someDouble = someNumber1 as double;
    // print(someDouble);
    // Unhandled exception:
    // type 'int' is not a subtype of type 'double' in type cast

    final someDouble = someNumber.toDouble();
    // we can cast int to double by this way

  */

  /*
    // Mini-exercises

    // 1. Create a constant called age1 and set it equal to 42.
    // Create another constant called age2 and set it equal to
    // 21. Check that the type for both constants has been
    // inferred correctly as int by hovering your mouse pointer
    // over the variable names in VS Code.

    const age1 = 42;
    const age2 = 21;
    print(age1.runtimeType);
    print(age2.runtimeType);

    // 2. Create a constant called averageAge and set it equal to
    // the average of age1 and age2 using the operation (age1
    // + age2) / 2. Hover your mouse pointer over
    // averageAge to check the type. Then check the result of
    // averageAge. Why is it a double if the components are
    // all int?

    const averageAge = (age1 + age2) / 2;
    print(averageAge);
  */

  /*
    // Strings

    print('Hello, Dart!');

    var greeting = 'Hello, Dart!';
    print(greeting);

    var greeting1 = 'Hello, Dart!';
    print(greeting1);
    greeting1 = 'Hello, Flutter!';
    print(greeting1);

    const letter = 'a';// this is not char it is also String
  */

  /*
    // Single-quotes vs. double-quotes

    const str = 'I like cats';
    const str1 = "I like cats";

    // both are same

    const str2 = "my cat's food";
    const str3 = 'my cat\'s food';
    // just we use "\" for telling that it is not ending of the string

  */

  /*
    // Concatenation

    var message = 'Hello' + ' my name is ';
    const name = 'Ray';
    message += name;
    print(message);

    final message1 = StringBuffer();
    message1.write('Hello');
    message1.write(' my name is ');
    message1.write('Ray');
    message1.toString();
    print(message1);
  */

  /*
    // Interpolation

    const name = 'Ray';
    const introduction = 'Hello my name is $name';
    // 'Hello my name is Ray'

    const oneThird = 1 / 3;
    const sentence = 'One third is $oneThird.';
    print(sentence);

    final sentence1 = 'One third is ${oneThird.toStringAsFixed(3)}.';
    print(sentence1);
  */

  /*
    // Multi-line strings

    const bigString = '''
    You can have a string
    that contains multiple
    lines
    by
    doing this.''';
    print(bigString);

    const oneLine = 'This is only '
        'a single '
        'line '
        'at runtime.';
    print(oneLine);

    const oneLine1 = 'This is only ' + 'a single ' + 'line ' + 'at runtime.';

    print(oneLine1);

    const twoLines = 'This is\ntwo lines.';
    print(twoLines);

    String name = "Ram";
    final rawString = r'My name \n is $name.';
    print(rawString);
  */

  /*

    // Mini-exercises

    // 1. Create a string constant called firstName and initialize it
    // to your first name. Also create a string constant called
    // lastName and initialize it to your last name.

    const firstName = "Preet";
    const lastName = "Nandasana";
    print(firstName);
    print(lastName);

    // 2. Create a string constant called fullName by adding the
    // firstName and lastName constants together, separated
    // by a space.

    const fullName = firstName + " " + lastName;
    print(fullName);

    // 3. Using interpolation, create a string constant called
    // myDetails that uses the fullName constant to create a
    // string introducing yourself. For example, Ray
    // Wenderlich’s string would read: Hello, my name is
    // Ray Wenderlich.

    const myDetails = 'My name is $fullName';
    print(myDetails);
  */

  /*
    // Object and dynamic types

    Object? myVariable = null; // ok
    // Object myVariable1 = null; // not ok

    Object? myVariable2 = 42;
    myVariable2 = 'hello';
    print(myVariable2);
    // in Object? '?' means that they can contain NULL value as well.
  */

  // Challenges

  // Challenge 1: Teacher’s grading
  // You’re a teacher, and in your class, attendance is worth 20%
  // of the grade, the homework is worth 30% and the exam is
  // worth 50%. Your student got 90 points for her attendance, 80
  // points for her homework and 94 points on her exam.
  // Calculate her grade as an integer percentage rounded down.

  int grade = (((90 * 20) + (80 * 30) + (94 * 50)) / 100).toInt();
  print(grade);

  // Challenge 2: Find the error
  // What is wrong with the following code?

  const name = 'Ray';
  // name += ' Wenderlich';

  // Challenge 3: What type?
  // What’s the type of value?

  const value = 10 / 2;

  // Challenge 6: In summary
  // What is the value of the constant named summary?

  const number = 10;
  const multiplier = 5;
  final summary = '$number * $multiplier = ${number * multiplier}';
  print(summary);
}
