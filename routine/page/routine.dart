import 'package:flutter/material.dart';
import 'package:zhaoxiban/pages/homepage/page/HomePage.dart';
import 'package:provider/provider.dart';
import 'package:zhaoxiban/pages/routine/provider/routineProvider.dart';
import 'package:zhaoxiban/pages/routine/model/routineIterm.dart';
import 'package:zhaoxiban/pages/routine/page/routine_add.dart';
import 'package:zhaoxiban/pages/routine/page/routine_delect.dart';

class Routine extends StatefulWidget {
  const Routine({key}) : super(key: key);

  @override
  State<Routine> createState() => _RoutineState();
}

class _RoutineState extends State<Routine> {

  @override

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor:const Color.fromRGBO(74, 69, 40, 1.0),
          leading: MaterialButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return const HomePage();
                },
              ));
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          elevation: 2.0,
          title: const Text(
            "每日行程",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 25.0,
                fontFamily: 'SHS'),
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            color: Color.fromRGBO(214, 197, 99, 1.0),
          ),
          child: Column(
              children: <Widget>[
                new RoutineIterm(),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 100.0,
                        width: 100.0,
                        margin: const EdgeInsets.only(right: 100.0),
                        decoration:const BoxDecoration(  //背景装饰
                          color: Color.fromRGBO(255, 255, 255, 1.0),
                          boxShadow: [
                            //卡片阴影
                            BoxShadow(
                              color: Colors.black54,
                              offset: Offset(2.0, 2.0),
                              blurRadius: 4.0,
                            )

                          ],
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        ),
                        child:MaterialButton(
                          onPressed: (){
                            setState(() {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) {
                                return const Routine_add();
                              },
                              ));
                            });
                          },
                          child:const Image(
                            image: AssetImage("assets/img/routine_add.png"),
                            height: 90.0,
                            width: 90.0,
                          ),
                      ),
                      ),
                      Container(
                        height: 100.0,
                        width: 100.0,
                        decoration:const BoxDecoration(  //背景装饰
                          color: Color.fromRGBO(255, 255, 255, 1.0),
                          boxShadow: [
                            //卡片阴影
                            BoxShadow(
                              color: Colors.black54,
                              offset: Offset(2.0, 2.0),
                              blurRadius: 4.0,
                            )
                          ],
                          borderRadius: const BorderRadius.all(const Radius.circular(50.0)),
                        ),
                        child:MaterialButton(
                          onPressed: (){
                            setState(() {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) {
                                  return const Routine_delect();
                                },
                              ));
                            });
                          },
                        child:const Image(
                          image: AssetImage("assets/img/routine_delete.png"),
                          height: 90.0,
                          width: 90.0,
                        ),
                        ),
                      ),
                    ],
                ),

                ]
          )
        ));
  }
}

