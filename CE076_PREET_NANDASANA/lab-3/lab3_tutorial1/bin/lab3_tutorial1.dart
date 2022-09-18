import 'package:lab3_tutorial1/lab3_tutorial1.dart' as lab3_tutorial1;
import 'dart:math';

void main(List<String> arguments) {
  /*
    // Simplest while loop
    while (true) {
      print(1);
    }
    // this is infinite loop

    // As below we can't use 1 or 0 in condition 
    // Conditions must have a static type of 'bool'.
    // In other languages like c, c++ and other we can use 1 as true and 0 as false

    // while (1) {
    //   print(1);
    // }

    // So in dart we can't use 1 and 0 as true and flase in conditions.exa: if,else if,while,for,do while ,...
  */

  /*
    // while loop with break
    var sum = 1;
    while (sum < 10) {
      sum += 4;
      print(sum);
      if (sum == 9) {
        print("This is 9");
        break;
      }
    }
  */

  /*
    // do while loop
    // execute atlest once

    int sum = 11;
    do {
      sum += 4;
      print(sum);
    }while (sum < 10);
  */

  /*
    // Random

    // To create a non-negative random integer uniformly distributed in the range from 0, inclusive, to max, exclusive, use nextInt(int max).
    var intValue = Random().nextInt(10); // Value is >= 0 and < 10.
    intValue = Random().nextInt(100) + 50; // Value is >= 50 and < 150.
    print(intValue);

    // To create a non-negative random floating point value uniformly distributed in the range from 0.0, inclusive, to 1.0, exclusive, use nextDouble.
    var doubleValue = Random().nextDouble(); // Value is >= 0.0 and < 1.0.
    doubleValue = Random().nextDouble() * 256; // Value is >= 0.0 and < 256.0.
    print(doubleValue);

    // To create a random Boolean value, use nextBool.
    var boolValue = Random().nextBool(); // true or false, with equal chance.
    print(boolValue);

  */

  /*
    // A random interlude
    final random = Random();
    int c = 5;
    while (c > 0) {
      print(random.nextInt(32));
      c--;
    }

    while (true) {
      if (random.nextInt(6) + 1 != 6) {
        print("Not a six");
      } else {
        print("Finally you got 6");
        break;
      }
    }
  */

  /*
    // for loop with continue keyword

    for(int i=0;i<5;i++){
      if(i == 3)
        continue;
      print(i);
    }
  */

  /*
    // for-in loop

    String str = "Preet";
    for (var s in str.runes) {
      print(String.fromCharCode(s));
    }

    const myString = 'I ❤ Dart';
    for (var codePoint in myString.runes) {
      print(String.fromCharCode(codePoint));
    }

    const myList = [1, 2, 3, "Preet"];
    for (var a in myList) {
      print(a);
    }
  */

  /*
    // for each loop

    const myNumbers = [1, 2, 3];
    // const myNumbers = [1, 2, 3, "Preet"];
    myNumbers.forEach((number) => print(number));

    myNumbers.forEach((number) {
      print(number);
    });

    myNumbers.forEach(print);

  */

  /*

    // Mini-exercises

    // 1. Create a variable named counter and set it equal to 0.
    // Create a while loop with the condition counter < 3.
    // The loop body should print out “counter is X” (where X
    // is replaced with the value of counter) and then
    // increment counter by 1.

    var counter = 0;
    while (counter < 3) {
      print("counter is ${counter}");
      counter++;
    }

    // 2. Write a for loop starting at 1 and ending with 10
    // inclusive. Print the square of each number.

    for (num i = 1; i <= 10; i++) {
      print(i * i);
    }

    // 3. Write a for-in loop to iterate overthe following
    // collection of numbers. Print the square root of each
    // number.

    const numbers = [1, 2, 4, 7];
    for (var numb in numbers) {
      print(sqrt(numb));
    }

    // 4. Repeat Mini-exercise 3 using a forEach loop.

    numbers.forEach((number) => (print(sqrt(number))));

  */

  /*
    // Challenges

    // Challenge 1: Find the error
    // What’s wrong with the following code?

    const firstName = 'Bob';
    if (firstName == 'Bob') {
      const lastName = 'Smith';
    } else if (firstName == 'Ray') {
      const lastName = 'Wenderlich';
    }

    // Challenge 2: Boolean challenge
    // In each of the following statements, what is the value of the
    // Boolean expression?

    print(true && true);
    print(false || false);
    print((true && 1 != 2) || (4 > 3 && 100 < 1));
    print(((10 / 2) > 3) && ((10 % 2) == 0));

    // Challenge 3: Next power of two
    // Given a number, determine the next power of two above or
    // equal to that number. Powers of two are the numbers in the
    // sequence of 21, 22, 23, and so on. You may also recognize the
    // series as 1, 2, 4, 8, 16, 32, 64...

    const number = 5;
    num number1 = pow(2, number);
    print(number1);
    print(number1 >= number);

    // Challenge 4: Fibonacci
    // Calculate the nth Fibonacci number. The Fibonacci sequence
    // starts with 1, then 1 again, and then all subsequent numbers
    // in the sequence are simply the previous two values in the
    // sequence added together (1, 1, 2, 3, 5, 8...). You can get a
    // refresher here:

    const n = 10;
    List<int> numb = [];
    for (int i = 0; i < n; i++) {
      if (i <= 1) {
        numb.add(1);
        // numb[i] = 1;
      } else {
        numb.add(numb[i - 1] + numb[i - 2]);
      }
    }
    numb.forEach(print);

    // Challenge 5: How many times?
    // In the following for loop, what will be the value of sum, and
    // how many iterations will happen?

    var sum = 0;
    for (var i = 0; i <= 5; i++) {
      sum += i;
    }
    print(sum);
    // 6 iterations happen

    // Challenge 6: The final countdown
    // Print a countdown from 10 to 0.

    for (int i = 10; i >= 0; i--) {
      print(i);
    }

    // Challenge 7: Print a sequence
    // Print the sequence 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6,
    // 0.7, 0.8, 0.9, 1.0.

    num num2 = 0.0;
    for (int i = 0; i <= 10; i++) {
      print(num2.toStringAsFixed(1));
      num2 += 0.1;
    }
  */
}
