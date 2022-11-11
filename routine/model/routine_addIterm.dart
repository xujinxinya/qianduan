import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zhaoxiban/pages/routine/provider/routineProvider.dart';

String imgUrl="";
List<String>repeatData=["每天","只响一次","自定义"];
Map isSelect={
  "每天":[true],
  "只响一次":[false],
  "自定义":[false],
};
int index_1;
List<String>addList=["时间","行程","重复","铃声"];

class Routine_addIterm extends StatefulWidget {
  @override
  createState() {
    return  Routine_addItermState();
  }
}

class Routine_addItermState extends State<Routine_addIterm> {


  @override
  void initState() {

  }
  Widget build(BuildContext context) {
    return  Container(
        height: 420.0,
        width: 420.0,
        margin: const EdgeInsets.only(top: 20.0,bottom: 20.0),
        child: Consumer<RoutineList>(
            builder: (context, funcLanguage, child) {
              return ListView.builder(
                itemCount: addList.length,
                itemBuilder: (BuildContext context, int index) {

                if(index==0){
                  imgUrl="assets/img/routine_time.png";
                }else if(index==1){
                  imgUrl="assets/img/routine_schedule.png";
                }
                else if(index==2){
                  imgUrl="assets/img/routine_repeat.png";
                }else if(index==3){
                  imgUrl="assets/img/routine_ring.png";
                }
                  return  Container(
                      height: 143.0,
                      width: 400.0,
                      margin:const EdgeInsets.only(left: 10.0,bottom:10.0,right:10.0 ),
                      alignment: Alignment.center,
                      decoration:const  BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1.0),
                        borderRadius: BorderRadius.all( Radius.circular(60.0)),
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
                                    Container(
                                      margin:const EdgeInsets.only(left: 70,right: 20 ),
                                      child: Image(
                                        image: AssetImage(imgUrl),
                                        height: 60.0,
                                        width: 50.0,
                                      ),
                                    ),
                                    Text(
                                        addList[index],
                                        textAlign: TextAlign.left,
                                        style: const TextStyle(
                                            color:Color.fromRGBO(158, 146, 76, 1.0),
                                            fontWeight: FontWeight.w900,
                                            fontSize: 37.0,
                                            fontFamily: 'SHS'
                                        )
                                    ),
                                  ]
                              ),
                            ),
                            Positioned(
                              height: 71.5,
                              width: 400.0,
                              top: 75,
                              left: 50,
                              child:  TextButton(
                                  onPressed: (){
                                    if(index==0){

                                    }else if(index==1){

                                    }
                                    else if(index==2){
                                      showDialog(
                                          context: context,
                                          builder: (context) => AlertDialog(
                                            title:Row(
                                                children:[
                                                  Container(
                                                    margin:const EdgeInsets.only(left: 30,right: 20 ),
                                                    child: Image(
                                                      image: AssetImage(imgUrl),
                                                      height: 60.0,
                                                      width: 50.0,
                                                    ),
                                                  ),
                                                  const Text(
                                                      '重复',
                                                      style:TextStyle(
                                                          color:Color.fromRGBO(158, 146, 76, 1.0),
                                                          fontWeight: FontWeight.w900,
                                                          fontSize: 35.0,
                                                          fontFamily: 'SHS'
                                                      )
                                                  ),
                                                ]
                                            ) ,
                                            content:
                                            Container(
                                                height: 270.0,
                                                width: 470.0,
                                                child: Consumer<RoutineList>(
                                                    builder: (context, funcRoutine, child) {
                                                      return ListView.builder(
                                                          itemCount: repeatData.length,
                                                          itemBuilder: (BuildContext context, int index) {
                                                            index_1=index;
                                                            return InkWell(
                                                                splashColor: Color.fromRGBO(236, 233, 233, 1.0),
                                                                onTap: () {
                                                                  setState(() {
                                                                    print(isSelect[repeatData[index]][0]);
                                                                    for (int i = 0; i < 3; i++) {
                                                                      isSelect[repeatData[i]][0] = false;
                                                                    }
                                                                    isSelect[repeatData[index]][0] = true;
                                                                  });
                                                                },
                                                                child: new showRepeat()
                                                            );
                                                          }
                                                      );
                                                    }
                                                )
                                            ),

                                            actions: <Widget>[
                                              Container(
                                                height: 65,
                                                decoration: BoxDecoration(
                                                  color:const Color.fromRGBO(
                                                      65, 178,
                                                      0, 1.0),
                                                  borderRadius: BorderRadius.circular(20),
                                                ),
                                                child: TextButton(
                                                  child:const Text(
                                                      "确定",
                                                      textAlign: TextAlign.center,
                                                      style:  TextStyle(
                                                          color:Color.fromRGBO(
                                                              255, 255,
                                                              255, 1.0),
                                                          fontWeight: FontWeight.w900,
                                                          fontSize: 35.0,
                                                          fontFamily: 'SHS'
                                                      )
                                                  ),
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                ),
                                              ),
                                              Container(
                                                height: 65,
                                                decoration: BoxDecoration(
                                                  color:const Color.fromRGBO(
                                                      209, 71,
                                                      71, 1.0),
                                                  borderRadius: BorderRadius.circular(20),
                                                ),
                                                child: TextButton(
                                                  child:const Text(
                                                      "取消",
                                                      textAlign: TextAlign.center,
                                                      style:  TextStyle(
                                                          color:Color.fromRGBO(
                                                              255, 255,
                                                              255, 1.0),
                                                          fontWeight: FontWeight.w900,
                                                          fontSize: 35.0,
                                                          fontFamily: 'SHS'
                                                      )
                                                  ),
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                ),
                                              ),
                                            ],
                                          ));
                                    }else if(index==3){

                                    }
                                  },
                                child: Text(
                                    addList[index],
                                    textAlign: TextAlign.left,
                                    style: const TextStyle(
                                        color:Color.fromRGBO(0, 0, 0, 1.0),
                                        fontWeight: FontWeight.w900,
                                        fontSize: 35.0,
                                        fontFamily: 'SHS'
                                    )
                                ),
                              )

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
class showRepeat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Container(
        margin:const EdgeInsets.only(left: 30.0, top: 20.0, right: 30.0),
        alignment: Alignment.center,
        decoration:const BoxDecoration(
            border: Border(
                bottom: BorderSide(
                  width: 2.0,
                  color: Color.fromRGBO(
                      196, 196, 196, 1),
                )
            )
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container( //文字
              width: 150,
              margin:const EdgeInsets.only(left: 20.0, bottom: 10.0),
              child: Text(
                  repeatData[index_1],
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      fontFamily: 'SHS')
              ),
            ),
            Container( //单选按钮
              height: 45.0,
              width: 45.0,
              child: Text("✔",
                  style:  TextStyle(
                      color: isSelect[repeatData[index_1]][0] ==
                          true ? Colors.black : Colors
                          .white,
                      fontWeight: FontWeight.w900,
                      fontSize: 30.0,
                      fontFamily: 'SHS'
                  )),
            ),
          ],
        ),
      );

  }
}
