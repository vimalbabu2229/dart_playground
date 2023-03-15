void main() {
  DateTime today = DateTime.now();
  print(today); //2023-03-15 17:31:30.738881
  //we can also create a custome date
  DateTime customeDate = DateTime(2016, 6, 21, 9, 45);
  print(customeDate); //2016-06-21 09:45:00.000
  // to get the utc time
  DateTime utcTime = DateTime.now().toUtc();
  print(utcTime);

  ///2023-03-15 12:01:30.742873Z
  //OR we can pass maually as
  DateTime customeUtc = DateTime.utc(2016, 6, 21, 9, 45);
  // print(customeDate.toUtc());
  print(customeUtc);//2016-06-21 09:45:00.000Z
}
