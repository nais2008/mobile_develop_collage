import 'dart:io';

void main() {
  String? str = stdin.readLineSync();
  String? s = stdin.readLineSync();

  if (s == null || str == null) {
    return;
  }

  stdout.write("${str.contains(s).toString()} \t ${str.lastIndexOf(s)}");
}
