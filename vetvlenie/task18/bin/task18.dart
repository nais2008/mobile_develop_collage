import 'dart:io';

void main() {
  String? str = stdin.readLineSync();

  if (str == null) return;

  int dollarPos = str.indexOf("\$");
  int rPos = str.indexOf("R");

  if (dollarPos == -1 || rPos == -1 || rPos <= dollarPos + 1) return;

  String usdStr = str.substring(dollarPos + 1, rPos);
  String rubStr = str.substring(rPos + 1);

  double? usdAmount = double.tryParse(usdStr);
  double? rubAmount = double.tryParse(rubStr);

  if (usdAmount == null || rubAmount == null || usdAmount == 0) return;

  double rubPerUsd = rubAmount / usdAmount;

  String? amountInput = stdin.readLineSync();

  if (amountInput == null) return;

  if (amountInput.endsWith("\$")) {
    String numberStr = amountInput.substring(0, amountInput.length - 1);
    double? usd = double.tryParse(numberStr);

    if (usd == null) return;

    double rub = usd * rubPerUsd;
    print("${rub.toStringAsFixed(2)}R");

  } else if (amountInput.endsWith("R")) {
    String numberStr = amountInput.substring(0, amountInput.length - 1);
    double? rub = double.tryParse(numberStr);

    if (rub == null) return;

    double usd = rub / rubPerUsd;
    print("${usd.toStringAsFixed(2)}\$");
  }
}
