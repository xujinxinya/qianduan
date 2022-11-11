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
  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 460.0,
        width: 420.0,
        margin: const EdgeInsets.only(top: 20.0,bottom: 20.0),
        child: Consumer<RoutineList>(

            builder: (context, funcRoutine, child) {
              return ListView.builder(
                itemCount: routineData.length,
                itemBuilder: (BuildContext context, int index) {
                  int key_index = 0;
                  int real_key = 0;
                  for(int key in routineData.keys) {
                    real_key = key;
                    if (key_index == index) break;
                    key_index ++;
                  }
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
                                      routineData[real_key][3],
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
                                      routineData[real_key][1]?AssetImage("assets/img/routine_am.png"):AssetImage("assets/img/routine_pm.png"),
                                      height: 60.0,
                                      width: 50.0,
                                    ),
                                  ),
                                  Container(
                                      margin:const EdgeInsets.only(left: 80 ),
                                      child: MaterialButton(
                                        onPressed: (){
                                          setState(() {
                                            routineData[real_key][0]=!routineData[real_key][0];
                                          });
                                        },
                                        child:Image(
                                          image:
                                          routineData[real_key][0]==true?AssetImage("assets/img/routine_open.png") :AssetImage("assets/img/routine_close.png"),
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
                                routineData[real_key][2],
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


Map routineData={
  0:[true, true, '练习普通话', '5:50'],
  4:[true, true, '吃早饭', '6:30'],
  7:[false, false, '吃药', '8:00'],
};