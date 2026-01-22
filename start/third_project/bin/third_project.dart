import 'dart:io';

void main() {
  String? str1 = stdin.readLineSync();
  String? str2 = stdin.readLineSync();

  if (str1 == null || str2 == null) return;

  stdout.write(
    str1.substring(0, 1) +
    str2.substring(0, 1) +
    str1.substring(str1.length ~/ 2, str1.length ~/ 2 + 1) +
    str2.substring(str2.length ~/ 2, str2.length ~/ 2 + 1) +
    str1.substring(str1.length - 1) +
    str2.substring(str2.length - 1),
  );
}
