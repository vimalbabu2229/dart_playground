void main() {
  Sample obj = Sample('Vimal', 22, 'BTech'); //or can use var as the type
  obj.display(); //Vimal, 22, BTech
  print(obj.age); //22
  Sample obj2 = Sample('Vimal', 22, 'BTech');
  Sample obj3 = Sample('Vimal', 22, 'BTech');
  //calling static members
  print(Sample.getCount());//3
}

class Sample {
  String name = ''; //cannot be null should be initialized
  int? age; //can use nullable operator to avoid initialization
  var course; // can use var to avoid initialization
  static var count = 0; //static variables are common for a class

  Sample(name, age, course) {
    //constructor
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
