/**By default every class members are public 
 * we can use ` _ ` to declare a private member  
 */
/**But for dart , privacy is library level not class level . Means 
 * the private fields can be used by other classes in the same library 
 * but outside the library it is not accessable . 
 * <<<< Check privacy.dart >>>>
 */
void main() {
  Sample obj = Sample('Vimal', 22);
  print(obj._name); //Vimal
  print(obj.age); //22
  // above calls will work fine
}

class Sample {
  var _name, age;
  Sample(name, age) {
    this._name = name;
    this.age = age;
  }

  get getPrivate {
    return this._name;
  }
}
