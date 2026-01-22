import 'dart:io';

void main() {
  String? str = stdin.readLineSync();

  if (str == null) return;
  int startIndex = (str.length - 3) ~/ 2;

  stdout.write(str.substring(startIndex, startIndex + 3));
}
