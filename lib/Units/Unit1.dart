
import 'package:flutter/material.dart';

class Unit1 extends StatefulWidget {
   const Unit1({Key? key, required this.text1,required this.text2}) : super(key: key);
   final String text1 , text2;

   @override
  State<Unit1> createState() => _Unit1State();
}

class _Unit1State extends State<Unit1> {
  var coloryellow  = Color(0xfffbbc29);
  bool click = false;
  var colorblack  = Color(0xffededed);
  var color = Color(0xffededed);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    return SafeArea(
      left: true,
      right: true,
      top: true,
      bottom: true,
      child: Scaffold(
        backgroundColor: Color(0xffcce1ff),
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
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
          title: RichText(
            text: TextSpan(
                text: widget.text1,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: height / 60,
                    fontWeight: FontWeight.w400),
                children: [
                  TextSpan(
                    text: widget.text2,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: height / 60,
                        fontWeight: FontWeight.bold),
                  )
                ]),
          ),
          actions: [
            Container(
              alignment: Alignment.center,
              child: InkWell(
                onTap: (){
                  Drawer();
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
        drawer: Drawer(
          child: Column(
            children: [
              Icon(Icons.ice_skating)
            ],
          ),
        ),
        body: ListView(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: (){
                    // custommateria();
                  },
                  child: Container(
                    height: height/16,
                    width: width/2,
                    decoration: BoxDecoration(
                      color: coloryellow,
                      border: Border.all(
                        color: Colors.grey,
                        width: 0.8,
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.arrow_drop_down,color: const Color(0xff555555),size: height/25,),
                        Container(
                          margin: EdgeInsets.only(left: height/200),
                          child: Text("Explanations",
                            style: TextStyle(
                                fontSize: height/60,
                                fontWeight: FontWeight.bold
                            ),),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    setState(() {
                      click == true ? color = coloryellow :Container();
                    });
                  },
                  child: Container(
                    height: height/16,
                    width: width/2,
                    decoration: BoxDecoration(
                      color: colorblack,
                      border: Border.all(
                        color: Colors.grey,
                        width: 0.8,
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.arrow_drop_down,color: const Color(0xff555555),size: height/25,),
                        Container(
                          margin: EdgeInsets.only(left: height/200),
                          child: Text("Explanations",
                            style: TextStyle(
                                fontSize: height/60,
                                fontWeight: FontWeight.bold
                            ),),
                        )
                      ],
                    ),
                  ),
                ),
              ],),
            Container(
              height: height/14,
              decoration: const BoxDecoration(
                color: Color(0xff0b3b6b)
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: height/90,left: height/80),
                    alignment: Alignment.centerLeft,
                      child: Text("A",
                        style: TextStyle(
                          fontSize: height / 55,
                      fontWeight: FontWeight.bold,
                      color: Color(0xfffbbc29)
                  ),)),
                  Container(
                       margin: EdgeInsets.only(top: height/200,left: height/80),
                      alignment: Alignment.centerLeft,
                      child: Text("She's driving to work.",
                        style: TextStyle(
                            fontSize: height / 65,
                            fontWeight: FontWeight.w400,
                            color: Color(0xfffbbc29)
                        ),)),

                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.all(height/120),
              child: Container(
                height: height/2.2,
                decoration:const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                      Radius.circular(15.0) //                 <--- border radius here
                  ),
                ),
                child: ListView(
                  children: [
                    Container(
                      height: height/3,
                      padding: EdgeInsets.all(height/100),
                      child: Image.asset('assets/unit1A.jpeg',fit: BoxFit.fill,),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: height/200,left: height/80),
                        alignment: Alignment.centerLeft,
                        child: Text("Sarah is in her car. She is on her way to work.",
                          style: TextStyle(
                              fontSize: height / 65,
                              fontWeight: FontWeight.w400,
                              color: Colors.black
                          ),)),
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: height/80),
                            child: Icon(Icons.g_translate,color: Colors.blue,)),
                        Container(
                            margin: EdgeInsets.only(top: height/200,left: height/80),
                            alignment: Alignment.centerLeft,
                            child: Text("She's driving to work.",
                              style: TextStyle(
                                  fontSize: height / 65,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black
                              ),)),
                      ],
                    ),
                    Container(
                        margin: EdgeInsets.only(left: height/18),
                        alignment: Alignment.centerLeft,
                        child: Text("(= She is driving ...)",
                          style: TextStyle(
                              fontSize: height / 65,
                              fontWeight: FontWeight.w400,
                              color: Colors.black
                          ),)),
                    Container(
                        margin: EdgeInsets.only(top: height/80,left: height/80),
                        alignment: Alignment.centerLeft,
                        child: Text("This means she is driving now ,at the time of speaking",
                          style: TextStyle(
                              fontSize: height / 65,
                              fontWeight: FontWeight.w400,
                              color: Colors.black
                          ),)),
                  ],
                )
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: height/80,left: height/80),
                alignment: Alignment.centerLeft,
                child: RichText(
                    text: TextSpan(
                        text: 'am/is/are + -ing',
                        style: TextStyle(
                            fontSize: height / 65,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),
                        children: [
                        TextSpan(
                        text: 'is the present continuous:',
                        style: TextStyle(
                            fontSize: height / 65,
                            fontWeight: FontWeight.w400,
                            color: Colors.black
                        )
                    )
                    ]),
            ),
            ),
            SizedBox(height: height/60,),
            Container(
              height: height/13,
              color: Colors.white,
              margin: EdgeInsets.only(right: height/12),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: height/200,left: height/11.1),
                          alignment: Alignment.centerLeft,
                          child: Text("I",
                            style: TextStyle(
                                fontSize: height / 65,
                                color: Colors.black
                            ),)),
                      Container(
                          margin: EdgeInsets.only(top: height/200,left: height/80),
                          alignment: Alignment.centerLeft,
                          child: Text("am",
                            style: TextStyle(
                                fontSize: height / 65,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),)),
                      Container(
                          margin: EdgeInsets.only(top: height/200,left: height/19),
                          alignment: Alignment.centerLeft,
                          child: Text("(=I'm)",
                            style: TextStyle(
                                fontSize: height / 65,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),)),
                      Container(
                          margin: EdgeInsets.only(top: height/200,left: height/11.5),
                          alignment: Alignment.centerLeft,
                          child: Text("driving",
                            style: TextStyle(
                                fontSize: height / 65,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),)),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: height/200,left: height/23),
                          alignment: Alignment.centerLeft,
                          child: Text("he/she/it",
                            style: TextStyle(
                                fontSize: height / 65,
                                color: Colors.black
                            ),)),
                      Container(
                          margin: EdgeInsets.only(top: height/200,left: height/90),
                          alignment: Alignment.centerLeft,
                          child: Text("is",
                            style: TextStyle(
                                fontSize: height / 65,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),)),
                      Container(
                          margin: EdgeInsets.only(top: height/200,left: height/19),
                          alignment: Alignment.centerLeft,
                          child: Text("(=he's etc.)",
                            style: TextStyle(
                                fontSize: height / 65,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),)),
                      Container(
                          margin: EdgeInsets.only(top: height/200,left: height/20),
                          alignment: Alignment.centerLeft,
                          child: Text("working",
                            style: TextStyle(
                                fontSize: height / 65,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),)),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: height/200,left: height/90),
                          alignment: Alignment.centerLeft,
                          child: Text("we/you/they",
                            style: TextStyle(
                                fontSize: height / 65,
                                color: Colors.black
                            ),)),
                      Container(
                          margin: EdgeInsets.only(top: height/200,left: height/90),
                          alignment: Alignment.centerLeft,
                          child: Text("are",
                            style: TextStyle(
                                fontSize: height / 65,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),)),
                      Container(
                          margin: EdgeInsets.only(top: height/200,left: height/19),
                          alignment: Alignment.centerLeft,
                          child: Text("(=we're etc.)",
                            style: TextStyle(
                                fontSize: height / 65,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),)),
                      Container(
                          margin: EdgeInsets.only(top: height/200,left: height/24),
                          alignment: Alignment.centerLeft,
                          child: Text("doing etc",
                            style: TextStyle(
                                fontSize: height / 65,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),)),
                    ],
                  )
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: height/60,left: height/80),
                alignment: Alignment.centerLeft,
                child: Text("In negative sentence we use:",
                  style: TextStyle(
                      fontSize: height / 65,
                      fontWeight: FontWeight.w400,
                      color: Colors.black
                  ),)),
            Container(
              margin: EdgeInsets.only(left: height/20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                        text: "I '",
                        style: TextStyle(
                            fontSize: height / 65,
                            fontWeight: FontWeight.w400,
                            color: Colors.black
                        ),
                        children: [
                          TextSpan(
                              text: 'm not driving',
                              style: TextStyle(
                                  fontSize: height / 65,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              )
                          )
                        ]),
                  ),
                  RichText(
                    text: TextSpan(
                        text: "he ",
                        style: TextStyle(
                            fontSize: height / 65,
                            fontWeight: FontWeight.w400,
                            color: Colors.black
                        ),
                        children: [
                          TextSpan(
                              text: "isn't working or he's not working",
                              style: TextStyle(
                                  fontSize: height / 65,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              )
                          )
                        ]),
                  ),
                  RichText(
                    text: TextSpan(
                        text: "we",
                        style: TextStyle(
                            fontSize: height / 65,
                            fontWeight: FontWeight.w400,
                            color: Colors.black
                        ),
                        children: [
                          TextSpan(
                              text: " aren't doing or we're not doing",
                              style: TextStyle(
                                  fontSize: height / 65,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              )
                          )
                        ]),
                  ),
                  RichText(
                    text: TextSpan(
                        text: "etc",
                        style: TextStyle(
                            fontSize: height / 65,
                            fontWeight: FontWeight.w400,
                            color: Colors.black
                        ),
                        ),
                  ),

                ],
              ),
            ),
            Container(
              color: Colors.yellow,
              height: height/26,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(right: height/2.5),
              child: TextButton(
                onPressed: (){

                },
                child: Text("Spelling",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300),),
              ),
            ),
            SizedBox(height: height/35),
            Container(
              color: Colors.yellow,
              height: height/26,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(right: height/4.4),
              child: TextButton(
                onPressed: (){

                },
                child: const Text("short forms(i'm,she's aren't etc)",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300),),
              ),
            ),
            SizedBox(height: height/35),
            Container(
              height: height/26,
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 0.8,
                ),
              ),
              margin: EdgeInsets.only(right: height/2.6),
              child: TextButton(
                onPressed: (){

                },
                child: const Text("exercise 1",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300),),
              ),
            ),

            //
            Container(
              height: height/14,
              decoration: const BoxDecoration(
                  color: Color(0xff0b3b6b)
              ),
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(top: height/90,left: height/80),
                      alignment: Alignment.centerLeft,
                      child: Text("A",
                        style: TextStyle(
                            fontSize: height / 55,
                            fontWeight: FontWeight.bold,
                            color: Color(0xfffbbc29)
                        ),)),
                  Container(
                      margin: EdgeInsets.only(top: height/200,left: height/80),
                      alignment: Alignment.centerLeft,
                      child: Text("She's driving to work.",
                        style: TextStyle(
                            fontSize: height / 65,
                            fontWeight: FontWeight.w400,
                            color: Color(0xfffbbc29)
                        ),)),

                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(height/120),
              child: Container(
                  height: height/2.2,
                  decoration:const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                        Radius.circular(15.0) //                 <--- border radius here
                    ),
                  ),
                  child: ListView(
                    children: [
                      Container(
                        height: height/3,
                        padding: EdgeInsets.all(height/100),
                        child: Image.asset('assets/unit1A.jpeg',fit: BoxFit.fill,),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: height/200,left: height/80),
                          alignment: Alignment.centerLeft,
                          child: Text("Sarah is in her car. She is on her way to work.",
                            style: TextStyle(
                                fontSize: height / 65,
                                fontWeight: FontWeight.w400,
                                color: Colors.black
                            ),)),
                      Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: height/80),
                              child: Icon(Icons.g_translate,color: Colors.blue,)),
                          Container(
                              margin: EdgeInsets.only(top: height/200,left: height/80),
                              alignment: Alignment.centerLeft,
                              child: Text("She's driving to work.",
                                style: TextStyle(
                                    fontSize: height / 65,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black
                                ),)),
                        ],
                      ),
                      Container(
                          margin: EdgeInsets.only(left: height/18),
                          alignment: Alignment.centerLeft,
                          child: Text("(= She is driving ...)",
                            style: TextStyle(
                                fontSize: height / 65,
                                fontWeight: FontWeight.w400,
                                color: Colors.black
                            ),)),
                      Container(
                          margin: EdgeInsets.only(top: height/80,left: height/80),
                          alignment: Alignment.centerLeft,
                          child: Text("This means she is driving now ,at the time of speaking",
                            style: TextStyle(
                                fontSize: height / 65,
                                fontWeight: FontWeight.w400,
                                color: Colors.black
                            ),)),
                    ],
                  )
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: height/80,left: height/80),
              alignment: Alignment.centerLeft,
              child: RichText(
                text: TextSpan(
                    text: 'am/is/are + -ing',
                    style: TextStyle(
                        fontSize: height / 65,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),
                    children: [
                      TextSpan(
                          text: 'is the present continuous:',
                          style: TextStyle(
                              fontSize: height / 65,
                              fontWeight: FontWeight.w400,
                              color: Colors.black
                          )
                      )
                    ]),
              ),
            ),
            SizedBox(height: height/60,),
            Container(
              height: height/13,
              color: Colors.white,
              margin: EdgeInsets.only(right: height/12),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: height/200,left: height/11.1),
                          alignment: Alignment.centerLeft,
                          child: Text("I",
                            style: TextStyle(
                                fontSize: height / 65,
                                color: Colors.black
                            ),)),
                      Container(
                          margin: EdgeInsets.only(top: height/200,left: height/80),
                          alignment: Alignment.centerLeft,
                          child: Text("am",
                            style: TextStyle(
                                fontSize: height / 65,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),)),
                      Container(
                          margin: EdgeInsets.only(top: height/200,left: height/19),
                          alignment: Alignment.centerLeft,
                          child: Text("(=I'm)",
                            style: TextStyle(
                                fontSize: height / 65,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),)),
                      Container(
                          margin: EdgeInsets.only(top: height/200,left: height/11.5),
                          alignment: Alignment.centerLeft,
                          child: Text("driving",
                            style: TextStyle(
                                fontSize: height / 65,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),)),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: height/200,left: height/23),
                          alignment: Alignment.centerLeft,
                          child: Text("he/she/it",
                            style: TextStyle(
                                fontSize: height / 65,
                                color: Colors.black
                            ),)),
                      Container(
                          margin: EdgeInsets.only(top: height/200,left: height/90),
                          alignment: Alignment.centerLeft,
                          child: Text("is",
                            style: TextStyle(
                                fontSize: height / 65,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),)),
                      Container(
                          margin: EdgeInsets.only(top: height/200,left: height/19),
                          alignment: Alignment.centerLeft,
                          child: Text("(=he's etc.)",
                            style: TextStyle(
                                fontSize: height / 65,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),)),
                      Container(
                          margin: EdgeInsets.only(top: height/200,left: height/20),
                          alignment: Alignment.centerLeft,
                          child: Text("working",
                            style: TextStyle(
                                fontSize: height / 65,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),)),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: height/200,left: height/90),
                          alignment: Alignment.centerLeft,
                          child: Text("we/you/they",
                            style: TextStyle(
                                fontSize: height / 65,
                                color: Colors.black
                            ),)),
                      Container(
                          margin: EdgeInsets.only(top: height/200,left: height/90),
                          alignment: Alignment.centerLeft,
                          child: Text("are",
                            style: TextStyle(
                                fontSize: height / 65,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),)),
                      Container(
                          margin: EdgeInsets.only(top: height/200,left: height/19),
                          alignment: Alignment.centerLeft,
                          child: Text("(=we're etc.)",
                            style: TextStyle(
                                fontSize: height / 65,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),)),
                      Container(
                          margin: EdgeInsets.only(top: height/200,left: height/24),
                          alignment: Alignment.centerLeft,
                          child: Text("doing etc",
                            style: TextStyle(
                                fontSize: height / 65,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),)),
                    ],
                  )
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: height/60,left: height/80),
                alignment: Alignment.centerLeft,
                child: Text("In negative sentence we use:",
                  style: TextStyle(
                      fontSize: height / 65,
                      fontWeight: FontWeight.w400,
                      color: Colors.black
                  ),)),
            Container(
              margin: EdgeInsets.only(left: height/20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                        text: "I '",
                        style: TextStyle(
                            fontSize: height / 65,
                            fontWeight: FontWeight.w400,
                            color: Colors.black
                        ),
                        children: [
                          TextSpan(
                              text: 'm not driving',
                              style: TextStyle(
                                  fontSize: height / 65,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              )
                          )
                        ]),
                  ),
                  RichText(
                    text: TextSpan(
                        text: "he ",
                        style: TextStyle(
                            fontSize: height / 65,
                            fontWeight: FontWeight.w400,
                            color: Colors.black
                        ),
                        children: [
                          TextSpan(
                              text: "isn't working or he's not working",
                              style: TextStyle(
                                  fontSize: height / 65,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              )
                          )
                        ]),
                  ),
                  RichText(
                    text: TextSpan(
                        text: "we",
                        style: TextStyle(
                            fontSize: height / 65,
                            fontWeight: FontWeight.w400,
                            color: Colors.black
                        ),
                        children: [
                          TextSpan(
                              text: " aren't doing or we're not doing",
                              style: TextStyle(
                                  fontSize: height / 65,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              )
                          )
                        ]),
                  ),
                  RichText(
                    text: TextSpan(
                      text: "etc",
                      style: TextStyle(
                          fontSize: height / 65,
                          fontWeight: FontWeight.w400,
                          color: Colors.black
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Container(
              color: Colors.yellow,
              height: height/26,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(right: height/2.5),
              child: TextButton(
                onPressed: (){

                },
                child: Text("Spelling",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300),),
              ),
            ),
            SizedBox(height: height/35),
            Container(
              color: Colors.yellow,
              height: height/26,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(right: height/4.4),
              child: TextButton(
                onPressed: (){

                },
                child: const Text("short forms(i'm,she's aren't etc)",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300),),
              ),
            ),
            SizedBox(height: height/35),
            Container(
              height: height/26,
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 0.8,
                ),
              ),
              margin: EdgeInsets.only(right: height/2.6),
              child: TextButton(
                onPressed: (){

                },
                child: const Text("exercise 1",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300),),
              ),
            )
          ],
        ),
      ));
  }
}

