import 'dart:io';

void main() {
  try {
    stdout.write("Enter the number :");
    int number = int.parse(stdin.readLineSync()!);
    number == 0 ? throw Exception('input is zero') : print(number);
  } on FormatException catch (e) { // trigger when a non integer value is used given as input 
    print("Error occured in taking input : $e");
  } on Exception catch (e) { // as specified when input is 0
    print('Error occured for the value = $e');
  } catch (e) { /**It triggers for all other exceptions 
  check using a null check operator (Ctrl + Z for windows ) as input  */
    print('unexpected error = $e');
  }
}

/**To create a new exception we can implement the default
 * Exception interface 
 */

class NewException implements Exception{
  //body
}
