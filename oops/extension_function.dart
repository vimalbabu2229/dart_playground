/**Extension functions are used to define new functions to an 
 * existing class without changing the class body 
 */
void main() {
  /**Here we are trying to add a new syntax for parsing the 
   * string to a number like 
   *          'string'.parseInt();
   * actually it is not an inbuild function,
   * but we can make it possible using the extension function 
   */

  print('2'.parseInt() + 5); //7
  print('3'.getter); //3
}

/**Name of the extension is optional , it can be used to 
 * avoid api conflicts 
 */
/**reference: https://dart.dev/language/extension-methods */
extension MyExtension on String {
  /**Extensions can't declare instance fields */
  int parseInt() {
    return int.parse(this);
  }
  /**Extensions can define not just methods, but also other 
   * members such as getter, setters, and operators */

  get getter {
    return this;
  }
}
