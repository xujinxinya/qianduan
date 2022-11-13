import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zhaoxiban/pages/routine/provider/routineProvider.dart';
import 'package:zhaoxiban/pages/routine/model/routine_addIterm.dart';

List<String>amPm=["assets/img/routine_am.png","assets/img/routine_pm.png"];
String time_0;
String time_1_1;
String time_1_2;

class ShowTime extends StatefulWidget {
  @override
  createState() {
    return  ShowTimeState();
  }
}

class ShowTimeState extends State<ShowTime> {
  final PageController pagecontroller = new PageController(viewportFraction: 0.3,initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 270.0,
        width: 470.0,
        child: Consumer<RoutineList>(
            builder: (context, funcRoutine, child) {

              return Row(
                  children: [
                    Container(
                      width: 90,
                      child:Stack(
                        children: [
                          Center(
                            child: Container(
                              height: 50,
                              decoration:const BoxDecoration(
                                  border: Border(top: BorderSide(width: 0.5),
                                      bottom: BorderSide(width: 0.5))
                              ),
                            ),
                          ),
                          PageView.builder(
                            itemCount: 2,
                            controller: pagecontroller,
                            scrollDirection: Axis.vertical,
                            pageSnapping: true,
                            physics: AlwaysScrollableScrollPhysics(),
                            itemBuilder: (ctx ,index ){
                              time_0=amPm[index];
                              return Center(
                                child: Image(
                                  image: AssetImage(amPm[index]),
                                  height: 60.0,
                                  width: 50.0,
                                ),
                              );
                            },
                            onPageChanged: (int index) {
                              time_0=amPm[index];
                              print(time_0);
                            },
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 90,
                      child:Stack(
                        children: [
                          Center(
                            child: Container(
                              height: 50,
                              decoration:const BoxDecoration(
                                  border: Border(top: BorderSide(width: 0.5),
                                      bottom: BorderSide(width: 0.5))
                              ),
                            ),
                          ),
                          PageView.builder(
                            itemCount: 13,
                            controller: pagecontroller,
                            scrollDirection: Axis.vertical,
                            pageSnapping: true,
                            physics: AlwaysScrollableScrollPhysics(),
                            itemBuilder: (ctx ,index ){
                              time_1_1=index.toString();
                              return Center(
                                  child: Text(
                                    '$index',
                                    style: const TextStyle(
                                        color:Color.fromRGBO(0, 0, 0, 1.0),
                                        fontWeight: FontWeight.w900,
                                        fontSize: 35.0,
                                        fontFamily: 'SHS'
                                    ),
                                  )
                              );
                            },
                            onPageChanged: (int index) {
                              time_1_1=index.toString();
                              print(time_1_1);
                            },
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 90,
                      child:Stack(
                        children: [
                          Center(
                            child: Container(
                              height: 50,
                              decoration:const BoxDecoration(
                                  border: Border(top: BorderSide(width: 0.5),
                                      bottom: BorderSide(width: 0.5))
                              ),
                            ),
                          ),
                          PageView.builder(
                            itemCount: 61,
                            controller: pagecontroller,
                            scrollDirection: Axis.vertical,
                            pageSnapping: true,
                            physics: AlwaysScrollableScrollPhysics(),
                            itemBuilder: (ctx ,index ){
                              time_1_2=index.toString();
                              return Center(
                                  child: Text(
                                    '$index',
                                    style: const TextStyle(
                                        color:Color.fromRGBO(0, 0, 0, 1.0),
                                        fontWeight: FontWeight.w900,
                                        fontSize: 35.0,
                                        fontFamily: 'SHS'
                                    ),
                                  )
                              );
                            },
                            onPageChanged: (int index) {
                              time_1_2=index.toString();
                              print(time_1_2);
                            },
                          ),
                        ],
                      ),
                    )
                    ]
              );

            }
        )
    );

  }
}