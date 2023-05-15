/**it is a function which takes another function
 * as a parameter .
 */
void main() {
  giveSum(2, 3, sum); //5
  /**Or  we can also lambda functins  */
  giveSum(4, 3, (int x, int y) => x + y);//7
  giveSum2(10, 20, sum);//30
}

int sum(int x, int y) {
  return x + y;
}

void giveSum(int x, int y, Function sum) {
  print(sum(x, y));
}

/**More specifically the higher order function can be written as  */
void giveSum2(int x, int y, int Function(int, int) fun) {
  /**It defines the return type and type of parameters of the 
   * callback function 
   */
  print(fun(x, y));
}
