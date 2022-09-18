import 'package:lab3_tutorial3/lab3_tutorial3.dart' as lab3_tutorial3;

void main(List<String> arguments) {
  const letter = 'a';
  print(letter);

  var salutation = 'Hello!';
  print(salutation.codeUnits);

  // UTF-16 has a special way of encoding code points higher
  // than 65,536 by using two code units called .
  const dart = '🎯';
  print(dart.codeUnits);

  const dart1 = '🎯';
  print(dart1.runes);

  // Unicode grapheme clusters

  // Unfortunately, language is messy and so is Unicode. Have a
  // look at this example:

  const flag = ' ';
  print(flag.runes);

  const family = '.';
  print(family.runes);
}
