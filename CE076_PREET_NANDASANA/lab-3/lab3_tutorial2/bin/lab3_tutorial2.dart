import 'package:lab3_tutorial2/lab3_tutorial2.dart' as lab3_tutorial2;
import 'dart:math';

String youAreWonderful(String name) {
  return "You’re wonderful, $name";
}

String youAreWonderfulNewVersion(String name, int numberPeople) {
  return "You’re wonderful, $name. $numberPeople people think so.";
}

String youAreWonderfulVersion3({required String name, int numberPeople = 30}) {
  return "You’re wonderful, $name. $numberPeople people think so.";
}

void main(List<String> arguments) {
  // functions

  /*
  
    // The return type, function name and parameters are
    // collectively known as the . The code
    // between the braces is known as the .

    const input = 12;
    final output = compliment(input);
    print(output);

    // functions using multiple parameters
    helloPersonAndPet("Raj", "tommy");
    // helloPersonAndPet(); // this give us an error that arguments are not defineed.

  */

  /*

    // Making parameters optional

    String name = fullName("Preet", "Nandasana");
    print(name);
    String name1 = fullName("Preet", "Nandasana", "CE");
    print(name1);

  */

  /*

    // Providing default values

    print(withinTolerance(5)); // true
    print(withinTolerance(15)); // false
    print(withinTolerance(9, 7, 11)); // true
    print(withinTolerance(9, 7)); // true

  */

  /*

    // Naming parameters

    print(withinTolerance1(9, min: 7, max: 11)); // true
    print(withinTolerance1(9, max: 11, min: 7)); // true
    print(withinTolerance1(5)); // true
    print(withinTolerance1(15)); // false
    print(withinTolerance1(5, min: 7)); // false
    print(withinTolerance1(5, max: 20)); // true

  */

  /*

    // Making named parameters required
    print(withinTolerance2(value: 5)); // true
    print(withinTolerance2(value: 5, min: 6)); // false
    print(withinTolerance2(value: 5, max: 5)); // true

  */

  /*

    // Optional types
    String v = compliment1(23);
    print(v);

  */

  /*
    // Mini-exercises

    // 1. Write a function named youAreWonderful, with a String
    // parameter called name. It should return a string using
    // name, and say something like “You’re wonderful, Bob.”

    print(youAreWonderful("Bob"));

    // 2. Add another int parameter to that function called
    // numberPeople so that the function returns something
    // like “You’re wonderful, Bob. 10 people think so.”

    print(youAreWonderfulNewVersion("Bob", 100));

    // 3. Make both inputs named parameters. Make name
    // required and set numberPeople to have a default of 30.

    print(youAreWonderfulVersion3(name: "Preet"));

  */

  /*
    // Anonymous functions

    // All the functions you’ve seen previously in this chapter, such
    // as main, hello, and withinTolerance are
    // which means, well, they have a name.

    // But not every function needs a name. If you remove the
    // return type and the function name, then what you have left
    // is an anonymous function:

    // The return type will be inferred from the return value of the
    // function body, String in this case.
    // So, why all the stealth by being anonymous, you ask? Are
    // functions concerned about their online privacy, too? Well,
    // that’s not quite it. Sometimes you only need functions in one
    // specific spot in your code, for one specific reason, and there’s
    // no reason to give that function a name. You’ll see some
    // examples of this soon.

  */

  /*
    // Assigning functions to variables

    int number = 4;
    String greeting = 'hello';
    bool isHungry = true;
    Function multiply = (int a, int b) {
      return a * b;
    };
    print(multiply(2, 4));

    // The type of multiply is Function, the same way that number
    // is int, greeting is String and isHungry is bool. On the
    // right hand side of each assignment, you have literal values: 4
    // is an integer literal, 'hello'is a string literal, true is a
    // Boolean literal, and the anonymous function you see above
    // is a function literal.

  */

  /*
    // Function myFunction = int multiply(int a, int b)
    // {
    //   return a * b;
    // };

    //  we can do like above.Error: A function expression can't have a name.
  */

  /*

    // Passing functions to functions
    Function myFun = () {
      print("This is annonymous function");
    };
    void namedFunction(Function anonymousFunction) {
      anonymousFunction();
    }

    namedFunction(myFun);

  */

  /*

    // Returning functions from functions

    Function namedFunction() {
      return () {
        print('hello');
      };
    }

    var myFun = namedFunction();
    myFun();

    Function applyMultiplier(num multiplier) {
      return (num value) {
        return value * multiplier;
      };
    }

    final triple = applyMultiplier(3);
    print(triple(6));
    print(triple(14.0));

  */

  /*
    // Using anonymous functions

    final multiply = (int a, int b) {
      return a * b;
    };

    print(multiply(2, 3));
  */

  /*
    
    // Anonymous functions in forEach loops

    const numbers = [1, 2, 3];

    numbers.forEach((number) {
      final tripled = number * 3;
      print(tripled);
    });

  */

  /*

    // Closures and scope

    var counter = 0;
    final incrementCounter = () {
      counter += 1;
    };

    incrementCounter();
    incrementCounter();
    incrementCounter();
    incrementCounter();
    incrementCounter();
    print(counter); // 5

    Function countingFunction() {
      var counter = 0;
      final incrementCounter = () {
        counter += 1;
        return counter;
      };
      return incrementCounter;
    }

    final counter1 = countingFunction();
    final counter2 = countingFunction();

    print(counter1()); // 1
    print(counter2()); // 1
    print(counter1()); // 2
    print(counter1()); // 3
    print(counter2()); // 2

  */

  /*
    // Mini-exercises

    // 1. Change the youAreWonderfulfunction in the first mini-
    // exercise of this chapter into an anonymous function.Assign it to a variable called wonderful.

    var wonderful = (String name, int numberPeople) {
      return "You’re wonderful, $name. $numberPeople people think so.";
    };
    print(wonderful("Preet", 288));

    // 2. Using forEach, print a message telling the people in the
    // following list that they’re wonderful.

    const people = ['Chris', 'Tiffani', 'Pablo'];

    people.forEach((person) {
      print("You’re wonderful, $person");
    });
  */

  /*
    // Arrow functions

    int add(int a, int b) => a + b;
    print(add(3, 5));

    var fun = (number) => print(number);
    fun(12);

  */

  /*

    // Mini-exercise

    // Change the forEach loop in the previous “You’re wonderful”
    // mini-exercise to use arrow syntax.

    const people = ['Chris', 'Tiffani', 'Pablo'];
    people.forEach((person) => print("You’re wonderful, $person"));

  */

  // Challenges

  // Challenge 1: Prime time
  // Write a function that checks if a number is prime.

  bool isPrime(int number) {
    bool flag = true;
    for (int i = 2; i <= sqrt(number); i++) {
      if (number % 2 == 0) {
        flag = false;
        break;
      }
    }
    return flag;
  }

  int a = 4;
  bool ans = isPrime(a);
  if (ans == true) {
    print("$a is prime number");
  } else {
    print("$a is not a prime number");
  }

  // Challenge 2: Can you repeat that?

  int repeatTask(int times, int input, Function task) {
    int ans = input;
    for (int i = 0; i < times; i++) ans = task(ans);
    return ans;
  }

  num power(int a) {
    num answer = pow(a, 2);
    return answer;
  }

  print(repeatTask(4, 2, power));

  // Challenge 3: Darts and arrows
  var repeatTask1 = (int times, int input, Function task) {
    int ans = input;
    for (int i = 0; i < times; i++) ans = task(ans);
    return ans;
  };
  num power1(int a) => pow(a, 2);
  print(repeatTask1(4, 2, power1));
}

String compliment(int number) {
  return '$number is a very nice number.';
}

void helloPersonAndPet(String person, String pet) {
  print('Hello, $person, and your furry friend,$pet!');
}

// Making parameters optional
String fullName(String first, String last, [String? title]) {
  if (title != null) {
    return '$title $first $last';
  } else {
    return '$first $last';
  }
}

// Providing default values
bool withinTolerance(int value, [int min = 0, int max = 10]) {
  return min <= value && value <= max;
}

// Naming parameters
bool withinTolerance1(int value, {int min = 0, int max = 10}) {
  return min <= value && value <= max;
}

// Making named parameters required
bool withinTolerance2({
  required int value,
  int min = 0,
  int max = 10,
}) {
  return min <= value && value <= max;
}

// Dart is an optionally-typed language, so it’s possible to omit
// the types from your function declaration. In that case, the
// function would look like this:
compliment1(number) {
  return '$number is a very nice number.';
}
// Dart can infer that the return type here is String, but it has
// to fall back on dynamic forthe unknown parameter type. The
// following function is the equivalent of what Dart sees:
// String compliment(dynamic number) {
//  return '$number is a very nice number.';
// }