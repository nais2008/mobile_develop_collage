import 'dart:io';

void main() {
  List<int> list = [];

  while (true) {
    int? num = int.tryParse(stdin.readLineSync() ?? "");

    if (num == null) continue;

    if (num == 0) break;

    list.add(num);
  }

  for (var element in list) {
    stdout.write("$element ");
  }

  print("");

  int? n = int.tryParse(stdin.readLineSync() ?? "");

  if (n == null) return;

  List<int> newList = [];

  for (var element in list) {
    if (element > n) newList.add(element);
  }

  for (var element in newList) {
    stdout.write("$element ");
  }
}
