//it is used to get the total duaration
void main() {
  Duration total_duration = Duration(days: 2, hours: 5, minutes: 78);
  print(total_duration); //54:18:00.000000
  //by default it prints in hours
  print(total_duration.inMinutes); //3258

  //taking the difference of two dates
  DateTime current_date = DateTime.now();
  DateTime prev_date = DateTime(2020, 11, 23, 13, 34, 45);
  Duration difference = prev_date.difference(current_date);
  print(difference);//-20212:10:40.838962
  //here the value is -ve snice we are taking the difference for a previous date  
}
