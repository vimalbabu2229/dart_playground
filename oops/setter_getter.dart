/**almost same as in JS */
void main() {
  Sample obj = Sample(22);
  print(obj.getter);//22
  /**getter and setter is treated like a property not like  a method  */
  obj.setter = 29;
  /**Instead of calling an assignment is used to set value using setter  */
  print(obj.getter);//29
}

class Sample {
  late num x;
  Sample(x) {
    this.x = x;
  }

  get getter {
    /**if needed explicitly set the return type 
     * no paranthesis is used to define getter  
     */
    return this.x;
  }

  set setter(num x) {
    this.x = x;
  }
}
