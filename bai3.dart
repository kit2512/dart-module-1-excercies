// program to find prime numbers in a list of integers
import 'dart:io';

bool isPrime(int n) {
  if (n < 2) return false;
  if (n == 2 || n == 3) return true;
  for (int i = 2; i <= n ~/ 2; i++) {
    if (n % i == 0) return false;
  }
  return true;
}

void main() {
  List<int> numbers = [];
  print("nhap so phan tu: ");
  int n = int.parse(stdin.readLineSync() ?? "");
  while (n-- != 0) {
    int val = int.parse(stdin.readLineSync() ?? "");
    numbers.add(val);
  }
  print("cac so nguyen to: ");
  print(numbers.where((element) => isPrime(element) == true));
}
