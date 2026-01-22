import 'dart:io';

void main() {
  List<double> list = [];

  while (true) {
    double? num = double.tryParse(stdin.readLineSync() ?? "");

    if (num == null) continue;

    if (num == 0) break;

    list.add(num);
  }

  for (var element in list) {
    stdout.write("$element ");
  }

  print("");

  List<int> newList = [];

  for (var element in list) {
    newList.add(element.ceil());

    stdout.write("${element.ceil()} ");
  }
}
