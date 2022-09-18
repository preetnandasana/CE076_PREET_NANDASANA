import 'package:lab2_tutorial4/lab2_tutorial4.dart' as lab2_tutorial4;

const global = "Hello, world";

enum Weather {
  sunny,
  snowy,
  cloudy,
  rainy,
}

enum AudioState {
  playing,
  paused,
  stopped,
}

void main(List<String> arguments) {
  // print('Hello world: ${lab2_4.calculate()}!');

  //const doesOneEqualTwo = (1 == 2);
  //print(doesOneEqualTwo);
  // const myAge = 20;
  // const maryAge = 30;
  // const isTeenager =
  //     (13 <= myAge && myAge <= 19) && (13 <= maryAge && maryAge <= 19);
  // print(isTeenager);

  // const reader = "anish";
  // const ray = "Ray Wenderlich";
  // const isSame = (reader == ray);
  // print(isSame);

  // if (2 > 1) {
  //   print('Yes, 2 is greater than 1.');
  // }

  // const trafficLight = 'yellow';
  // var command = '';
  // if (trafficLight == 'red') {
  //   command = 'Stop';
  // } else if (trafficLight == 'yellow') {
  //   command = 'Slow down';
  // } else if (trafficLight == 'green') {
  //   command = 'Go';
  // } else {
  //   command = 'INVALID COLOR!';
  // }
  // print(command);

  /*
    const local = "Hello, main";
    if (2 > 1) {
      const insideIf = 'Hello, anybody?';
      print(global);
      print(local);
      print(insideIf);
    }

    print(global);
    print(local);
    //print(insideIf); //Error

    const score = 83;
    const message = (score >= 60) ? 'You passed' : 'You failed';
    print(message);

    const weather = 'cloudy';
    switch (weather) {
      case 'sunny':
        print('Put on sunscreen.');
        break;
      case 'snowy':
        print('Get your skis.');
        break;
      case 'cloudy':
      case 'rainy':
        print('Bring an umbrella.');
        break;
      default:
        print("I'm not familiar with that weather.");
    }

    const weatherToday = Weather.cloudy;
    switch (weatherToday) {
      case Weather.sunny:
        print("Put on sunscreen");
        break;
      case Weather.snowy:
        print("Put on skies");
        break;
      case Weather.cloudy:
      case Weather.rainy:
        print("Take a umbrella");
        break;
    }

    const audioState = AudioState.paused;
    switch (audioState) {
      case AudioState.playing:
        print("It is playing");
        break;
      case AudioState.paused:
        print("It is paused");
        break;
      case AudioState.stopped:
        print("It is stopped");
        break;
    }
  */

  /*
  // Mini-excercises

  // 1. Create a constant called myAge and set it to your age.
  // Then, create a constant named isTeenager that uses
  // Boolean logic to determine if the age denotes someone
  // in the age range of 13 to 19.
  const myAge = 19;
  const isTeenager = (myAge >= 13 && myAge <= 19);
  print(isTeenager ? 'Teenager' : 'Not a teenager');

  // 2. Create another constant named maryAge and set it to 30.
  // Then, create a constant named bothTeenagers that uses
  // Boolean logic to determine if both you and Mary are
  // teenagers.

  const maryAge = 30;
  const bothTeenagers =
      (myAge >= 13 && myAge <= 19) && (maryAge >= 13 && maryAge <= 19);
  print(bothTeenagers ? 'Both are Teenager' : 'Not teenagers');

  // 3. Create a String constant named reader and set it to
  // your name. Create another String constant named ray
  // and set it to 'Ray Wenderlich'. Create a Boolean
  // constant named rayIsReader that uses string equality
  // to determine if reader and ray are equal.

  const reader = "Preet";
  const ray = "Ray Wenderlich";
  const rayIsReader = (reader == ray);
  print(rayIsReader);

  */

  // Mini-exercises
  // 1. Create a constant named myAge and initialize it with
  // your age. Write an if statement to print out “Teenager”
  // if your age is between 13 and 19, and “Not a teenager” if
  // your age is not between 13 and 19.

  const myAge = 19;
  if (myAge >= 13 && myAge <= 19) {
    print("Teenager");
  } else {
    print("Not a Teenager");
  }

  // 2. Use a ternary conditional operator to replace the else-
  // if statement that you used above. Set the result to a
  // variable named answer.

  var answer = (myAge >= 13 && myAge <= 19);
  print(answer ? 'Teenager' : 'Not a teenager');

  // Mini-exercises
  // 1. Make an enum called AudioState and give it values
  // to represent playing, paused and stopped states.

  // 2. Create a constant called audioState and give it an
  // AudioState value. Write a switch statement that
  // prints a message based on the value.

  const audioState = AudioState.paused;
  switch (audioState) {
    case AudioState.playing:
      print("It is playing");
      break;
    case AudioState.paused:
      print("It is paused");
      break;
    case AudioState.stopped:
      print("It is stopped");
      break;
  }
}
