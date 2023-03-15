//DEFAULT PARAMETERS && OPTIONAL PARAMETERS

void main() {
  print(sum()); //0
  print(sum(3, 4)); //7
  print(sum2(3)); //3
  print(optionalSum(3)); //3
  print(optionalSum(3, y:4)); //7
  /**The optional parameter should pass by its name  */
}

/**DEFAULT PARAMETERS */
int sum([x = 0, y = 0]) {
  /**Must  put the default parameters 
   * inside square brackets */
  return x + y;
}

int sum2(x, [y = 0, z = 0]) {
  /**Only the default parameters are need to be 
   * there inside the []
   */
  return x + y + z;
}

/**OPTIONAL PARAMETERS */
int optionalSum(x, {y}) {
  /**Here the y is not needed to be passed */
  return x + (y ??= 0);
  /**But while using an operator on y we should 
   * ensure that y is not null so the ?? operator is used 
   * OR just like default parameters we can assign y with a 
   * default value like {y = 0}
   */
}


