void main() {
  var temp = [1, 3];
  const List x = [10];

  // x[0] = 22; //Error
  // print('value of cosnt  x = $x'); //Error

  /**At compile time it doesn't shows error but at runtime 
   * it shows error 'Cannot modify an unmodifiable list'
  */

  // const List z = temp;//Error

  /**Const should be initialized and that too with a constant value
   * cannot be initialized with another variable .
   */

  final result = square(2);
  print(result);//4
  // const result2 = square(2);//Error
  /**So const cannot be changed even in runtime but the final can */

  // const p;//Error
  final q;
  q = 22;
  /**Const should be initialized but for the final we can assign later ,
   * but only for once .
   */

  final List y = temp; //can assign a vaiable
  print(y); //[1, 3]
  y[0] = 33;
  print(y); //[33, 3]
  // y = [21, 22];//Error
  /**So value of final in the list can be modified but cannot be reassigned ,
   * because while reassigning the list the memory address stored in the variable 
   * changes .But it is not allowed in const as mentioned above 
   */

  /**Inside class */
  Sample obj = Sample(10);
  print(obj.x); //10
}

/**In a class a const variable must be static or it will throw error
 * But we can assing value to the final  variable through constructor, but 
 * assign once .Means unlike const each instance of a class can have different 
 * values for their final variable
 */

int square(num) => num * num;

class Sample {
  late final x;
  // late const y;//Error - should be static and should be initialized
  static const z = 20;
  Sample(this.x);
  
}

/**cannot use final or const for methods  */