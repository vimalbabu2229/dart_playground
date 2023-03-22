/**Unlike other programming languages , dart only supports 
 * run time polymorphism , that is method overriding 
 */
void main() {
  Shape shape = Shape()..info();//Shape
  Triangle tri = Triangle()..info();//Trianglel
  Square squ = Square()..info();//Square
}

class Shape {
  void info() => print("Shape");
}

class Square extends Shape {
  void info() => print("Square");
}

class Triangle extends Shape {
  void info() => print("Triangle");
}
