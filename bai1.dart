import "dart:io";
/**
 * get a list of intergers from keyboard then sort it
 * according to the option passed from keyboard
 */

void main() {
  List<int> numbers = [];
  print("Nhap so phan tu: ");
  int n = int.parse(stdin.readLineSync() ?? "");
  while (n-- != 0) {
    int val = int.parse(stdin.readLineSync() ?? "");
    numbers.add(val);
  }
  print("Lua chon: \n1.Tang \n2. Giam");
  var option = stdin.readLineSync() ?? "";
  while (true) {
    switch (option) {
      case "1":
        numbers.sort();
        print(numbers);
        break;
      case "2":
        numbers.sort((a, b) => b - a);
        print(numbers);
        break;
      case "3":
        exit(0);
      default:
        print("nhap sai, nhap lai");
        break;
    }
  }
}
