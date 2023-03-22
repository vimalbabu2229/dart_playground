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
  print(customeUtc); //2016-06-21 09:45:00.000Z

  /**we can parse a string to a date object */
  DateTime new_date = DateTime.parse('2020-11-25 09:45:00.000Z');
  print(new_date); //2020-11-25 09:45:00.000Z

  /**we can use the weekday property to know the week day*/
  print(new_date.weekday); //3
  print(DateTime.wednesday); //3
  /**So we can say that the new_date was a wednesday */

  /**DateTime have some default functions as below 
   */
  print(DateTime.june); //6
  print(DateTime.monthsPerYear); //12
  print(DateTime.daysPerWeek); //7


  /**We can check whether a date is after or before another date  */
  DateTime after_date = new_date.add(Duration(days: 1));
  DateTime before_date = new_date.subtract(Duration(days: 1));
  /**Duration can be used in the above way to add or subtract a 
   * duration from a date 
  */

  print(after_date.isAfter(new_date));//true
  print(before_date.isBefore(new_date));//true

  /**we can also find the difference between two dates as discussed in 
   * the duration.dart
   */


}
