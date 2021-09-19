// program to determine if two square matrixes are inverse of each other

import 'dart:io';

bool isIdentityMatrix(List C, int n) {
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      if (i != j) {
        if (C[i][j] != 0) return false;
      } else {
        if (C[i][j] != 1) return false;
      }
    }
  }
  return true;
}

void main() {
  print("Kiem tra hai ma tran (nxn) co nghich dao khong");
  print("nhap n:");
  final int n = int.parse(stdin.readLineSync() ?? "");

  List A = List.generate(
      n,
      (i) => List<double>.generate(n, (j) {
            print("Nhap A[${i}][${j}]:");
            return double.parse(stdin.readLineSync() ?? "");
          }));

  List B = List.generate(
      n,
      (i) => List<double>.generate(n, (j) {
            print("Nhap B[${i}][${j}]:");
            return double.parse(stdin.readLineSync() ?? "");
          }));

  List C = List.generate(
      n,
      (i) => List<double>.generate(n, (j) {
            double sum = 0;
            for (int k = 0; k < n; k++) {
              sum += (A[i][k] * B[k][j]) as double;
            }
            return sum;
          }));
  if (isIdentityMatrix(C, n)) {
    print("Hai ma tran nghich dao");
  } else {
    print("Hai ma tran khong nghich dao");
  }
}
