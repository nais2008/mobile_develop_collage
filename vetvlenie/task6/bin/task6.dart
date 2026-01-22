import 'dart:io';

void main() {
  int? n = int.tryParse(stdin.readLineSync() ?? "");

  if (n == null) return;

  if (n % 4 == 0 && n % 100 != 0 || n % 400 == 0) {
    print("YES");
  } else {
    print("NO");
  }

  print((n % 4 == 0 && n % 100 != 0 || n % 400 == 0) ? "YES" : "NO");
}
