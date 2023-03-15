void main() {
  /**Map Entry is a key - value pair that  can be added to a map
   * or can  be used to populate a map object
  */
  MapEntry entry = MapEntry('name', 'Vimal');
  print(entry); //MapEntry(name: Vimal)
  //To create a list of entries
  List<MapEntry<String, String>> entryList = [
    MapEntry('name', 'vimal'),
    MapEntry('place', 'Ernakulam')
  ];
  print(entryList); //[MapEntry(name: vimal), MapEntry(place: Ernakulam)]

  //Creating a new map object using the entry list
  Map newMap = Map.fromEntries(entryList);
  print(newMap); //{name: vimal, place: Ernakulam}

  //adding a list of entries to the existing map object
  List<MapEntry<String, String>> newList = [
    MapEntry('college', 'SOE'),
    MapEntry('sem', '6')
  ];

  newMap.addEntries(newList);
  print(newMap);//{name: vimal, place: Ernakulam, college: SOE, sem: 6}
}
