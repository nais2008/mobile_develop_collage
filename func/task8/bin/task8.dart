import 'dart:io';

bool isPalindrome(String str) => str == str.split("").reversed.join();

void main() {
  print(isPalindrome(stdin.readLineSync() ?? "").toString());
}
