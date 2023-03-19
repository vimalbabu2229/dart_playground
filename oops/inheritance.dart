void main() {
  List<String> depts = ['IT', 'EC', 'CS'];
  Student vimal = Student('CUSAT', depts, 'IT', "Vimal Babu");
  vimal.showAllDepartments();
}

class University {
  late String uni_name;
  late List<String> depts;

  University(String uni_name, List<String> depts) {
    this.uni_name = uni_name;
    this.depts = depts;
  }

  getDepartments() => this.depts;
  /**lamda function to return the avialable departments 
   * since the return type is not specified , it is dynamic by default 
   */
}

class Departments extends University {
  late String dept_name;
  Departments(String uni_name, List<String> depts, String dept_name)
      : super(uni_name, depts) {
    /**The parameter list for the parent constructor is passed 
         * with the super() method. It can also be used to explicitely 
         * call super class functions 
         */
    this.dept_name = dept_name;
  }

  void showAllDepartments() => print(super.getDepartments());
  /**Calling the getDepartments() function from the parent using super */
}

class Student extends Departments {
  late String name;
  Student(
      String uni_name, List<String> depts, String dept_name, String std_name)
      : super(uni_name, depts, dept_name) {
    this.name = std_name;
  }

  void getStudent() {
    print('''
    name = ${this.name}
    department: ${this.dept_name}
    university = ${this.uni_name} \n''');
  }
}
