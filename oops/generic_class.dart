void main() {
  Sample obj1 = Sample<int, String>(22, 'Vimal');
  print(obj1.getX());//22
  print(obj1.getY());//Vimal

  Sample obj2 = Sample<double, bool>(21.2, true);
  print(obj2.getX());//21.2
  print(obj2.getY());//true
}

/**We can use generic data types and it can be defined at the 
 * time of object creation 
 */
class Sample<T, S> {
  /**Here the T and S will be replaced with the data types passed 
   * at the time of object creation. 
   */
  late T x;
  late S y;
  Sample(this.x, this.y);

  T getX() {
    return x;
  }

  S getY() {
    return y;
  }
  /**can also use it for the parameters of the member functions 
   * if needed
   */
}
