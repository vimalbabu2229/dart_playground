void main() {
  Function disp = fun();
  disp();//local value
}
/**Here fun() returns the function display() which is used to 
 * display the value of the local variable localVar of fun().Means 
 * after the execution of fun() the probably the localVar will 
 * distroy , but due to closures the value will be bundled with 
 * the return display function , so that we are getting the output 
 * in the main function .Same as of JS.
 */
Function fun() {
  var localVar = 'local value';
  void display() {
    print(localVar);
  }
  return display;
}
