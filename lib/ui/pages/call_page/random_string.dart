library random_string;

import 'dart:math';

const asciiStart = 33;
const asciiEnd = 126;
const numericStart = 48;
const numericEnd = 57;
const lowerAlphaStart = 97;
const lowerAlphaEnd = 122;
const upperAlhaStart = 65;
const upperAlphaEnd = 90;

/// Generates a random integer where [from] <= [to].
int randomBetween(int from, int to) {
  if (from > to) throw Exception('$from cannot be > $to');
  var rand = Random();
  return ((to - from) * rand.nextDouble()).toInt() + from;
}

/// Generates a random string of [length] with characters
/// between ascii [from] to [to].
/// Defaults to characters of ascii '!' to '~'.
String randomString(int length, {int from = asciiStart, int to = asciiEnd}) {
  return String.fromCharCodes(
      List.generate(length, (index) => randomBetween(from, to)));
}

/// Generates a random string of [length] with only numeric characters.
String randomNumeric(int length) =>
    randomString(length, from: numericStart, to: numericEnd);
