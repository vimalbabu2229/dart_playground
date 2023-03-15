void main() {
  Map<dynamic, dynamic> test = {
    "name": "Vimal",
    "age": 22,
    "college": "SOE",
    "course": "BTech",
  };

  print("Iterating using forEach : ");
  test.forEach((key, value) => print("key = $key & value = $value"));

  print('Keys = ${test.keys}'); //Keys = (name, age, college, course)
  print('Values = ${test.values}'); //Values = (Vimal, 22, SOE, BTech)
  print('Entries = ${test.entries}'); 
  //Entries = (MapEntry(name: Vimal), MapEntry(age: 22), MapEntry(college: SOE), MapEntry(course: BTech)) 

  /**Entery shows each entry of key - value pairs */
  // test.;
  test.addAll({
    'place': 'N Paravur',
    'semester': 6
  }); //takes another map and add at the end
  print(test); //{name: Vimal, age: 22, college: SOE, course: BTech, place: N Paravur, semester: 6}

  print(test.containsKey('name')); //true
  print(test.containsValue(6)); //true

  test.remove('place'); //it will remove the entry matches the key 'place'
  print(test); //{name: Vimal, age: 22, college: SOE, course: BTech, semester: 6}
  test.removeWhere((key, value) => key == 'course');
  print(test);
  //{name: Vimal, age: 22, college: SOE, semester: 6} 
  test.clear(); //will remove all the entries
  print(test); //{}
}
