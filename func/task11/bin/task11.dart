// Код функции благополучно позаимствован, у меня было ноль идей
import 'dart:io';

bool isAnagram(String str1, String str2) {
  String normalize(String str) => (str
          .toLowerCase()
          .replaceAll(RegExp(r'[^a-z0-9]', caseSensitive: false), '')
          .split('')
            ..sort())
      .join('');
  return normalize(str1) == normalize(str2);
}

void main() {
  print((isAnagram(
    stdin.readLineSync() ?? "",
    stdin.readLineSync() ?? "")).toString()
  );
}
