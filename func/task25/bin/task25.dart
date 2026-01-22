import 'dart:io';
import 'dart:math';

int sum(int n, int k) {
  int s = 0;

  for (int i = 0; i <= n; i++) {
    s += pow(i, k).toInt();
  }

  return s;
}

void main() {
  stdout.write(
    sum(
      int.parse(stdin.readLineSync() ?? ""),
      int.parse(stdin.readLineSync() ?? ""),
    ),
  );
}
