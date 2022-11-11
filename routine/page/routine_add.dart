import 'package:flutter/material.dart';
import 'package:zhaoxiban/pages/homepage/page/HomePage.dart';
import 'package:zhaoxiban/pages/routine/model/routine_addIterm.dart';

class Routine_add extends StatefulWidget {
  const Routine_add({key}) : super(key: key);

  @override
  State<Routine_add> createState() => _Routine_addState();
}

class _Routine_addState extends State<Routine_add> {
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
          child: Stack(
              fit: StackFit.expand,
              children: [
                Positioned(
                  width: MediaQuery.of(context).size.width,
                  top: 20,
                  child:const Text(
                    "添加行程",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Color.fromRGBO(74, 69, 40, 1.0),
                        fontSize: 35.0,
                        fontFamily: 'SHS'),
                  ),
                ),
                Positioned(
                  width: MediaQuery.of(context).size.width,
                  top: 70,
                  child: new Routine_addIterm(),
                ),
                Positioned(
                  width: 300,
                  left: 60,
                  top: 540,
                  child:  Container(
                      decoration:const  BoxDecoration(
                      color: Color.fromRGBO(65, 178, 0, 1.0),
                      borderRadius: BorderRadius.all( Radius.circular(20.0)),
                    ),
                    child:  TextButton(
                      onPressed: (){
                        setState(() {

                        });
                      },
                      child:const Text(
                        "确认添加",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Color.fromRGBO(255, 255, 255, 1.0),
                            fontSize: 35.0,
                            fontFamily: 'SHS'),
                      ),


                    ),
                  )

                )
        ]
    )
    )
    );
  }
}
