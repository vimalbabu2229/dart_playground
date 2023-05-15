//DEFAULT PARAMETERS && OPTIONAL PARAMETERS

void main() {
  print(sum()); //0
  print(sum(3, 4)); //7
  print(sum2(3)); //3
  print(optionalSum(3)); //3
  print(optionalSum(3, y: 4)); //7
  /**The optional parameter should pass by its name  */
  print(reqParam(param1: 22, param2: 21));//43
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

/**REQUIRED PARAMETER*/
/**optional parameters can set as required , there by we tell the 
 * compiler that the value of the parameter will not be null
 */

int reqParam({required int param1, required int param2, int? param3}) {
  return (param1 + param2);
  /**Here param1 and param2 are required so we don't need to go 
   * for null check because the function can't be called without 
   * passing them . The third parameter param3 is not declared 
   * it means the function can be called without passing that parameter.
   * This means the parameter can be null so we declared it as nullable 
   * variable to avoid compilation error.
   */
  /**Here the thing is that although the parameters inside the {} are  
   * optional , using the 'required' they become required parameters
   * but they need to call by their name . 
   */
}

/**optional parameter and required parameter are collectively 
 * called as the required parameter 
  */