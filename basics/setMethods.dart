void main() {
  /**many of the methods are same for list and set  */
  Set test = {1, 2, 3, 4, 5, 6, 7, 8};
  test.removeAll({2, 5, 8}); //remove all the provided elements
  print(test); //{1, 3, 4, 6, 7}

  Set test2 = {2, 3, 5, 7, 9, 8};
  print(test.intersection(test2)); //{3, 7}
  print(test.union(test2));//{1, 3, 4, 6, 7, 2, 5, 9, 8}
  print(test.difference(test2));//{1, 4, 6}
  
}
