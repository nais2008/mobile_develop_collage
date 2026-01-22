import 'dart:io';

List<int> createArr(int start, int end, int shag) {
  List<int> arr = [];

  for (var i = start; i <= end; i += shag) {
    arr.add(i);
  }

  return arr;
}

void main() {
  int a = int.parse(stdin.readLineSync() ?? "");
  int b = int.parse(stdin.readLineSync() ?? "");
  int c = int.parse(stdin.readLineSync() ?? "");

  for (var element in createArr(a, b, c)) {
    stdout.write("$element ");
  }
}
