import 'access_specifiers.dart'; //importing the file

//Check access_specifiers.dart befor this
void main() {
  Sample obj = Sample("Vimal Babu", 22);
  // print(obj._name);
  /**Here the above code gives compile time error , the the 
   * below code works fine , since age is not private in Sample
   */
  print(obj.age); //22

  print(obj.getPrivate);//Vimal Babu
  /**we can use the getter or any other public method to access 
   * the private properties 
   */
}
/**The concept of privacy is same for methods and even in the
 * case of inheritance . 
 */
