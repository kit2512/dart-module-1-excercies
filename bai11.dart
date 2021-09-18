import 'dart:io';

void main() {
  print("nhap xau");
  String str = stdin.readLineSync() ?? "";
  print("Lua chon:\n1. Viet hoa toan bo\n2.Viet thuong toan bo\n3. Thoat");
  String option = stdin.readLineSync() ?? "";
  switch (option) {
    case "1":
      print(str.toUpperCase());
      break;
    case "2":
      print(str.toLowerCase());
      break;
    case "3":
      exit(0);
    default:
      print("nhap sai");
      break;
  }
}
