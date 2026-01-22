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

  list.removeWhere((el) => el % n == 0);

  stdout.write(list.reduce((prev, el) => prev + el));
}
