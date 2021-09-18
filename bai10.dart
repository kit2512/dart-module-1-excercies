import 'dart:io';

void main() {
  print("nhap xau 1: ");
  String str1 = stdin.readLineSync() ?? "";
  String str2 = stdin.readLineSync() ?? "";

  String str3 = str1 + str2;
  print(str3);
}
