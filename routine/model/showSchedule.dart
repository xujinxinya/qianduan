import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zhaoxiban/pages/routine/provider/routineProvider.dart';
import 'package:zhaoxiban/pages/routine/model/routine_addIterm.dart';


class ShowSchedule extends StatefulWidget {
  @override
  createState() {
    return  ShowScheduleState();
  }
}

class ShowScheduleState extends State<ShowSchedule> {
  TextEditingController _unameController = TextEditingController();
  @override
  void initState() {
    //监听输入改变
    _unameController.addListener((){
      print(_unameController.text);
    });
  }
  Widget build(BuildContext context) {
    return Container(
        height: 140.0,
        width: 470.0,
        child: Consumer<RoutineList>(
            builder: (context, funcRoutine, child) {
              return TextField(
                style:const TextStyle(
                    color:Color.fromRGBO(0,0, 0, 1.0),
                    fontWeight: FontWeight.w900,
                    fontSize: 30.0,
                    fontFamily: 'SHS'),
                controller: _unameController,
                decoration:const InputDecoration(
                  hintText: "请输入行程信息",
                  hintStyle:TextStyle(
                      color:Color.fromRGBO(114, 114, 114, 1.0),
                      fontWeight: FontWeight.w900,
                      fontSize: 30.0,
                      fontFamily: 'SHS'),
                  // 未获得焦点
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      ///用来配置边框的样式
                      borderSide: BorderSide(
                        ///设置边框的颜色
                        color: Colors.grey,
                        ///设置边框的粗细
                        width: 3.0,
                      ),
                  ),
                  //获得焦点
                  focusedBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    ///用来配置边框的样式
                    borderSide: BorderSide(
                      ///设置边框的颜色
                      color: Colors.green,
                      ///设置边框的粗细
                      width: 3.0,
                    ),
                  ),
                ),
              );

            }
        )
    );

  }
}