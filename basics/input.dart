import 'dart:io';

void main() {
  stdout.write("Enter ypur name :");
  String name = stdin.readLineSync()!;
  /**Here ! is the bang operator used to say the compailer 
   * that the input value will not be a null . Then only a value 
   * can be read to a String variable since string is not nullable 
   * In any point if null value is read , it will cause runtime error
   */
  print('Welcome $name');
}
