// program to sort a 3x3 array

import 'dart:io';

void main() {
  const int rows = 3;
  const int columns = 3;
  List matrix = List.generate(
      rows,
      (i) => List<int>.generate(columns, (j) {
            print("nhap A[${i}][${j}]: ");
            return int.parse(stdin.readLineSync() ?? "");
          }));

  List<int> sortedList = [for (var row in matrix) ...row];
  sortedList.sort();
  int index = 0;
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < columns; j++) {
      matrix[i][j] = sortedList[index++];
    }
  }

  for (var i in matrix) {
    print(i);
  }
}
