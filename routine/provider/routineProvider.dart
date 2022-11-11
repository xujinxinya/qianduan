import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zhaoxiban/pages/routine/model/routineIterm.dart';

class RoutineList with ChangeNotifier {
  List<int> schedule=<int>[];//存每日行程
  void getSchedule(int item)async
  {
    schedule.add(item);
    print("schedule[1].isSelected");
    notifyListeners();
    //final data = await SharedPreferences.getInstance();//存入磁盘
    //data.setStringList('schedule', schedule);
  }
  void moveSchedule(int item)async
  {
    schedule.remove(item);
    notifyListeners();
  }
}
