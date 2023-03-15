void main() {
  String test = '   this is the test string     ';
  print(test);
  print(test.isEmpty); //false
  print(test.isNotEmpty); //true
  print(test.length); //32
  print(test.toLowerCase());
  print(test.toUpperCase());
  print(test.contains('test')); //true
  print(test.trim()); //it remove the starting and trailing white spaces
  print(test.split(' ')); //[, , , this, is, the, test, string, , , , , ]

  //REPLACE FUNCTIONS
  print(test.replaceRange(0, 3,
      'the white space is replaced , ')); //the white space is replaced , this is the test string
  print(test.replaceAll(' ', '#')); //###this#is#the#test#string#####
  //all the spaces will be replace with #
  print(test.replaceFirst(' ', '#'));//#  this is the test string
  //only the first space will be replaced 
  
}
