void main() {
  fun1();
  print('fun2 returns ${fun2()}');
  fun3('Vimal');
  fun4('Vimal');
}

fun1() {
  print(
      'No need to explicitely say the return type else it is by default dymanic');
}

int fun2() {
  return 1;
}

void fun3(String name) {
  print(name);
}

void fun4(name) {
  /** No need to explicitely define the type of parameter 
   * else it is dymanic by default
  */
  print(name);
}
