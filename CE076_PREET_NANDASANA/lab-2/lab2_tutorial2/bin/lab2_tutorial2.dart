import 'package:lab2_tutorial2/lab2_tutorial2.dart' as lab2_tutorial2;
import 'dart:math';

void main() {
  // print('Hello world: ${lab2_tutorial2.calculate()}!');

  /*

    // Comment

    // Code comment

    // this is single line code comment

    // this is first line
    // this is second line

    /*
      this is block comment.
      this is multiline comment in code type comment
    */

    /* this is a comment 
    /*And inside it is
    another comment
    */
    Back to first comment.
    */

    //Documentation comment

    /// this is single line documentation comment
    /// comment
    
    /**
     * this is multiline comment in documentation type
     * second line of comment
     */

  */

  /*
    // Printing Output

    print("Hello Dart World..");
  */

  /*
    // Satements and expressions

    // statement

    // A statement is a command, something you tell the computer
    // to do. In Dart, all simple statements end with a semicolon.
    // You’ve already seen that with the print statement:

    print("This is a statement.");

    // complex example of statement is below 

    if(true){
      print("This is complex statement");
    }

    // expressions

    // Unlike a statement, an doesn’t do something; it is
    // something. That is, an expression is a value, or is something
    // that can be calculated as a value.
    // Here are a few examples of expressions in Dart:

    // 42
    // 3 + 2
    // "Hello, Dart"

  */

  /*
    // Arithmetic operations

    print(2 + 6);
    print(10 -2);
    print(2 * 3);
    print(3/7);

  */

  /*
    // Decimal numbers

    print(22 / 7); // this doesn't give us integer division

    print(22 ~/ 7);
    // this give us integer division ( it is called truncating division operator)

    print(28 % 10); // The Euclidean modulo operation

    // Order of operations

    // Note the use of parentheses, which in Dart serve two
    // purposes: to make it clear to anyone reading the code —
    // including yourself — what you meant, and to disambiguate
    // the intended order of operations. For example, consider the
    // following:

    print(((8000 / (5 * 10)) - 32) ~/ (29 % 5));

    print(2 + 350 / 5); // we thaght that the ans is 70.4 but ans is 72.0 due to operation precedence.
  */

  /*
    //Math functions
    // for this functions we need to import dart math library ('dart:math').
    // pi is a constant which probided to us by dart.
    print(tan(45 * pi / 180));
    print(sin(pi / 2));
    print(cos(pi));

    print(min(1, 2));
    print(max(2, 5));

    print(sqrt(3));

    print(max(sqrt(2), pi / 2));
  */

  // Mini-exercise
  // Now print the value of 1 overthe square root of 2 in Dart.
  //Confirm that it equals the sine of 45°.

  /*
    double a = double.parse((1 / sqrt(2)).toStringAsFixed(3));
    double b = double.parse((sin(pi / 4)).toStringAsFixed(3));
    print("a : ${a}");
    print("b : ${b}");
    print(a == b);
  */

  /*
    // variables

    // In fact, Dart doesn’t have the
    // primitive variable types that exist in some languages.
    // Everything is an object. Although int and double
    // look like primitives, they’re subclasses of num, which
    // is a subclass of Object.

    int number = 10;
    print(number);

    print(10.isEven);
    print(3.14159.round());

    // Dart is a type-safe language. That means once you tell Dart
    // what a variable’s type is, you can’t change it later. Here’s an
    // example:
    //number = 3.129; // this is not allowed

    num x = 10;
    print(x);
    x = 3.128;
    print(x);
    //x = "eddb"; // this is not allowed

    // Dynamic type

    // This lets you assign any data type you like to your
    // variable, and the compiler won’t warn you about
    // anything.

    dynamic myVar;
    myVar = 10;
    print(myVar);
    myVar = 3.23;
    print(myVar);
    myVar = "DDU";
    print(myVar);

    // advisible that don't use dynamic type.

    var somenum = 20;
    somenum = 15;
    // somenum = 2.424; // not possible
    // somenum = "cdjn";// not possible

    var somenum2;
    somenum2 = 10;
    somenum2 = 8.232;
    somenum2 = "gsca";
    // when we declare variable with var without initialize then it act as dynamic type.

  */

  /*
    // const & final

    // const myConst; // we can't do this.we need to initialize this constant.
    const myConst = 10;
    // myConst = 0; // this is not allowed

    final myFinal;
    myFinal = 1;

    final hours = DateTime.now().hour;
    print(hours);
  */

  /*
    // Mini-exercises

    // 1. Declare a constant of type int called myAge and set it to
    // your age.

    const int myAge = 19;
    print(myAge);

    // 2. Declare a variable of type double called averageAge.
    // Initially, set the variable to your own age. Then, set it to
    // the average of your age and your best friend’s age.

    double averageAge = 20;
    averageAge = (19 + 20) / 2;
    print(averageAge);

    // 3. Create a constant called testNumber and initialize it
    // with whatever integer you’d like. Next, create another
    // constant called evenOdd and set it equal to testNumber
    // modulo 2. Now change testNumber to various numbers.
    // What do you notice about evenOdd?

    const testNumber = 4;
    const evenOdd = (testNumber % 2);
    print(evenOdd);
  
  */

  /*
    // Increment and decrement
    var counter = 0;
    counter += 2;
    print(counter); // 2
    counter -= 1;
    print(counter); // 1

    counter++;
    print(counter); // 2
    counter--;
    print(counter); // 1

    double myVal = 10;
    myVal *= 3; // 30
    print(myVal);
    myVal /= 2; // 15
    print(myVal);
  */

  /*
    // Challenges

    // Challenge 1: Variables

    // Declare a constant int called myAge and set it equal to your
    // age. Also declare an int variable called dogs and set that
    // equal to the number of dogs you own. Then imagine you
    // bought a new puppy and increment the dogs variable by one.

    const int myAge = 19;
    int dogs = 5;
    dogs++;
    print("My age is : ${myAge}");
    print("No. of dogs :${dogs}");

    // Challenge 2: Make it compile
    // Given the following code:
    // age = 16;
    // print(age);
    // age = 30;
    // print(age);
    // Modify the first line so that the code compiles. Did you use
    // var, int, finalor const?

    var age = 16;
    print(age);
    age = 30;
    print(age);

    // Challenge 3: Compute the answer
    // Consider the following code:
    const x = 46;
    const y = 10;
    // Work out what each answer equals when you add the
    // following lines of code to the code above:
    const answer1 = (x * 100) + y;
    const answer2 = (x * 100) + (y * 100);
    const answer3 = (x * 100) + (y / 10);
    print(answer1);
    print(answer2);
    print(answer3);

    // Challenge 4: Average rating
    // Declare three constants called rating1, rating2 and
    // rating3 of type double and assign each a value. Calculate
    // the average of the three and store the result in a constant
    // named averageRating.

    const double rating1 = 5;
    const double rating2 = 4.8;
    const double rating3 = 4;
    const averageRating = (rating1 + rating2 + rating3) / 3;
    print(averageRating);

    // Challenge 5: Quadratic equations
    // A quadratic equation is something of the form (a⋅x2 + b⋅x + c = 0).
    // The values of x which satisfy this can be solved by using the
    // equation
    // x = (-b ± sqrt(b2 - 4⋅a⋅c)) / (2⋅a).
    // Declare three constants named a, b and c of type double.
    // Then calculate the two values for x using the equation above
    // (noting that the ± means plus or minus, so one value of x for
    // each). Store the results in constants called root1 and root2
    // of type double.

    const double a = 1;
    const double b = -5;
    const double c = 6;
    final double root1 = (((-1) * b) + sqrt((b * b) - (4 * a * c))) / (2 * a);
    final double root2 = (((-1) * b) - sqrt((b * b) - (4 * a * c))) / (2 * a);

    print(root1);
    print(root2);

  */
}
