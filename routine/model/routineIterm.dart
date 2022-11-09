import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zhaoxiban/pages/routine/provider/routineProvider.dart';

class RoutineIterm extends StatefulWidget {
  @override
  createState() {
    return  RoutineItermState();
  }
}

class RoutineItermState extends State<RoutineIterm> {
  List<RoutineModel> routineData = <RoutineModel>[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    routineData.add( RoutineModel(true, true, '练习普通话','5:50'));
    routineData.add( RoutineModel(true, true, '吃早饭','6:30'));
    routineData.add( RoutineModel(false, false, '吃药','8:00'));
  }
  Widget build(BuildContext context) {
    return  Container(
        height: 460.0,
        width: 420.0,
        margin: const EdgeInsets.only(top: 20.0,bottom: 20.0),
        child: Consumer<RoutineList>(
            builder: (context, funcLanguage, child) {
              return ListView.builder(
                itemCount: routineData.length,
                itemBuilder: (BuildContext context, int index) {

                return  Container(
                    height: 143.0,
                    width: 400.0,
                    margin:const EdgeInsets.only(left: 10.0,bottom:10.0,right:10.0 ),
                    alignment: Alignment.center,
                    decoration:const  BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1.0),
                      borderRadius: BorderRadius.all( Radius.circular(30.0)),
                    ),
                    child:  Stack(
                        children: [
                          Positioned(
                            height: 71.5,
                            width: 400.0,
                            top:10,
                            left: 30,
                            child: Row(
                                children: [
                                  Text(
                                      routineData[index].time,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          color:Color.fromRGBO(0, 0, 0, 1.0),
                                          fontWeight: FontWeight.w900,
                                          fontSize: 42.0,
                                          fontFamily: 'SHS'
                                      )
                                  ),
                                  Container(
                                    margin:const EdgeInsets.only(left: 20 ),
                                    child: Image(
                                      image:
                                      routineData[index].isAm?AssetImage("assets/img/routine_am.png"):AssetImage("assets/img/routine_pm.png"),
                                      height: 60.0,
                                      width: 50.0,
                                    ),
                                  ),
                                  Container(
                                      margin:const EdgeInsets.only(left: 80 ),
                                      child: MaterialButton(
                                        onPressed: (){
                                          setState(() {
                                            routineData[index].isSelected=!routineData[index].isSelected;
                                            RoutineList().getSchedule(routineData);
                                          });
                                        },
                                        child:Image(
                                          image:
                                          routineData[index].isSelected==true?AssetImage("assets/img/routine_open.png") :AssetImage("assets/img/routine_close.png"),
                                          height: 120.0,
                                          width: 90.0,
                                        ),

                                      )

                                  )
                                ]
                            ),
                          ),
                          Positioned(
                            height: 71.5,
                            width: 400.0,
                            top: 75,
                            left: 30,
                            child: Text(
                                routineData[index].text,
                                textAlign: TextAlign.left,
                                style: const TextStyle(
                                    color:Color.fromRGBO(0, 0, 0, 1.0),
                                    fontWeight: FontWeight.w900,
                                    fontSize: 35.0,
                                    fontFamily: 'SHS'
                                )
                            ),
                          ),
                        ]
                    )
                );

                },
              );
            }
        ));
  }
}

class RoutineModel {
  bool isSelected;
  bool isAm;
  final String text;
  final String time;
  RoutineModel(this.isSelected, this.isAm, this.text,this.time);
}