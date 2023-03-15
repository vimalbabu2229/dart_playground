void main() {
  print(sum(1, 2)); //3
  print(diff(7, 5)); //2
  print(mul(4, 3)); //12
  simpleDisplay();
}

int sum(x, y) => x + y;
//A lambda function can be stored to a variable
var diff = (x, y) => x - y;
/**In the above example the return type of the 
 * function is by default dynamic . To define a return type 
 */
int Function(int x, int y) mul = (int x, int y) => x * y;
/**Here mul is a variable of type Function() with a 
 * return value as integer .
 */

Function simpleDisplay = () => print("Simple display function");