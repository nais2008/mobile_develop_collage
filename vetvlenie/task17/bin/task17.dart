import 'dart:io';

void main() {
  String? str = stdin.readLineSync();

  if (str == null) return;

  if (str.endsWith("c")) {
    int num = int.parse(str.substring(0, str.length - 1));

    print("${(num * 9 / 5) + 32}f");
  } else if (str.endsWith("f")) {
    int num = int.parse(str.substring(0, str.length - 1));

    print("${(num - 32) * 5 / 9}c");
  }

  String lastChar = str.substring(str.length - 1);

  switch (lastChar.toLowerCase()) {
    case "c":
      int num = int.parse(str.substring(0, str.length - 1));
      print("${(num * 9 / 5) + 32}f");
      break;
    default:
      int num = int.parse(str.substring(0, str.length - 1));
      print("${(num - 32) * 5 / 9}c");
      break;
  }
}
