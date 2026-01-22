import 'dart:io';

void main() {
  int? i1 = int.tryParse(stdin.readLineSync() ?? "");
  int? i2 = int.tryParse(stdin.readLineSync() ?? "");

  if (i1 == null || i2 == null) return;

  if (i1 == i2) {
    print("True");
  } else {
    print("False");
  }

  switch (i1 - i2) {
    case 0:
      print("True");
      break;
    default:
      print("False");
      break;
  }

  print(i1 == i2 ? "True" : "False");
}
