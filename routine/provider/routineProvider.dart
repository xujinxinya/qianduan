import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zhaoxiban/pages/routine/model/routineIterm.dart';

class RoutineList with ChangeNotifier {
  List<RoutineModel> schedule=<RoutineModel>[];//存每日行程
  void getSchedule(List<RoutineModel> routineData)async
  {
    schedule=routineData;
    print(schedule);
    notifyListeners();
    //final data = await SharedPreferences.getInstance();//存入磁盘
    //data.setString('language', appLanguage);
  }
}
