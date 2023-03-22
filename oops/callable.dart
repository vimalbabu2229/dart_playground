void main() {
  Sample obj = Sample('Vimal');
  obj();//Vimal
  /**call() is a special method in dart where calling the object
   * like the above statement will execute the call function .It can
   * take parameters. This is called callable class in dart 
   */
}

class Sample {
  late String name;
  Sample(this.name);
  void call() {
    print(this.name);
  }
}
