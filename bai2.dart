import "dart:io";

void main() {
  List<int> numbers = [];
  print("So phan tu: ");
  int n = int.parse(stdin.readLineSync() ?? "");
  while (n-- != 0) {
    int value = int.parse(stdin.readLineSync() ?? "");
    numbers.add(value);
  }

  int sum = 0;
  for (var i in numbers) {
    sum += i;
  }
  print(sum);

  // another way to calculate sum of a list is using reduce() method
  // print(numbers.reduce((value, element) => value + element));
}
