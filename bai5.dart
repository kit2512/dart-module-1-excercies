// program to find prime numbers in a 3x3 array

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
  const int rows = 3;
  const int cols = 4;

  var list1 = List.generate(rows, (e) => List.filled(cols, 0), growable: false);
  print("Nhap mang hai chieu: ");
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      print("A[${i}][${j}]:");
      list1[i][j] = int.parse(stdin.readLineSync() ?? "");
    }
  }

  print("cac so nguyen to:");
  for (var i in list1) {
    for (var j in i) {
      if (isPrime(j)) {
        print(j);
      }
    }
  }
}
