/**Mixins are often used to provide additional functionality to a class
 * We can use mixins for multiple inheritance  
 * Mixins don't define their own constructors, 
 * you cannot create an instance of a mixin directly. Mixins are not meant 
 * to be used by themselves, but instead are designed to be mixed into classes.
*/

/**Mixins can have abstract methods  . 
 * Mixins can have variables inside them 
 * Mixin functions can be override inside concrete class 
 * 
*/
void main() {
  // SampleMixin s = SampleMixin();//Error
  Sample obj = Sample();
  obj.check();
  obj.check2();
  obj.check3();

  Child c = Child();
  c.check1();//Inside parent 1
  c.check2();//Inside mixin 1
  c.check3();//Inside mixin 2
}

mixin SampleMixin {
  var x = 10;
  void check() => print("\nThis is a sample mixin ,value = ${this.x}");
  void check2() => print("Checking for override");
  void check3(); //abstract method
}

class Sample with SampleMixin {
  @override
  void check2() => print("\n\nOverridden , in concrete class ");

  @override
  void check3() => print('''\n\n  checking for abstract methods.It should 
  be implemented in concrete class or the class should abstract''');
}

/**It  can  be used for multiple inheritance  */

class Parent1 {
  void check1() => print('\n\nInside parent 1');
}

mixin Mixin1 {
  void check2() => print('\n\nInside mixin 1');
}

mixin Mixin2 {
  void check3() => print('\n\nInside mixin 2');
}

class Child extends Parent1 with Mixin2,Mixin1 {
  /**Child will have all the methods check1(), check2() and check3()*/ 
}
