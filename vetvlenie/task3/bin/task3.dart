void main() {
  List<int> list = [1, 2, 3, 4, 5, 1];

  if (list[0] == list[list.length - 1]) {
    print("True");
  } else {
    print("False");
  }

  switch (list[0] - list[list.length - 1]) {
    case 0:
      print("True");
      break;
    default:
      print("False");
      break;
  }

  print(list[0] == list[list.length - 1] ? "True" : "False");
}
