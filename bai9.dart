import 'dart:io';

void main() {
  print("nhap xau: ");
  String str = stdin.readLineSync() ?? "";
  print("nhap ki tu: ");
  String chr = stdin.readLineSync() ?? "";
  int count = 0;
  for (int i = 0; i < str.length; i++) {
    if (str[i] == chr) {
      count++;
    }
  }

  // another way
  // int count = str.split("").where((e) => e == chr).length;

  if (count == 0) {
    print("${chr} khong co trong xau");
  } else {
    print("${chr} xuat hien ${count} lan trong xau");
  }
}
