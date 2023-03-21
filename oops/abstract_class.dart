void main() {
  // SampleAbstract abs_obj = new SampleAbstract();
  /**Cannot instantiate abstract class */
  Sample obj = new Sample('Vimal');
  /**new keyword is optional */
  print(obj.getName());
  obj.checkFun();
}

abstract class SampleAbstract {
  late String name;
  SampleAbstract(this.name); //constructor
  String getName();
  /**Without a body the function is called as an abstract function.
   * An abstract class can have both concrete functions and abstract functions 
   * An abstract function should be within an abstract class and 
   * it should be defined inside the concrete class
   */
}

abstract class SampleAbstract2 {
  late String name;
  SampleAbstract2(this.name); //constructor
  String getName();
  /**Without a body the function is called as an abstract function.
   * An abstract class can have both concrete functions and abstract functions 
   * An abstract function should be within an abstract class and 
   * it should be defined inside the concrete class
   */
}

class Sample extends SampleAbstract {
  Sample(name) : super(name);
  /**The use of @override descriptor is to indicate that , below function is 
   * intended to override the getName() of the super class
   * This also indicates if the below function is not there 
   * in the parent body 
   */
  @override
  String getName() {
    return this.name;
  }

  @override
  void checkFun() {
    /**Function declaration appears with a blue underline in vs code due 
     * to that the checkFun() is not there in the parent .But it will
     * work without throwing an error 
     */
    print("check for @override functionality");
  }
}
