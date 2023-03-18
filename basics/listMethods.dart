void main() {
  List test = [2, 'vimal', 'CUSAT', true, 22.29];
  print(test);
  print(test.length); //7
  print(test.first); //2
  print(test.last); //22.29
  print(test.reversed.toList()); //[22.29, true, CUSAT, vimal, 2]
  /**test.reversed gives a iterable object not list 
   * to convert it to list use the method .toList();
   */
  print(test.contains('vimal')); //true

  /**FOR ADDING NEW ELEMENTS */
  test.add("new value"); //add at the end
  print(test); //[2, vimal, CUSAT, true, 22.29, new value]
  test.addAll([2, 3]); //add a list of elements at the end
  print(test); //[2, vimal, CUSAT, true, 22.29, new value, 2, 3]
  test.insert(2, 'BTech'); //add at an index
  print(test); //[2, vimal, BTech, CUSAT, true, 22.29, new value, 2, 3]
  /** ` test.insertAll(position,[ list_of_values]) ` adds a lidt
   * of elements to a position
   */

  //FOR REMOVING ELEMENTS
  test.remove('BTech'); //remove the first occurence of a value
  print(test); //[2, vimal, CUSAT, true, 22.29, new value, 2, 3]
  test.removeAt(2); //remove value at index
  print(test); //[2, vimal, true, 22.29, new value, 2, 3]
  test.removeLast(); //remove last element
  print(test);
  test.removeRange(
      2, 4); //remove the range of elements excluding the ending index
  print(test); //[2, vimal, new value, 2]
  test.replaceRange(
      2, 3, ['soe', 'cusat', 2021]); //replaces a range of elements
  print(test); //[2, vimal, soe, cusat, 2021, 2]

  List<int> test2 = [1, 2, 3, 4, 5, 6, 7, 8];
  test2.removeWhere((element) => element % 2 == 0);
  /**it removes all the even elements from the list */
  print(test2); //[1, 3, 5, 7]

  print('printing the elements using forEach :');
  test2.forEach((element) => print(element));

  //now test2 = [1, 3, 5, 7]
  print(test2.any((element) => element % 3 == 0)); //true
  /**any() checks whether any item satisfies the condition
   * and returns a boolean 
   */

  print(test2.every((element) => element % 3 == 0)); //false
  /**checks whether every element satisfies  the condition */

  print(test2.take(2));//(1, 3)
  /**It takes the elements till the 2nd index excluding 2nd index */

  var newTest = test2.map((element) => element + 100); //(101, 103, 105, 107)
  /**creates a new list from a list according to the callback used . 
   * It return a iterable 
    */
  print(newTest);
  test.clear(); //will remove all elements in the list
  print(test);
}
