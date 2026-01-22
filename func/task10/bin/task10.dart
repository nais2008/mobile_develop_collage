import 'dart:io';

int customPow(int n) {
  return n * n * n;
}

void main() {
  print(customPow(int.parse(stdin.readLineSync() ?? "")));
}
