// program to calculate multiplication of 2 matrix

import 'dart:io';

void main() {
  print("Tinh tich hai ma tran A(mxn) va B(nxp): ");
  print("nhap m:");
  final int m = int.parse(stdin.readLineSync() ?? "");
  print("nhap n:");
  final int n = int.parse(stdin.readLineSync() ?? "");
  print("nhap p:");
  final int p = int.parse(stdin.readLineSync() ?? "");

  List A = List.generate(
      m,
      (i) => List<int>.generate(n, (j) {
            print("Nhap A[${i}][${j}]:");
            return int.parse(stdin.readLineSync() ?? "");
          }));

  List B = List.generate(
      n,
      (i) => List<int>.generate(p, (j) {
            print("Nhap B[${i}][${j}]:");
            return int.parse(stdin.readLineSync() ?? "");
          }));

  List C = List.generate(
      m,
      (i) => List<int>.generate(p, (j) {
            int sum = 0;
            for (int k = 0; k < n; k++) {
              sum += (A[i][k] * B[k][j]) as int;
            }
            return sum;
          }));

  for (var i in C) {
    print(i);
  }
}
