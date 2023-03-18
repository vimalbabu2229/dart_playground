/**typedef is used to define the structure of a function or 
 * can be said as the function signature .
 * both the syntax are fine .But the first sintax needs a parameter valye 
 * to be specified , where for the second syntax the type of parameter is enough
 */
typedef int sample(int a, int b);
/**Here it says that sample is a type of function where it accepts 
 * two parameters of type int and returns an integer value .
 */
typedef sample1 = void Function(int, String);
typedef sample2 = void Function(int, int);
void main() {
  //Here is a simple example but not relevant

  //sample1 fun = display;
  // fun(2, 4);
  /**Above call gives error , because the fun is od type sample1 
   * where the second arg is of type String , but here it is passing int 
   */

  sample2 fun = display;
  fun(2, 3); //2, 3

  /** This is actually useful for higher order functions , for
   * avoiding the run time errors.
   */
  try {
    calculate(10, 15, notOp);
    /**Above call is completely fine in the compile time 
   * but throw exception in run time .
   */
  } catch (e) {
    print('''
    Error because calculate() expect a callbacks accepts two
    arguments , but provided notOp() accepting no arguments 
    ''');
  }

  /**So to avoid runtime error we made a calc() function using 
   * the typedef 
   */
  // calc(10, 15, notOp);
  /**The above code gives compile time error rather than 
   * going for runtime error an below code works fine 
   */
  calc(10, 15, sum);//25
}

void display(a, b) {
  print('$a, $b ');
}

void calculate(a, b, Function op) {
  print(op(a, b));
}

void calc(a, b, sample op) {
  print(op(a, b));
}

int sum(int a, int b) => a + b;
int sub(int a, int b) => a - b;
int mul(int a, int b) => a * b;
int div(int a, int b) => (a / b).truncate();
// truncate discards fractional part

String notOp() => 'i am  not an operator ';
