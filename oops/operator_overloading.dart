/**The operators + , -, etc are defined for type num . We can 
 * overload them in our own classes 
 */
void main() {
  Sample obj1 = Sample(3);
  Sample obj2 = Sample(4);

  Sample obj3 = obj1 + obj2;
  /**Here the function call is like `obj1.operator +(obj2)`. Means obj2
   * is passed as the argument to the operator function.
   */
  obj3.getValue(); //7
}

class Sample {
  late int num;
  Sample(this.num);

  Sample operator +(Sample obj) {
    /**adding the num of this class along with the second class 
     * and use that value to create new  object of Sample to return 
    */
    return Sample(this.num + obj.num);
  }

  void getValue() => print(this.num);
}
