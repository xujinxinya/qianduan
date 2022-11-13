import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zhaoxiban/pages/routine/model/routineIterm.dart';

class RoutineList with ChangeNotifier {
  List<String> schedule=[];//存有选中的每日行程
  List<String> delete=[];//刪除

  synchronize() async {
    final data = await SharedPreferences.getInstance();
    if(data.getString('language') == null)
    {
      data.setStringList('schedule', schedule);
    }else{
      schedule = data.getStringList('schedule');//读数据
    }
  }
  void getSchedule(String item)async
  {
    schedule.add(item);
    print(schedule);
    notifyListeners();
    final data = await SharedPreferences.getInstance();//存入磁盘
    data.setStringList('schedule', schedule);
  }
  void getDelete(String item)async
  {
    delete.add(item);
    print(delete);
    notifyListeners();
    //final data = await SharedPreferences.getInstance();//存入磁盘
    //data.setStringList('schedule', schedule);
  }
  void moveSchedule(String item)async
  {
    schedule.remove(item);
    print(schedule);
    notifyListeners();
    final data = await SharedPreferences.getInstance();//存入磁盘
    data.setStringList('schedule', schedule);
  }
}
