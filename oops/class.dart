void main() {
  Sample obj = Sample('Vimal', 22, 'BTech'); //or can use var as the type
  obj.display(); //Vimal, 22, BTech
  print(obj.age); //22

  /**we can use cascade notation (..) to call a function and 
   * simple dot operator to access the variables direclty at 
   * the time of object creation.
   */
  Sample obj1 = Sample('Vimal Babu', 22, 'BTech')..display(); //Vimal Babu, 22, BTech
  var course = Sample('Vimal', 20, 'EC').course; //EC
  print(obj1);//Instance of 'Sample'
  /**So here the obj1 still holds the instance of the class , so if the 
   * function returns a value then it cannot be accessed in this way
   */
  print(course);//EC

  //calling static members
  print(Sample.getCount()); //3
}

class Sample {
  String name = ''; //cannot be null should be initialized
  int? age; //can use nullable operator to avoid initialization
  var course; // can use var to avoid initialization
  static var count = 0; //static variables are common for a class

  Sample(name, age, course) {
    //constructor
    /**construcor can use default parameters optional parameters */
    this.name = name;
    this.age = age;
    this.course = course;
    count++;
  }

  void display() {
    print('$name, $age, $course');
  }

  static int getCount() {
    return count;
    /**Static functions can only access static variables and they
     * cannot use `this` keyword since there is no object is used 
     * to call static functions 
     */
  }
}
