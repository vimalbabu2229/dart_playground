//program  to find factorial
import 'dart:io';

void main() {
  try {
    stdout.write("Enter a number : ");
    int num = int.parse(stdin.readLineSync()!);
    print(fact(num));
  } catch (e) {
    print('Error : $e');
  }
}

int fact(int num) {
  return num == 0 ? 1 : num * fact(num - 1);
}
