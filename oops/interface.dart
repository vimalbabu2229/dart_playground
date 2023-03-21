void main() {
  SampleInterface obj = new Sample('Vimal');
  print(obj.getName());
}

abstract class SampleInterface {
  /**Interfaces shouldn't have data members(fields) and constructors 
   * It only contains method signatures 
   */
  String getName();
  /**In abstract classes we can have a definition for the methods 
   * but for an interface the methods should always abstract
  */
}

class Sample implements SampleInterface {
  late String name;
  Sample(this.name);
  /**Class should implement all the methods inside the interface 
   * otherwise it should be an abstract class .
   */
  
  @override
  String getName() {
    return this.name;
  }
}

/**
 * ABSTRACT CLASS vs INTERFACE 
 * 
 * Interfaces can have only abstract methods , where 
 * abstract classes can have both .
 * 
 * Interfaces cannot have fields and constructors , where 
 * abstract classes can have both.
 * 
 * Interfaces can have multiple implementations (Like multiple inheritance ), or
 * we can use mixins for multiple inheritance . 
 * 
 * Generally , any abstract nethod should be implemented in the child class 
 * or the child itself should be abstract.
 * 
 * 
 */