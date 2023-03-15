/**it is a function which takes another function
 * as a parameter .
 */
void main() {
  giveSum(2, 3, sum); //5
  /**Or  we can also lambda functins  */
  giveSum(4, 3, (int x, int y) => x + y);//7
}

int sum(int x, int y) {
  return x + y;
}

void giveSum(int x, int y, Function sum) {
  print(sum(x, y));
}
