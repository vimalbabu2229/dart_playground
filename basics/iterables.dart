void main() {
  //LIST
  List list1 = [1, 2, 'Vimal', true]; //typeis dynamic by default
  List<int> list2 = [1, 2, 3, 4, 5]; // only takes integer valueus '
  List<dynamic> list3 = [
    'vimal',
    false,
    22
  ]; //explicitly defines the type as dynamic
  var list4 = ['vimal', false, 22]; //var is dynamic by default

  /**Two dimensional list */
  List<List<int>> list5 = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8]
  ];
  print('The two dimensional list is $list5');

  //SET
  /**Declaration is same as List , but set cannot take duplicate values */
  Set set1 = {1, 2, 3, 2, 3, 1, 4, 5};
  print(set1); //{1, 2, 3, 4, 5}

  //MAPS
  /**its a key - value pair */
  Map map1 = {'name': 'vimal', 'age': 22};
  var map2 = {'name': 'vimal', 'age': 22};
  /**both methods are dynamic by default , means the key and
   * value can be of any type
   */
  Map<int, String> map3 = {1: 'Vimal', 2: 'BTech IT', 3: 'CUSAT'};
  /**Here explicitely says that the key should be integer and 
   * value should be string 
   */
}
