import 'dart:io';

void main() {
  List<int> list = [];

  while (true) {
    String? input = stdin.readLineSync();
    int? num = int.tryParse(input ?? "");

    if (num == null) continue;

    if (num == 0) break;

    list.add(num);
  }

  for (var element in list) {
    stdout.write("$element ");
  }

  print("");
  int? delNum = int.tryParse(stdin.readLineSync() ?? "");
  list.removeWhere((el) => el == delNum);

  for (var element in list) {
    stdout.write("$element ");
  }
}
