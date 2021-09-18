// program to find the occurences of a number in a list

import 'dart:io';

void main() {
  List<int> numbers = [];
  print("nhap so phan tu: ");
  int n = int.parse(stdin.readLineSync() ?? "");
  while (n-- != 0) {
    int val = int.parse(stdin.readLineSync() ?? "");
    numbers.add(val);
  }
  print("nhap k: ");
  int k = int.parse(stdin.readLineSync() ?? "");
  int count = 0;
  for (int i in numbers) {
    if (i == k) count++;
  }

  // another way
  // int count = numbers.where((element) => element == k).length;

  if (count == 0) {
    print("${k} khong xuat hien trong mang");
  } else {
    print("${k} xuat hien ${count} lan trong mang");
  }
}
