/**Like the JS spread used the three dots (...) that can be 
   * used to iterate over an iterable . The spread operator (...) in Dart is 
   * used to "spread" the elements of a collection into another collection or 
   * as positional arguments to a function.
   * It can be used with lists, sets, and maps.
   */
void main() {
  var set1 = {1, 2, 3, 4};
  var list1 = [1, 2, 3, 4, 5, 2, 1, 2, 3, 5];
  var map1 = {1: 'one', 2: 'two', 3: 'three'};

  /**can be used for copying and conversion among iterables  */
  print('set to list using spread = ${[...set1]}'); //[1, 2, 3, 4]
  print('map to list using spread = ${{...map1.entries}}');
  //{MapEntry(1: one), MapEntry(2: two), MapEntry(3: three)}
  print('list to set using spread = ${{...list1}}'); //{1, 2, 3, 4, 5}

  /**can be used for concatenation */
  print('concatenating set1 and list1 = ${[...list1, ...set1]}');
  //[1, 2, 3, 4, 5, 2, 1, 2, 3, 5, 1, 2, 3, 4]
}

