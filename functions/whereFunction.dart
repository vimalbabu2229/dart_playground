void main() {
  List numbers = [1, 2, 3.0, 4.0, 5, 6.0, 7, 8, 9.0];
  print('List = $numbers');
  List oddNumbers = numbers.where((element) => element % 2 == 1).toList();
  /**it returns an iterable not a list */
  print('odd List = $oddNumbers');

  print(
      'firstWhere = ${numbers.firstWhere((element) => element % 2 == 1, orElse: () => 0)}'); //1
  /**returns only the first value . Here orElse is an optional parameter
   * which is a callback which trigger and provide a default value if
   * the condition doesn't satisfied for any of the elements .Avoiding this optional
   * parameter can cause runtime exceptions .
   */

  print(
      'lastWhere = ${numbers.lastWhere((element) => element % 2 == 1, orElse: () => 0)}'); //9.0
  print(
      'indexWhere = ${numbers.indexWhere((element) => element % 2 == 1, 3)}'); //4
  /**It returns the index of the first value that satisfies the condition . But here
   * it takes a second default parameter to indicate the string index of evaluation ,
   * which is by default 0 .
   */

  print(
      'lastIndexWhere = ${numbers.lastIndexWhere((element) => element % 2 == 1)}'); //8
  print(
      'lastIndexWhere = ${numbers.lastIndexWhere((element) => element % 2 == 1, 5)}'); //4
  /**setting the second it will not iterate beyond that index, so here the ans is 4
   */

  print('whereType = ${numbers.whereType<double>()}'); //(3.0, 4.0, 6.0, 9.0)
  /**returns the elements with the specific data type.
   * it returns an iterable
   */

  var numbers2 = numbers.where((element) => true).toList();
  //creates a duplicate
  numbers.removeWhere((element) => element % 2 == 1);
  print('removeWhere = $numbers');//[2, 4.0, 6.0, 8]
  /**it removes all the odd elements permanantly from the list  */

  numbers2.retainWhere((element) => element % 2 == 1);
  print('retainWhere = $numbers2');//[1, 3.0, 5, 7, 9.0]
  /**it retains all odd numbers and removes even  numbers permanently  */

  /**removeWhere and retainWhere update the same variable while the other
   * methods returns a new list
   */
}

