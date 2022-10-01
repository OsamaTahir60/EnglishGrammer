import 'package:englishgrammer/Units/Unit1.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool visible1 = true;
  var unit1 = 'Unit 1: Present continuous';
  var unit11 = ' (I am doing)';
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    return SafeArea(
        left: true,
        right: true,
        bottom: true,
        top: true,
        child: Scaffold(
          key: _key,
          endDrawer: Drawer(
            elevation: 0.0,
            width: width/8,
            child: ListView(
              children: [
                Icon(Icons.home,color:const Color(0xff0b3b6b),size: height/20,),
                const Divider(
                  color: Colors.grey,
                  thickness: 0.7,
                ),
                Icon(Icons.search,color:const Color(0xff0b3b6b),size: height/20,),
                const Divider(
                  color: Colors.grey,
                  thickness: 0.7,
                ),
                Icon(Icons.access_alarms,color:const Color(0xff0b3b6b),size: height/20,),
                const Divider(
                  color: Colors.grey,
                  thickness: 0.7,
                ),
                Icon(Icons.subscript,color:const Color(0xff0b3b6b),size: height/20,),
                const Divider(
                  color: Colors.grey,
                  thickness: 0.7,
                ),
              ],
            ),
          ),
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: const Color(0xff0b3b6b),
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.09, 0.2],
                    colors: <Color>[Colors.white, Color(0xff0b3b6b)]),
              ),
            ),
            title: Text(
              "English Grammar",
              style: TextStyle(
                  fontSize: size.width / 20, color: const Color(0xffe5a922)),
            ),

            actions: [
              Container(
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: (){
                      _key.currentState!.openEndDrawer();
                    },
                    child:Icon(
                      Icons.menu,
                      color: const Color(0xffe5a922),
                      size: height / 25,
                    ),
                  )
              ),
            ],
          ),
          body: ListView(
            children: [
              Container(
                height: height / 17,
                width: width / 20,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.1, 0.2],
                      colors: <Color>[Colors.white, Color(0xff0b3b6b)]),
                ),
                child: Container(
                  margin: EdgeInsets.only(left: height / 200),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Past and Present",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: height / 59,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              visible1 == true ?
              SizedBox(
                height: height/3.8,
                child: Visibility(
                  visible: visible1,
                    child: ListView(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(builder: (context) =>  Unit1(
                                    text1 : unit1,
                                    text2 : unit11
                                )),
                                    (route) => true);
                          },
                          child: Container(
                            height: height / 15,
                            decoration: BoxDecoration(
                              border: Border(
                                // top: BorderSide(width: 16.0, color: Colors.lightBlue.shade600),
                                bottom: BorderSide(
                                    width: width / 200.0, color: Color(0xffe1e1e1)),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin:
                                  EdgeInsets.only(left: height / 60, top: height / 150),
                                  child: RichText(
                                    text: TextSpan(
                                        text: unit1,
                                        style: TextStyle(
                                            color: Color(0xff2b3c54),
                                            fontSize: height / 70,
                                            fontWeight: FontWeight.w400),
                                        children: [
                                          TextSpan(
                                            text: unit11,
                                            style: TextStyle(
                                                color: const Color(0xff1d3a64),
                                                fontSize: height / 70,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ]),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      right: height / 150, top: height / 150),
                                  child:  Icon(Icons.check_circle_outlined,color: Color(0xff1d3a64),size: height/35,),)
                              ],
                            ),
                          ),

                        ),
                        InkWell(
                          onTap: (){

                          },
                          child: Container(
                            height: height / 15,
                            decoration: BoxDecoration(
                              border: Border(
                                // top: BorderSide(width: 16.0, color: Colors.lightBlue.shade600),
                                bottom: BorderSide(
                                    width: width / 200.0, color: Color(0xffe1e1e1)),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin:
                                  EdgeInsets.only(left: height / 60, top: height / 150),
                                  child: RichText(
                                    text: TextSpan(
                                        text: 'Unit 2: Present simple',
                                        style: TextStyle(
                                            color: Color(0xff2b3c54),
                                            fontSize: height / 70,
                                            fontWeight: FontWeight.w400),
                                        children: [
                                          TextSpan(
                                            text: ' (I do)',
                                            style: TextStyle(
                                                color: const Color(0xff1d3a64),
                                                fontSize: height / 70,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ]),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      right: height / 150, top: height / 150),
                                  child:  Icon(Icons.check_circle_outlined,color: Color(0xff1d3a64),size: height/35,),)
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){

                          },
                          child: Container(
                            height: height / 15,
                            decoration: BoxDecoration(
                              border: Border(
                                // top: BorderSide(width: 16.0, color: Colors.lightBlue.shade600),
                                bottom: BorderSide(
                                    width: width / 200.0, color: Color(0xffe1e1e1)),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin:
                                  EdgeInsets.only(left: height / 60, top: height / 150),
                                  child: RichText(
                                    text: TextSpan(
                                        text: 'Unit 3: Present continuous',
                                        style: TextStyle(
                                            color: Color(0xff2b3c54),
                                            fontSize: height / 70,
                                            fontWeight: FontWeight.w400),
                                        children: [
                                          TextSpan(
                                            text: ' (I am doing and i do)',
                                            style: TextStyle(
                                                color: const Color(0xff1d3a64),
                                                fontSize: height / 70,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ]),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      right: height / 150, top: height / 150),
                                  child:  Icon(Icons.check_circle_outlined,color: Color(0xff1d3a64),size: height/35,),)
                              ],
                            ),
                          ),

                        ),
                        InkWell(
                          onTap: (){

                          },
                          child: Container(
                            height: height / 15,
                            decoration: BoxDecoration(
                              border: Border(
                                // top: BorderSide(width: 16.0, color: Colors.lightBlue.shade600),
                                bottom: BorderSide(
                                    width: width / 200.0, color: Color(0xffe1e1e1)),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin:
                                  EdgeInsets.only(left: height / 60, top: height / 150),
                                  child: RichText(
                                    text: TextSpan(
                                        text: 'Unit 4: Present continuous',
                                        style: TextStyle(
                                            color: Color(0xff2b3c54),
                                            fontSize: height / 70,
                                            fontWeight: FontWeight.w400),
                                        children: [
                                          TextSpan(
                                            text: ' (I am doing)',
                                            style: TextStyle(
                                                color: const Color(0xff1d3a64),
                                                fontSize: height / 70,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ]),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      right: height / 150, top: height / 150),
                                  child:  Icon(Icons.check_circle_outlined,color: Color(0xff1d3a64),size: height/35,),)
                              ],
                            ),
                          ),

                        ),
                      ],
                    )
                ),
              ): Container(),

              InkWell(
                onTap: (){
                  click();
                },
                child: Container(
                  height: height / 17,
                  width: width / 20,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.1, 0.2],
                        colors: <Color>[Colors.white, Color(0xff0b3b6b)]),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(left: height / 200),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Present perfect and past 1",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: height / 59,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  click();
                },
                child: Container(
                  height: height / 17,
                  width: width / 20,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.1, 0.2],
                        colors: <Color>[Colors.white, Color(0xff0b3b6b)]),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(left: height / 200),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Present perfect and past 1",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: height / 59,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  click();
                },
                child: Container(
                  height: height / 17,
                  width: width / 20,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.1, 0.2],
                        colors: <Color>[Colors.white, Color(0xff0b3b6b)]),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(left: height / 200),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Present perfect and past 1",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: height / 59,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  click();
                },
                child: Container(
                  height: height / 17,
                  width: width / 20,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.1, 0.2],
                        colors: <Color>[Colors.white, Color(0xff0b3b6b)]),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(left: height / 200),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Present perfect and past 1",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: height / 59,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  click();
                },
                child: Container(
                  height: height / 17,
                  width: width / 20,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.1, 0.2],
                        colors: <Color>[Colors.white, Color(0xff0b3b6b)]),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(left: height / 200),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Present perfect and past 1",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: height / 59,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  click();
                },
                child: Container(
                  height: height / 17,
                  width: width / 20,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.1, 0.2],
                        colors: <Color>[Colors.white, Color(0xff0b3b6b)]),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(left: height / 200),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Present perfect and past 1",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: height / 59,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  click();
                },
                child: Container(
                  height: height / 17,
                  width: width / 20,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.1, 0.2],
                        colors: <Color>[Colors.white, Color(0xff0b3b6b)]),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(left: height / 200),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Present perfect and past 1",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: height / 59,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  click();
                },
                child: Container(
                  height: height / 17,
                  width: width / 20,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.1, 0.2],
                        colors: <Color>[Colors.white, Color(0xff0b3b6b)]),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(left: height / 200),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Present perfect and past 1",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: height / 59,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  click();
                },
                child: Container(
                  height: height / 17,
                  width: width / 20,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.1, 0.2],
                        colors: <Color>[Colors.white, Color(0xff0b3b6b)]),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(left: height / 200),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Present perfect and past 1",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: height / 59,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  click();
                },
                child: Container(
                  height: height / 17,
                  width: width / 20,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.1, 0.2],
                        colors: <Color>[Colors.white, Color(0xff0b3b6b)]),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(left: height / 200),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Present perfect and past 1",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: height / 59,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  click();
                },
                child: Container(
                  height: height / 17,
                  width: width / 20,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.1, 0.2],
                        colors: <Color>[Colors.white, Color(0xff0b3b6b)]),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(left: height / 200),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Present perfect and past 1",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: height / 59,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ));
  }
  void click(){
    setState(() {
      visible1 == true ?
      visible1 = false:visible1 = true;
      print("object");

    });
  }
}
