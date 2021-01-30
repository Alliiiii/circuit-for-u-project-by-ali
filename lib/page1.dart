import 'package:flutter/material.dart';
//secure pkg
import 'package:flutter_windowmanager/flutter_windowmanager.dart';
import 'package:pdfwithassets/89c51.dart';
//import 'package:flutter/rendering.dart';
import 'package:pdfwithassets/newpage.dart';
import 'package:pdfwithassets/switchmodepowersupply.dart';
import '81.dart';
import '555 Timer.dart';
import 'Analog Circuit.dart';
import 'Arduino Circuits and project.dart';
import 'Breakout Boards.dart';
import 'Digital Circuit.dart';
import 'Electrical Circuit.dart';
import 'Example Projects.dart';
import 'Linear powersupply.dart';
import 'Miscellanous.dart';
import 'Operational Apmlifier.dart';
import 'Oscillator.dart';
import 'PIC12F675.dart';
import 'Scr tric and diac.dart';
import 'Transitior Logic.dart';
import 'logicgates.dart';
import '82.dart';
import '83.dart';
import '84.dart';
import '85.dart';
import '86.dart';
import '87.dart';
import '88.dart';
import '89.dart';
import '800.dart';
import '811.dart';
import '812.dart';
import '5551.dart';
import '5552.dart';
import '5553.dart';
import '5554.dart';
import 'a14.dart';
import 'a4.dart';
import 'a5.dart';
import 'package:pdfwithassets/a1.dart';
import 'package:pdfwithassets/a10.dart';
import 'package:pdfwithassets/a11.dart';
import 'package:pdfwithassets/a12.dart';
import 'package:pdfwithassets/a13.dart';
import 'package:pdfwithassets/a15.dart';
import 'package:pdfwithassets/a16.dart';
import 'package:pdfwithassets/a17.dart';
import 'package:pdfwithassets/a18.dart';
import 'package:pdfwithassets/a19.dart';
import 'package:pdfwithassets/a2.dart';
import 'package:pdfwithassets/a3.dart';
import 'package:pdfwithassets/a6.dart';
import 'package:pdfwithassets/a7.dart';
import 'package:pdfwithassets/a9.dart';
import 'ard1.dart';
//break board out
import 'package:pdfwithassets/b1.dart';
import 'package:pdfwithassets/b2.dart';
import 'package:pdfwithassets/b4.dart';
import 'package:pdfwithassets/b5.dart';
import 'package:pdfwithassets/b6.dart';
import 'b3.dart';
//digital circuits 1
import 'dc1.dart';
//electrical circuits
import 'ec1.dart';
//example projects
import 'package:pdfwithassets/e1.dart';
import 'package:pdfwithassets/e10.dart';
import 'package:pdfwithassets/e11.dart';
import 'package:pdfwithassets/e12.dart';
import 'package:pdfwithassets/e13.dart';
import 'package:pdfwithassets/e2.dart';
import 'package:pdfwithassets/e3.dart';
import 'package:pdfwithassets/e5.dart';
import 'package:pdfwithassets/e6.dart';
import 'package:pdfwithassets/e7.dart';
import 'package:pdfwithassets/e8.dart';
import 'package:pdfwithassets/e9.dart';
//linear power supply
import 'package:pdfwithassets/l1.dart';
import 'package:pdfwithassets/l2.dart';
import 'package:pdfwithassets/l3.dart';
import 'package:pdfwithassets/l4.dart';
import 'package:pdfwithassets/l5.dart';
import 'package:pdfwithassets/l6.dart';
//logical gates
import 'lg1.dart';
import 'lg2.dart';
import 'lg3.dart';
import 'lg4.dart';
import 'lg5.dart';
import 'lg7.dart';
//misleanous
import 'package:pdfwithassets/p1.dart';
import 'package:pdfwithassets/p10.dart';
import 'package:pdfwithassets/p11.dart';
import 'package:pdfwithassets/p12.dart';
import 'package:pdfwithassets/p13.dart';
import 'package:pdfwithassets/p2.dart';
import 'package:pdfwithassets/p3.dart';
import 'package:pdfwithassets/p4.dart';
import 'package:pdfwithassets/p5.dart';
import 'package:pdfwithassets/p6.dart';
import 'package:pdfwithassets/p7.dart';
import 'package:pdfwithassets/p9.dart';
import 'newpage1.dart';
import 'p8.dart';
//operational amplifier
import 'op1.dart';
import 'op2.dart';
import 'op3.dart';
import 'op5.dart';
//osilatour
import 'os1.dart';
import 'os2.dart';
//pic12F6
import 'pic1.dart';
import 'pic2.dart';
import 'pic3.dart';
import 'pic4.dart';
//SCRSWIC
import 'src1.dart';
import 'src2.dart';
//SWITCH MODE POWER SUPPLY
import 'package:pdfwithassets/s1.dart';
import 'package:pdfwithassets/s10.dart';
import 'package:pdfwithassets/s11.dart';
import 'package:pdfwithassets/s2.dart';
import 'package:pdfwithassets/s3.dart';
import 'package:pdfwithassets/s4.dart';
import 'package:pdfwithassets/s5.dart';
import 'package:pdfwithassets/s6.dart';
import 'package:pdfwithassets/s7.dart';
import 'package:pdfwithassets/s8.dart';
import 'package:pdfwithassets/s9.dart';
//TRANSISTOR LOGIC
import 'package:pdfwithassets/t1.dart';
import 'package:pdfwithassets/t10.dart';
import 'package:pdfwithassets/t2.dart';
import 'package:pdfwithassets/t3.dart';
import 'package:pdfwithassets/t4.dart';
import 'package:pdfwithassets/t5.dart';
import 'package:pdfwithassets/t6.dart';
import 'package:pdfwithassets/t7.dart';
import 'package:pdfwithassets/t8.dart';
import 'package:pdfwithassets/t9.dart';



class Welcomepage extends StatefulWidget {
  @override
  State createState()=>new WelcomepageState();
}
class WelcomepageState extends State<Welcomepage>{
  //secure
 Future<void> secureScreen() async {
    await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE); 
  }
  
  @override
  void initState() {
    secureScreen();
    super.initState();
  }
//drop down list
  final List<String> association=["All","89c51","Transistor Logic","Breakout Boards","Example Projects","Basic Circuit","Miscellaneous","Linear Power Supply","Switch Mode Power Supplies","SCR TRIAC & DIAC","Filter","Analog Circuit","Arduino Circuits & Projects","PIC12F675","Electrical Circuits","Operational Amplifier","Digital Circuits","555 Timer","Oscillators","Logic Gates"];
  String selectAssociation="All";
//drop down list
  @override
  Widget build(BuildContext context){
final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;

    return Scaffold(

      appBar:AppBar(

        backgroundColor: Colors.white,

        //centerTitle: true,
        title: TextField(
          style: TextStyle(fontSize: 17),
          decoration: InputDecoration(
            hintText: "Search Circuits",
            suffixIcon: Icon(Icons.search),
            // prefixIcon: Icon(Icons.search),
          ),

        ),

      ),

      body:
      Container(
        //

        //

        child:
        ListView(
          children: <Widget>[
            Container(
              color: Colors.orange,
              child:Column(
                children:[
/*
       Container(
                            height: 50.0,
                            margin: EdgeInsets.only(top:30),
                            child: Material(
                             // elevation: 18,
                              //borderRadius: const BorderRadius.all(
                               // const Radius.circular(10.0),
                              //),
                              shadowColor: Colors.grey[200],
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    //contentPadding:
                                      //  EdgeInsets.fromLTRB(20, 0, 0, 10),
                                    fillColor: Colors.white,
                                    filled: true,
                                    // border: InputBorder.none,

                                    icon: new Icon(Icons.search,color: Colors.grey,),
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    hintText: 'Search Circuits',

                                    hintStyle: TextStyle(
     color: Colors.grey, // <-- Change this
     fontSize: 18,
     fontWeight: FontWeight.w400,
     fontStyle: FontStyle.normal,),
                                    border: new OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(20.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          */
                  // dropdown

                  Container(
                    color: Colors.white,
                    width: double.infinity,
                    margin: EdgeInsets.only(top:7.0),
                    child:Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        //width: double.infinity,

                        Container(
                          //color: Colors.green,
                          height: 50.0,
                          // width: 250,

                          margin: EdgeInsets.only(top:0.0,right: 110),

                          child: Material(
                            // elevation: 18,

                            // borderRadius: const BorderRadius.all(
                            // const Radius.circular(10.0),
                            //),
                            shadowColor: Colors.white,
                            child: DropdownButton<String>(
                                value:selectAssociation,
                                onChanged: (value) {
                                  setState(() {
                                    selectAssociation = value;

                                  });
                                },
                                items: association.map<DropdownMenuItem<String>>((value){
                                  return DropdownMenuItem(

                                    child: Padding(
                                      padding:
                                      const EdgeInsets.only(left:6.0),
                                      child:
                                      new InkWell(
                                        onTap: ()
                                        { if(value == "89c51"){ Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context)=>c15(),
                                        settings: RouteSettings(arguments: value,))
                                        );
                                        }

                                        else if(value=='Transistor Logic'){ Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context)=>transitorlogic(),
                                                settings: RouteSettings(arguments: value,))
                                        );
                                        }

                                        else if(value=='Breakout Boards'){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context)=>Breakoutboards(),
                                                  settings: RouteSettings(arguments: value,))
                                          );
                                        }

                                        else if(value=='Example Projects'){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context)=>Exampleproject(),
                                                  settings: RouteSettings(arguments: value,))
                                          );
                                        }

                                        else if(value=='Basic Circuit'){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context)=>NewPage(),
                                                  settings: RouteSettings(arguments: value,))
                                          );
                                        }

                                        else if(value=='Miscellaneous'){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context)=>Miscellanous(),
                                                  settings: RouteSettings(arguments: value,))
                                          );
                                        }

                                        else if(value=='Linear Power Supply'){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context)=>Linearpowersupply(),
                                                  settings: RouteSettings(arguments: value,))
                                          );
                                        }

                                        else if(value=='Switch Mode Power Supplies'){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context)=>switchmodepowersupply(),
                                                  settings: RouteSettings(arguments: value,))
                                          );
                                        }

                                        else if(value=='SCR TRIAC & DIAC'){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context)=>Srctricanddiac(),
                                                  settings: RouteSettings(arguments: value,))
                                          );
                                        }

                                        else if(value=='Filter'){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context)=>NewPage1(),
                                                  settings: RouteSettings(arguments: value,))
                                          );
                                        }

                                        else if(value=='Analog Circuit'){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context)=>AnalogCircuit(),
                                                  settings: RouteSettings(arguments: value,))
                                          ); }

                                        else if(value=='Arduino Circuits & Projects'){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context)=>ArduinoCircuitsProjects(),
                                                  settings: RouteSettings(arguments: value,))
                                          );}
                                        else if(value=='PIC12F675'){
                                           Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context)=>PIC12F675(),
                                                  settings: RouteSettings(arguments: value,))
                                          );
                                        }
                                        else if(value=='Electrical Circuits'){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context)=>ElectricalCircuits(),
                                                  settings: RouteSettings(arguments: value,))
                                          );}
                                        else if(value=='Operational Amplifier'){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context)=>OperationalAmplifier(),
                                                  settings: RouteSettings(arguments: value,))
                                          ); }

                                        else if(value=='Digital Circuits'){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context)=>DigitalCircuits(),
                                                  settings: RouteSettings(arguments: value,))
                                          ); }
                                        else if(value=='555 Timer'){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context)=>TriplefiveTimer(),
                                                  settings: RouteSettings(arguments: value,))
                                          );
                                        }
                                        else if(value=='Oscillators'){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context)=>Oscillators(),
                                                  settings: RouteSettings(arguments: value,))
                                          );  }
                                        else if(value=='Logic Gates'){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context)=>LogicGates(),
                                                  settings: RouteSettings(arguments: value,))
                                          );
                                        }
                                        else if(value=='All'){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context)=>Welcomepage(),
                                                  settings: RouteSettings(arguments: value,))
                                          );

                                        }
                                        else{
                                          print(value);
                                        }
                                        }   ,

                                         /* {Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context)=>NewPage(),
                                            settings: RouteSettings(arguments: value,))
                                          );
                                        },
*/                                        child: Text(value,style: TextStyle(fontSize: 17,
                                            color: Colors.grey),),
                                      ),
                                    ),

                                    value: value,
                                  );

                                }).toList()

                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  //
//card
 //2nd container end
    
          InkWell(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>eighty1(),
                     )
              );

            },
            child: Card(

              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[


                  Container(
                    height:height*0.20,
                    width: width*0.70,
                    child: Image.asset(

                        'assets/81.JPG',
                        fit:BoxFit.cover
                    ),
                  ),
                  const ListTile(
                    //leading: Icon(Icons.album),
                    title: Text('Interfacing 20x4 LCD with AT89C51'),
                    subtitle: Text('Use Proteus 7.10 for simulation. All necessary files are \n given .Thus program is just for beginners understanding..',style: TextStyle(fontSize: 12,),),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      const SizedBox(width: 8),
                      TextButton(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 235),
                          child: const Text('                       89c51\n             2020-03-27',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                        ),
                        onPressed: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                        },
                      ),
                      /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                    ],
                  ),
                  /*Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      const SizedBox(width: 8),
                      TextButton(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 280),
                          child: const Text('    89c51 \n     2020-03-25',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                        ),
                        onPressed: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                        },
                      ),
                      *//*const SizedBox(width: 0),
                      const SizedBox(width: 0),*//*


                    ],
                  ),*/
                ],
              ),

            ),
          ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>eighty2(),
                          )
                      );

                    },

                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.70,
                            child: Image.asset(

                                'assets/82.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('External Interrupt for AT89C51'),
                            subtitle: Text('Use Proteus 7.10 for simulation and Kiel for C-code\nmodification. This is a demo program for testing extern..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('                       89c51\n             2020-03-25',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>eighty3(),
                          )
                      );

                    },

                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.80,
                            child: Image.asset(

                                'assets/83.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Two Digit Counter Program 00-99'),
                            subtitle: Text('Use Proteus 7.10 for simulation and Keil for C-code \nmodification. This is a demo Progrsm for counter in ATB..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235,top: 0),
                                  child: const Text('                       89c51\n             2020-03-25',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),

                  InkWell(  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>eighty4(),
                        )
                    );

                  },

                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.55,
                            child: Image.asset(

                                'assets/84.JPG',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('AT89C51 (8051) Timer Test Program'),
                            subtitle: Text('Use Proteus 7.10 for simulation This is a demo program\nfor serial shift testing using AT89c51 microcontroller .You..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('                       89c51\n             2020-03-25',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                          /*Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      const SizedBox(width: 8),
                      TextButton(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 280),
                          child: const Text('    89c51 \n     2020-03-25',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                        ),
                        onPressed: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                        },
                      ),
                      *//*const SizedBox(width: 0),
                      const SizedBox(width: 0),*//*


                    ],
                ),*/
                        ],
                      ),

                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>eighty5(),
                          )
                      );

                    },

                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.80,
                            child: Image.asset(

                                'assets/85.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Serial Shift Program'),
                            subtitle: Text('Use Proteus 7.10 for simulation This is a demo program\nfor serial shift testing using AT89c51 microcontroller .You..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('                       89c51\n             2020-03-25',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>eighty6(),
                          )
                      );

                    },

                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.50,
                            child: Image.asset(

                                'assets/86.JPG',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Serial Communication Between Microcontrollers'),
                            subtitle: Text('Use Proteus 7.10 for simulation.This is a demo program\nfor serial communication of microcontrollers .You can c..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235,top: 0),
                                  child: const Text('                       89c51\n             2020-03-25',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),

                  InkWell(  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>eighty7(),
                        )
                    );

                  },

                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.60,
                            child: Image.asset(

                                'assets/87.JPG',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Interfacing 20x4 LCD with AT89C51'),
                            subtitle: Text('Use Proteus 7.10 for simulation. This is a demo program\nfor connecting multiple microcontrollers.You can custo..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('                       89c51\n             2020-03-25',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                          /*Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      const SizedBox(width: 8),
                      TextButton(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 280),
                          child: const Text('    89c51 \n     2020-03-25',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                        ),
                        onPressed: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                        },
                      ),
                      *//*const SizedBox(width: 0),
                      const SizedBox(width: 0),*//*


                    ],
                ),*/
                        ],
                      ),

                    ),
                  ),
                  InkWell(  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>eighty8(),
                        )
                    );

                  },

                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.60,
                            child: Image.asset(

                                'assets/88.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Digital Clock Using 7 Segment Multiplexing'),
                            subtitle: Text('Use Proteus 7.10 for simulation .This program uses\nseven segment with multiplexing for digital clock .In this pro..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('                       89c51\n             2020-03-25',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>eighty9(),
                          )
                      );

                    },

                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.60,
                            child: Image.asset(

                                'assets/89.JPG',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Basic LCD Code'),
                            subtitle: Text('Use Proteus 7.10 for simulation.Its s simple 2x16 LCD\ntest program for beginners.You can customize this sim..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235,top: 0),
                                  child: const Text('                       89c51\n             2020-03-25',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),

                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>eighty800(),
                          )
                      );

                    },

                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.70,
                            child: Image.asset(

                                'assets/800.JPG',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Basic LCD clock for Beginners'),
                            subtitle: Text('This is a simple digital clock for beginners.Use Proteus\n7.10 for simulation. You can customize this simulation a..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('                       89c51\n             2020-03-25',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                          /*Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      const SizedBox(width: 8),
                      TextButton(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 280),
                          child: const Text('    89c51 \n     2020-03-25',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                        ),
                        onPressed: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                        },
                      ),
                      *//*const SizedBox(width: 0),
                      const SizedBox(width: 0),*//*


                    ],
                ),*/
                        ],
                      ),

                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>eighty811(),
                          )
                      );

                    },

                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.55,
                            child: Image.asset(

                                'assets/811.jpg',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Basic Calculator for Beginners'),
                            subtitle: Text('In this circuit calculator is made by interfacing keypad\nand LCD.Keypad is made manually by using single push..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('                       89c51\n             2020-03-25',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>eighty812(),
                          )
                      );

                    },

                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.70,
                            child: Image.asset(

                                'assets/812.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('LED Blinking Test'),
                            subtitle: Text('',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235,top: 0),
                                  child: const Text('                       89c51\n             2020-03-17',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(
  onTap: (){

    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=>triplefive1(),
        )
    );
  },

  child:   Card(



  child: Column(

  mainAxisSize: MainAxisSize.min,

  children: <Widget>[





  Container(

  height:height*0.20,

  width: width*0.85,

  child: Image.asset(



  'assets/5551.gif',

  fit:BoxFit.cover

  ),

  ),

  const ListTile(

  //leading: Icon(Icons.album),

  title: Text('LED Flasher Using 555 Timer'),

  subtitle: Text('This is circuit is design and simulated in Proteus 7.10.\nIn this circuit you will learn about the famous timer ic w..',style: TextStyle(fontSize: 12,),),

  ),

  Column(

  mainAxisAlignment: MainAxisAlignment.end,

  children: <Widget>[

  const SizedBox(width: 8),

  TextButton(

  child: Padding(

  padding: const EdgeInsets.only(left: 235),

  child: const Text('            555 Timmer\n             2020-05-18',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),

  ),

  onPressed: () {

  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));

  },

  ),

  /*const SizedBox(width: 0),

                      const SizedBox(width: 0),*/





  ],

  ),

  ],

  ),



  ),
),
InkWell(


    onTap: (){

      Navigator.push(
          context,
          MaterialPageRoute(builder: (context)=>triplefive2(),
          )
      );
    },


    child:   Card(

  child: Column(
  mainAxisSize: MainAxisSize.min,
  children: <Widget>[


  Container(
  height:height*0.20,
  width: width*0.80,
  child: Image.asset(

  'assets/5552.gif',
  fit:BoxFit.cover
  ),
  ),
  const ListTile(
  //leading: Icon(Icons.album),
  title: Text('Bistable Multivirator Using 555 Timmer'),
  subtitle: Text('This is circuit is design and simulated in Proteus 7.10.\nIn this circuit you will learn about the famous timer ic w..',style: TextStyle(fontSize: 12,),),
  ),
  Column(
  mainAxisAlignment: MainAxisAlignment.end,
  children: <Widget>[
  const SizedBox(width: 8),
  TextButton(
  child: Padding(
  padding: const EdgeInsets.only(left: 235),
  child: const Text('            555 Timmer\n             2020-05-17',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
  ),
  onPressed: () {
  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
  },
  ),
  /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


  ],
  ),
  ],
  ),

  ),
),
InkWell(

  onTap: (){

    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=>triplefive3(),
        )
    );
  },
  child:   Card(

  child: Column(
  mainAxisSize: MainAxisSize.min,
  children: <Widget>[


  Container(
  height:height*0.20,
  width: width*0.85,
  child: Image.asset(

  'assets/5553.gif',
  fit:BoxFit.cover
  ),
  ),
  const ListTile(
  //leading: Icon(Icons.album),
  title: Text('Mono-stable Multi-vibrator Using 555 Timer'),
  subtitle: Text('This schematic and simulation is made in Proteus 7.10.Its.\n In this circuit you will learn about the famous timer ic w..',style: TextStyle(fontSize: 12,),),
  ),
  Column(
  mainAxisAlignment: MainAxisAlignment.end,
  children: <Widget>[
  const SizedBox(width: 8),
  TextButton(
  child: Padding(
  padding: const EdgeInsets.only(left: 235,top: 0),
  child: const Text('            555 Timmer\n             2020-05-16',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
  ),
  onPressed: () {
  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
  },
  ),
  /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


  ],
  ),
  ],
  ),

  ),
),
  InkWell(

    onTap: (){

      Navigator.push(
          context,
          MaterialPageRoute(builder: (context)=>triplefive4(),
          )
      );
    },
    child: Card(

      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[


          Container(
            height:height*0.20,
            width: width*0.85,
            child: Image.asset(

                'assets/5554.gif',
                fit:BoxFit.cover
            ),
          ),
          const ListTile(
//leading: Icon(Icons.album),
            title: Text('Astable Multivibrator Using 555 Timer'),
            subtitle: Text('This schematic and simulation is made in Proteus 7.10.Its.\n In this circuit you will learn about the famous timer ic w..',style: TextStyle(fontSize: 12,),),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              const SizedBox(width: 8),
              TextButton(
                child: Padding(
                  padding: const EdgeInsets.only(left: 235,top: 0),
                  child: const Text('            555 Timmer\n             2020-05-14',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                ),
                onPressed: () {
// Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                },
              ),
/*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


            ],
          ),
        ],
      ),

    ),
  ),
  //analog circuits
  
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>a1(),
                              )
                      );

                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.80,
                            child: Image.asset(

                                'assets/a1.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('AC to DC Voltage Doubler'),
                            subtitle: Text('This is circuit is design and simulated in Proteus 7.10.\nIn this circuit you will learn how a dc voltage doubler is..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('       Analog Circuits\n             2020-10-28',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(

                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>a2(),
                          )
                      );

                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width,
                            child: Image.asset(

                                'assets/a2.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Dual Diode Voltage Clipper'),
                            subtitle: Text('This is circuit is design and simulated in Proteus 7.10.\nIn this circuit you will learn how a diode is used to clip th..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('       Analog Circuits\n             2020-08-05',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(

                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>a3(),
                          )
                      );

                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width,
                            child: Image.asset(

                                'assets/a3.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Single Diode Voltage Clipper'),
                            subtitle: Text('This schematic and simulation is made in Proteus 7.10.Its.\nIn this circuit you will learn how a diode is used to clip th..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235,top: 0),
                                  child: const Text('       Analog Circuits\n             2020-08-05',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),

                  InkWell(

                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>a4(),
                          )
                      );

                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.60,
                            child: Image.asset(

                                'assets/a4.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Full Wave Rectifier With Two Dioades'),
                            subtitle: Text('This is circuit is design and simulated in Proteus 7.10.\nIn this circuit a full wave rectifier using two diode is si..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('       Analog Circuits\n             2020-08-01',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(

                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>a5(),
                          )
                      );

                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width,
                            child: Image.asset(

                                'assets/a5.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Full Wave Rectifier'),
                            subtitle: Text('This is circuit is design and simulated in Proteus 7.10.\nIn this circuit a full wave rectifier is simulated working..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('       Analog Circuits\n             2020-07-30',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(

                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>a6(),
                          )
                      );

                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width,
                            child: Image.asset(

                                'assets/a6.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Half Wave Rectifier'),
                            subtitle: Text('This is circuit is design and simulated in Proteus 7.10.\nIn this circuit a full wave rectifier is simulated and working..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('       Analog Circuits\n             2020-07-30',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(

                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>a7(),
                          )
                      );

                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.70,
                            child: Image.asset(

                                'assets/a7.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('1.5V to 220V Low Power Inverter'),
                            subtitle: Text('This is circuit is design and simulated in Proteus 7.10.\nIn this circuit you will learn how to make inverter using n..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('       Analog Circuits\n             2020-05-29',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(

                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>a9(),
                          )
                      );

                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.65,
                            child: Image.asset(

                                'assets/a9.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('LED Flasher'),
                            subtitle: Text('This is circuit is design and simulated in Proteus 7.10.\nThis is very intersting circuit of LED flasher ,another na..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('       Analog Circuits\n             2020-05-04',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(

                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>a10(),
                          )
                      );

                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.50,
                            child: Image.asset(

                                'assets/a10.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('How to Drive a Relay'),
                            subtitle: Text('This is circuit is design and simulated in Proteus 7.10. To\nsimulate this circuit you must have Proteus 7.10. installe..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('       Analog Circuits\n             2020-05-01',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(

                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>a11(),
                          )
                      );

                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.70,
                            child: Image.asset(

                                'assets/a11.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Voltage Doubler'),
                            subtitle: Text('This is circuit is design and simulated in Proteus 7.10.\nIn this circuit you will learn a concept of voltage doubler..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('       Analog Circuits\n             2020-05-01',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(

                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>a12(),
                          )
                      );

                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width,
                            child: Image.asset(

                                'assets/a12.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Remove Offset Using Capacitor'),
                            subtitle: Text('This is circuit is design and simulated in Proteus 7.10. In\nthis circuit a basic concept offset removal is shown..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('       Analog Circuits\n             2020-04-28',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(

                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>a13(),
                          )
                      );

                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.85,
                            child: Image.asset(

                                'assets/a13.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Transformerless Power Supply'),
                            subtitle: Text('This is circuit is design and simulated in Proteus 7.10.\nThis is a simple power circuit for making transformer pow..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('       Analog Circuits\n             2020-04-27',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(

                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>a14(),
                          )
                      );

                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width,
                            child: Image.asset(

                                'assets/a14.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Zener Diode as Dummy Load'),
                            subtitle: Text('This is circuit is design and simulated in Proteus 7.10.\nThis is a simple circuit for using zener diode as dummy I..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('       Analog Circuits\n             2020-04-27',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(

                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>a15(),
                          )
                      );

                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.75,
                            child: Image.asset(

                                'assets/a15.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Transistor as Amplifier'),
                            subtitle: Text('This is circuit is design and simulated in Proteus 7.10.\nIn this circuit you will learn how to use transistor as an a..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('       Analog Circuits\n             2020-04-25',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(

                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>a16(),
                          )
                      );

                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.70,
                            child: Image.asset(

                                'assets/a16.png',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Self-Adjust Equal Current Sharing'),
                            subtitle: Text('This is circuit is design and simulated in Proteus 7.10.\nThis is a very  basic and intersting circuit for "self Adjus..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('       Analog Circuits\n             2020-04-23',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(

                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>a17(),
                          )
                      );

                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.85,
                            child: Image.asset(

                                'assets/a17.png',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Current Mirror Circuit For LED Strings'),
                            subtitle: Text('This is simple current mirror circuit .The schematic and\nsimulated is made in Proteus 7.10. Therefore , if you wa..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('       Analog Circuits\n             2020-04-13',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(

                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>a18(),
                          )
                      );

                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.70,
                            child: Image.asset(

                                'assets/a18.JPG',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Audio (Speaker) Amplifier Using LM386'),
                            subtitle: Text('This is circuit is designed in Proteus 7.10. This is a simple \ntest circuit for audio amplifier. LM386 is used as audio a..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('       Analog Circuits\n             2020-04-16',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(

                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>a19(),
                          )
                      );

                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.80,
                            child: Image.asset(

                                'assets/a19.JPG',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('LDR with Operational Amplifier'),
                            subtitle: Text('The circuit is made in proteus .Use proteus 7.10. for\nsimulation.Ypu can chnage the design at any time as pr..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('       Analog Circuits\n             2020-04-16',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
  //ardrino circuit project 
  InkWell(
  onTap: (){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=>ard1(),
        )
    );
  },

  child:   Card(



  child: Column(

  mainAxisSize: MainAxisSize.min,

  children: <Widget>[





  Container(

  height:height*0.20,

  width: width,

  child: Image.asset(



  'assets/ard1.png',

  fit:BoxFit.cover

  ),

  ),

  const ListTile(

  //leading: Icon(Icons.album),

  title: Text('Arduino UNO Calculator'),

  subtitle: Text('This is circuit is design and simulated in Proteus 7.10.\nwhile code is wriiten in Ardiuno IDE. Therefore if you wa..',style: TextStyle(fontSize: 12,),),

  ),

  Column(

  mainAxisAlignment: MainAxisAlignment.end,

  children: <Widget>[

  const SizedBox(width: 8),

  TextButton(

  child: Padding(

  padding: const EdgeInsets.only(left: 195),

  child: const Text(' Arduino Circuit & Projects\n                          2020-04-14',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),

  ),

  onPressed: () {

  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));

  },

  ),

  /*const SizedBox(width: 0),

                      const SizedBox(width: 0),*/





  ],

  ),

  ],

  ),



  ),
),
//Breakboard out
 InkWell(

                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=>b1(),
                            )
                        );

                      },

                      child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.50,
                            child: Image.asset(

                                'assets/b1.png',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Breakout Board for 80 Pin dsPIC30F6014A'),
                            subtitle: Text('This is a generic Breakout boards for 80 pins\ndsPIC30F6014a. The schematic and pcb is designed in..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('    Breakout Boards\n             2020-04-11',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                          /*Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      const SizedBox(width: 8),
                      TextButton(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 280),
                          child: const Text('    89c51 \n     2020-03-25',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                        ),
                        onPressed: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                        },
                      ),
                      *//*const SizedBox(width: 0),
                      const SizedBox(width: 0),*//*


                    ],
                ),*/
                        ],
                      ),

                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>b2(),
                          )
                      );

                    },


                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.70,
                            child: Image.asset(

                                'assets/b2.bmp',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('PIC18F and PIC16F 40pin Breakout Board'),
                            subtitle: Text('This schematic and PCB is made in Proteus 8.6. This just\nfor beginners. Tracks which are in red color are jumpers..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('    Breakout Boards\n             2020-03-26',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>b3(),
                          )
                      );

                    },


                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.40,
                            child: Image.asset(

                                'assets/b3.JPG',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('PIC18F Breakout Board PCB'),
                            subtitle: Text('This schematic and PCB is made in Alitium Designer.This\n just for beginners.Track which are blue in color are ju..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235,top: 0),
                                  child: const Text('    Breakout Boards\n             2020-03-26',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),

                  InkWell(    onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>b4(),
                        )
                    );

                  },


                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.50,
                            child: Image.asset(

                                'assets/b4.JPG',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Adapter PCB for 100pin Microcontroller'),
                            subtitle: Text('The schematic and PCB is made in Altium Designer .Use\nlatest version of Altium Designer to make changes.PDF..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('    Breakout Boards\n             2020-03-25',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                          /*Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      const SizedBox(width: 8),
                      TextButton(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 280),
                          child: const Text('    89c51 \n     2020-03-25',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                        ),
                        onPressed: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                        },
                      ),
                      *//*const SizedBox(width: 0),
                      const SizedBox(width: 0),*//*


                    ],
                ),*/
                        ],
                      ),

                    ),
                  ),

                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>b5(),
                          )
                      );

                    },


                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.50,
                            child: Image.asset(

                                'assets/b5.JPG',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('General Breakout Board for 64pin SMD IC'),
                            subtitle: Text('This is a general board for 64 pin SMD Microcontrollers.\nFor example you can any dsPIC33 series 64pin SMD..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('    Breakout Boards\n             2020-03-25',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                          /*Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      const SizedBox(width: 8),
                      TextButton(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 280),
                          child: const Text('    89c51 \n     2020-03-25',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                        ),
                        onPressed: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                        },
                      ),
                      *//*const SizedBox(width: 0),
                      const SizedBox(width: 0),*//*


                    ],
                ),*/
                        ],
                      ),

                    ),
                  ),

                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>b6 (),
                          )
                      );

                    },


                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.50,
                            child: Image.asset(

                                'assets/b6.JPG',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('PIC18F General Circuit'),
                            subtitle: Text('This is a general Break out board for 18F series\nUse Proteus 8.6 for simulation and viewing PCB layout..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('    Breakout Boards\n             2020-03-21',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                          /*Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      const SizedBox(width: 8),
                      TextButton(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 280),
                          child: const Text('    89c51 \n     2020-03-25',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                        ),
                        onPressed: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                        },
                      ),
                      *//*const SizedBox(width: 0),
                      const SizedBox(width: 0),*//*


                    ],
                ),*/
                        ],
                      ),

                    ),
                  ),
                  //digital circuits
                  InkWell(
  onTap: (){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=>dc1(),
            )
    );

  },
  child:   Card(



  child: Column(

  mainAxisSize: MainAxisSize.min,

  children: <Widget>[





  Container(

  height:height*0.20,

  width: width*0.70,

  child: Image.asset(



  'assets/dc1.gif',

  fit:BoxFit.cover

  ),

  ),

  const ListTile(

  //leading: Icon(Icons.album),

  title: Text('Parallel in Serial Out Shift Register'),

  subtitle: Text('This is circuit is design and simulated in Proteus 7.10.\nThis is a simple circuit for demonstration of parallel to s..',style: TextStyle(fontSize: 12,),),

  ),

  Column(

  mainAxisAlignment: MainAxisAlignment.end,

  children: <Widget>[

  const SizedBox(width: 8),

  TextButton(

  child: Padding(

  padding: const EdgeInsets.only(left: 235),

  child: const Text('          Digital Circuit\n             2020-04-24',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),

  ),

  onPressed: () {

  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));

  },

  ),

  /*const SizedBox(width: 0),

                      const SizedBox(width: 0),*/





  ],

  ),

  ],

  ),



  ),
),
//electricla circuit
InkWell(
  onTap: (){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=>ec1(),
           )
    );
  },
  child:   Card(



  child: Column(

  mainAxisSize: MainAxisSize.min,

  children: <Widget>[





  Container(

  height:height*0.20,

  width: width,

  child: Image.asset(



  'assets/ec1.gif',

  fit:BoxFit.cover

  ),

  ),

  const ListTile(

  //leading: Icon(Icons.album),

  title: Text('Auto Transformer'),

  subtitle: Text('This is circuit is design and simulated in Proteus 7.10.\nIn this circuit you will learn how auto-transformer w..',style: TextStyle(fontSize: 12,),),

  ),

  Column(

  mainAxisAlignment: MainAxisAlignment.end,

  children: <Widget>[

  const SizedBox(width: 8),

  TextButton(

  child: Padding(

  padding: const EdgeInsets.only(left: 235),

  child: const Text('     Electrical Circuit\n             2020-04-22',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),

  ),

  onPressed: () {

  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));

  },

  ),

  /*const SizedBox(width: 0),

                      const SizedBox(width: 0),*/





  ],

  ),

  ],

  ),



  ),
),
//examples project
InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>e1(),
                          )
                      );
                    },

                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width,
                            child: Image.asset(

                                'assets/e1.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('50 W Inverter 12V to220V or 110V'),
                            subtitle: Text('This is circuit is design and simulated in Proteus 7.10.\nIn this circuit you will learn about thr famous timer ic w..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('   Example Projects\n             2020-05-17',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(

                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>e2(),
                          )
                      );
                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width,
                            child: Image.asset(

                                'assets/e2.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Battery Charger Circuit + PCB(Upto 2A)'),
                            subtitle: Text('This is circuit is design and simulated in Proteus 7.10.\nThis is a linear battery charger upto 2A,it can be used f..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('   Example Projects\n             2020-05-8',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(

                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>e3(),
                          )
                      );
                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.70,
                            child: Image.asset(

                                'assets/e3.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Automatic Voltage Stablizer'),
                            subtitle: Text('This schematic and simulation is made in Proteus 7.10.Its.\n thid is very simple and easy to understand circuit for au..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235,top: 0),
                                  child: const Text('   Example Projects\n             2020-05-02',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>e5(),
                          )
                      );
                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.70,
                            child: Image.asset(

                                'assets/e5.JPG',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('PIC18F4520 Development Board with 24 bit ADC'),
                            subtitle: Text('This schematic and PCB are designed in Altiun Designer..\nUse latest version of Altium Designer.This is an exampl..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('   Example Projects\n             2020-03-28',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(

                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>e6(),
                          )
                      );
                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.30,
                            child: Image.asset(

                                'assets/e6.JPG',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Six Channel High Gain Instrumentation Amplifier'),
                            subtitle: Text('This schematic and PCB are designed in Altiun  \nDesigner. Use latest version of Altium Designer.This is a..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('   Example Projects\n             2020-05-27',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(

                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>e7(),
                          )
                      );
                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.90,
                            child: Image.asset(

                                'assets/e7.JPG',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Two Stage Instrumentation Amplifier'),
                            subtitle: Text('This schematic and PCB are designed in Altiun  \nDesigner. Use latest version of Altium Designer.This is a..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('   Example Projects\n             2020-05-27',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(

                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>e8(),
                          )
                      );
                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.60,
                            child: Image.asset(

                                'assets/e8.JPG',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Solar MPPT Charge Controller'),
                            subtitle: Text('This is an example project on how to make home made\nMPPT Solar Charger.These chargers are very expensive..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('   Example Projects\n             2020-05-27',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(

                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>e9(),
                          )
                      );
                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.50,
                            child: Image.asset(

                                'assets/e9.JPG',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Example Code for LCD 20x4'),
                            subtitle: Text('Use Proteus 8.6 for simulation while MPLAB IDE and\nPIC C18 are used to write code .In this project the focus..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('   Example Projects\n             2020-05-26',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(

                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>e10(),
                          )
                      );
                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.70,
                            child: Image.asset(

                                'assets/e10.JPG',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Graphical LCD Example'),
                            subtitle: Text('Use Proteus 7.10 for simulation.This is a demo circuit\nof interfacing graphical LCD in proteus.This is just a sta..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('   Example Projects\n             2020-05-26',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(

                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>e11(),
                          )
                      );
                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.90,
                            child: Image.asset(

                                'assets/e11.JPG',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('DIY PicKit2 Programmer Project'),
                            subtitle: Text('This is complete project of Pickit 2 programmer.\nEverything is included like schematic,PCB,components..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('   Example Projects\n             2020-05-26',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(

                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>e12(),
                          )
                      );
                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.70,
                            child: Image.asset(

                                'assets/e12.JPG',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Proteus Keypad and LCD Interfacing with PIC18F'),
                            subtitle: Text('Use Proteus 7.10. for simulation and schematic modifica-\ntion. In this circuit you will learn how to interface keypad..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('   Example Projects\n             2020-05-26',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(

                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>e13(),
                          )
                      );
                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.60,
                            child: Image.asset(

                                'assets/e13.BMP',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Micro SD Card Interfacing With PIC18F'),
                            subtitle: Text('Use Proteus 7.10 for simulation. This project shows how\nto intialize Micro SD card with PIC18F microcontroller.I..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('   Example Projects\n             2020-05-26',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  //linear power supply
                   InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>l1(),
                              )
                      );
                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.80,
                            child: Image.asset(

                                'assets/l1.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('TL431 as Variable Zener Diode'),
                            subtitle: Text('This is circuit is design and simulated in Proteus 7.10. In\nthis circuit you will learn that how LM431 OR TL431 can..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 215,top: 0),
                                  child: const Text(' Linear Power Supplies\n                   2020-10-17',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(

                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>l2(),
                          )
                      );
                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.85,
                            child: Image.asset(

                                'assets/l2.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('TL431 as Consultant Linear Voltage Regulator'),
                            subtitle: Text('This is circuit is design and simulated in Proteus 7.10. In\nthis circuit you will learn that how LM431 OR TL431 ca..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 215,top: 0),
                                  child: const Text(' Linear Power Supplies\n                   2020-10-02',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(

                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>l3(),
                          )
                      );
                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.95,
                            child: Image.asset(

                                'assets/l3.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Variable Power Supply'),
                            subtitle: Text('This is circuit is design and simulated in Proteus 7.10. \nThis is simple circuit for achieving linear variable power..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 215,top: 0),
                                  child: const Text(' Linear Power Supplies\n                   2020-05-04',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),

                  InkWell(

                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>l4(),
                          )
                      );
                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.90,
                            child: Image.asset(

                                'assets/l4.png',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('LM317 as Constant Current Source'),
                            subtitle: Text('This schematic and simulation is also made in Proteus\n7.10. So if you want to do more experiment you should..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 215,top: 0),
                                  child: const Text(' Linear Power Supplies\n                   2020-04-16',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(

                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>l5(),
                          )
                      );
                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.90,
                            child: Image.asset(

                                'assets/l5.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('LM7805 as Variable Voltage Regulator'),
                            subtitle: Text('This is circuit is design and simulated in Proteus 7.10. \nTheredore if you want to do simulation again you should..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 215,top: 0),
                                  child: const Text(' Linear Power Supplies\n                   2020-04-16',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(

                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>l6(),
                          )
                      );
                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.80,
                            child: Image.asset(

                                'assets/l6.JPG',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('DIY Linear Power Supplies 15V, 12V, 5V & 3.3V'),
                            subtitle: Text('The dchematic and PCB is made in Altium Designner. The\nschematic is very simple.All regulators are linear.SMD r..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 215,top: 0),
                                  child: const Text(' Linear Power Supplies\n                   2020-03-26',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  //logical gates
                   InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>lg1(),
                              )
                      );

                    },
                    child: Card(



                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width,
                            child: Image.asset(

                                'assets/lg1.gif',
                                fit:BoxFit.fill
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Two Input XNOR Gate Using OR & NAND'),
                            subtitle: Text('This is circuit is design and simulated in Proteus 7.10.\nIn this circuit you will learn how to make XNOR gate pra..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('             Logic Gates\n             2020-06-27',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                   InkWell(
                     onTap: (){
                       Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context)=>lg2(),
                           )
                       );

                     },
                     child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width,
                            child: Image.asset(

                                'assets/lg2.gif',
                                fit:BoxFit.fill,
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Two Input XNOR Gate Using OR-NAND & AND'),
                            subtitle: Text('This is circuit is design and simulated in Proteus 7.10.\nIn this circuit you will learn how to make XOR gate practi..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('             Logic Gates\n             2020-06-27',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                  ),
                   ),
                  InkWell(

                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>lg3(),
                          )
                      );

                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.80,
                            child: Image.asset(

                                'assets/lg3.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Two Input NAND Gate'),
                            subtitle: Text('This is circuit is design and simulated in Proteus 7.10.\nIn this circuit you will learn how to make NAND gate pra..',style: TextStyle(fontSize: 12,),),
                                                     ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235,top: 0),
                                  child: const Text('             Logic Gates\n             2020-06-23',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),

                  InkWell(

                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>lg4(),
                          )
                      );

                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.75,
                            child: Image.asset(

                                'assets/lg4.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Two Input AND Gate'),
                            subtitle: Text('This is circuit is design and simulated in Proteus 7.10.\nIn this circuit you will learn how to make AND gate pract..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235,top: 0),
                                  child: const Text('             Logic Gates\n             2020-06-22',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),

                  InkWell(

                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>lg5(),
                          )
                      );

                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.65,
                            child: Image.asset(

                                'assets/lg5.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Two Input NOR Gate'),
                            subtitle: Text('This is circuit is design and simulated in Proteus 7.10.\nIn this circuit you will learn how to make NOR gate pract..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235,top: 0),
                                  child: const Text('             Logic Gates\n             2020-06-07',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),

                  InkWell(

                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>lg7(),
                          )
                      );

                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width,
                            child: Image.asset(

                                'assets/lg7.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Two Input or Gate'),
                            subtitle: Text('This is circuit is design and simulated in Proteus 7.10.\nIn this circuit you will learn how to make OR gate practicall..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235,top: 0),
                                  child: const Text('             Logic Gates\n             2020-06-05',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  //mislineous pg
                   InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>p1(),
                          )
                      );

                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width,
                            child: Image.asset(

                                'assets/p1.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('PWM Battery Charger and Desulfator'),
                            subtitle: Text('This is circuit is design and simulated in Proteus 7.10.\nIn this circuit you will learn how a PWM circuit is used to..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('        Miscellaneous\n             2020-08-22',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(

                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>p2(),
                          )
                      );

                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width,
                            child: Image.asset(

                                'assets/p2.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Simple Battery Charger and Desulfator'),
                            subtitle: Text('This is circuit is design and simulated in Proteus 7.10.\nIn this circuit you will learn how a diode bridge is used to..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('        Miscellaneous\n             2020-08-09',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(

                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>p3(),
                          )
                      );

                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.90,
                            child: Image.asset(

                                'assets/p3.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Battery Charger Using Single Diode Clipper'),
                            subtitle: Text('This is circuit is design and simulated in Proteus 7.10.\nIn this circuit you will learn diode voltage clipper i..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235,top: 0),
                                  child: const Text('        Miscellaneous\n             2020-08-08',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),


                  InkWell(

                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>p4(),
                          )
                      );

                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.70,
                            child: Image.asset(

                                'assets/p4.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Atmega16 LED Blink in Assembly'),
                            subtitle: Text('This is a simple LED blink demo project in assembly \nlanguage for AVR microcontrollers. In this project ATME..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235,top: 0),
                                  child: const Text('        Miscellaneous\n             2020-04-15',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),


                  InkWell(

                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>p5(),
                          )
                      );

                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.70,
                            child: Image.asset(

                                'assets/p5.png',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('LCD Interfacing With PIC16F628'),
                            subtitle: Text('This schematic is designed in roteus 7.10 and source\ncode in Mplab X IDE.This is a simple circuit with source..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235,top: 0),
                                  child: const Text('        Miscellaneous\n             2020-04-10',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),

                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>p6(),
                          )
                      );

                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.80,
                            child: Image.asset(

                                'assets/p6.png',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('H Bridge With Boot Strap Concept'),
                            subtitle: Text('This is circuit is designed in Proteus 8.2. It is recommended \nto use the latest version of Proteus.This is simple circ..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235,top: 0),
                                  child: const Text('        Miscellaneous\n             2020-04-09',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(

                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>p7(),
                          )
                      );

                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.80,
                            child: Image.asset(

                                'assets/p7.JPG',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Single Channel USB to Uart Converter MCP2200'),
                            subtitle: Text('The schematic and PCB is made in Alitum Designer\nMostly in today''s' ' laptop,COM port is not avaliable .So y..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235,top: 0),
                                  child: const Text('        Miscellaneous\n             2020-03-28',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(

                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>p8(),
                          )
                      );

                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.60,
                            child: Image.asset(

                                'assets/p8.bmp',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Intel Microprocessor 8088'),
                            subtitle: Text('This circuit shows how to interface different ICs with\nIntel 8086 or Intel 8088 microprocessor.Intel 8088is 8-..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235,top: 0),
                                  child: const Text('        Miscellaneous\n             2020-03-27',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(

                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>p9(),
                          )
                      );

                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.60,
                            child: Image.asset(

                                'assets/p9.JPG',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Initialize LCD by Manual Signals'),
                            subtitle: Text('Use Proteus 7.10 for simulation .This is very simple\ncircuit for testing the initialization of LCD.Intialization c..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235,top: 0),
                                  child: const Text('        Miscellaneous\n             2020-03-27',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(

                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>p10(),
                          )
                      );

                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.60,
                            child: Image.asset(

                                'assets/p10.JPG',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Simple Single Phase H-Bridge Circuit'),
                            subtitle: Text('The schematic and PCB is made in Altium Designer . Use\nlatest version of this software .This is just..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235,top: 0),
                                  child: const Text('        Miscellaneous\n             2020-03-27',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>p11(),
                          )
                      );

                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.50,
                            child: Image.asset(

                                'assets/p11.JPG',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('DIY Linear Power Supply for Beginners'),
                            subtitle: Text('This is a DIY linear 5V power supply project.You can \nchanges the design at any time as all necessary files are..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235,top: 0),
                                  child: const Text('        Miscellaneous\n             2020-03-27',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>p12(),
                          )
                      );

                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.70,
                            child: Image.asset(

                                'assets/p12.JPG',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Two Channel FDTI FT2232 USB to UART Converter'),
                            subtitle: Text('The schematic and PCB is made in Altium Designer . Use\nlatest version of Altium Designer.All files of this project..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235,top: 0),
                                  child: const Text('        Miscellaneous\n             2020-03-27',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(

                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>p13(),
                          )
                      );

                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.60,
                            child: Image.asset(

                                'assets/p13.JPG',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Keypads 3x3, 3x4 and 4x4'),
                            subtitle: Text('This is DIY circuit to make keypad at home.The circuit\nincludes 3x3 and 4x4 keypad.You can make PCB fr..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235,top: 0),
                                  child: const Text('        Miscellaneous\n             2020-03-25',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  //operational amplifier
                  InkWell(
  onTap: (){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=>op1(),
           )
    );

  },
  child:   Card(



  child: Column(

  mainAxisSize: MainAxisSize.min,

  children: <Widget>[





  Container(

  height:height*0.20,

  width: width*0.80,

  child: Image.asset(



  'assets/op1.gif',

  fit:BoxFit.cover

  ),

  ),

  const ListTile(

  //leading: Icon(Icons.album),

  title: Text('Op-Amp as Inverting Amplifier'),

  subtitle: Text('This is circuit is design and simulated in Proteus 7.10.\nIn this circuit you will learn how operational amplifier (o..',style: TextStyle(fontSize: 12,),),

  ),

  Column(

  mainAxisAlignment: MainAxisAlignment.end,

  children: <Widget>[

  const SizedBox(width: 8),

  TextButton(

  child: Padding(

  padding: const EdgeInsets.only(left: 215),

  child: const Text('   Operational Amplifier\n                    2020-08-03',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),

  ),

  onPressed: () {

  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));

  },

  ),

  /*const SizedBox(width: 0),

                      const SizedBox(width: 0),*/





  ],

  ),

  ],

  ),



  ),
),
InkWell(
  onTap: (){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=>op2(),
        )
    );

  },
  child:   Card(

  child: Column(
  mainAxisSize: MainAxisSize.min,
  children: <Widget>[


  Container(
  height:height*0.20,
  width: width*0.60,
  child: Image.asset(

  'assets/op2.gif',
  fit:BoxFit.cover
  ),
  ),
  const ListTile(
  //leading: Icon(Icons.album),

    title: Text('Op-Amp as Non Inverting Amplifier'),
    subtitle: Text('This is circuit is design and simulated in Proteus 7.10.\nIn this circuit you will learn how operational amplifier (op-a..',style: TextStyle(fontSize: 12,),),
  ),
  Column(
  mainAxisAlignment: MainAxisAlignment.end,
  children: <Widget>[
  const SizedBox(width: 8),
  TextButton(
    child: Padding(
      padding: const EdgeInsets.only(left: 215),
      child: const Text('   Operational Amplifier\n                    2020-08-02',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
    ),
  onPressed: () {
  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
  },
  ),
  /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


  ],
  ),
  ],
  ),

  ),
),
InkWell(
  onTap: (){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=>op3(),
        )
    );

  },
  child:   Card(

  child: Column(
  mainAxisSize: MainAxisSize.min,
  children: <Widget>[


  Container(
  height:height*0.20,
  width: width*0.70,
  child: Image.asset(

  'assets/op3.gif',
  fit:BoxFit.cover
  ),
  ),
  const ListTile(
  //leading: Icon(Icons.album),

    title: Text('Op-Amp as Comparator With Hystresis '),
    subtitle: Text('This is circuit is design and simulated in Proteus 7.10.\nIn this circuit you will learn how operational apmplifier (o..',style: TextStyle(fontSize: 12,),),
  ),
  Column(
  mainAxisAlignment: MainAxisAlignment.end,
  children: <Widget>[
  const SizedBox(width: 8),
  TextButton(
    child: Padding(
      padding: const EdgeInsets.only(left: 215),
      child: const Text('   Operational Amplifier\n                    2020-08-02',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
    ),
  onPressed: () {
  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
  },
  ),
  /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


  ],
  ),
  ],
  ),

  ),
),
  /*Card(

    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[


        Container(
          height:height*0.20,
          width: width*0.70,
          child: Image.asset(

              'assets/op3.gif',
              fit:BoxFit.cover
          ),
        ),
        const ListTile(
//leading: Icon(Icons.album),

          title: Text('Op-Amp as Comparator With Hystresis '),
          subtitle: Text('This is circuit is design and simulated in Proteus 7.10.\nIn this circuit you will learn how operational apmplifier (o..',style: TextStyle(fontSize: 12,),),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            const SizedBox(width: 8),
            TextButton(
              child: Padding(
                padding: const EdgeInsets.only(left: 215),
                child: const Text('   Operational Amplifier\n                    2020-08-02',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
              ),
              onPressed: () {
// Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
              },
            ),
*//*const SizedBox(width: 0),
                    const SizedBox(width: 0),*//*


          ],
        ),
      ],
    ),

  ),*/

  InkWell(
    onTap: (){
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context)=>op5(),
          )
      );

    },
    child: Card(

      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[


          Container(
            height:height*0.20,
            width: width*0.70,
            child: Image.asset(

                'assets/op5.gif',
                fit:BoxFit.cover
            ),
          ),
          const ListTile(
//leading: Icon(Icons.album),

            title: Text('Op-Amp as Comparator'),
            subtitle: Text('This is circuit is design and simulated in Proteus 7.10. In\n this circuit you will learn how to  make comparator..',style: TextStyle(fontSize: 12,),),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              const SizedBox(width: 8),
              TextButton(
                child: Padding(
                  padding: const EdgeInsets.only(left: 215),
                  child: const Text('   Operational Amplifier\n                    2020-04-23',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                ),
                onPressed: () {
// Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                },
              ),
/*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


            ],
          ),
        ],
      ),

    ),
  ),
  //osilator
   InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>os1(),
                            )
                      );
                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.70,
                            child: Image.asset(

                                'assets/os1.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Ring Oscillator or Phase Shift Oscillator'),
                            subtitle: Text('This is circuit is design and simulated in Proteus 7.10.\nYou can make similar circuit in your advance version of..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('               Oscillators\n             2020-05-26',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>os2(),
                          )
                      );
                    },

                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width,
                            child: Image.asset(

                                'assets/os2.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Relaxation Oscillator or Speaker Test'),
                            subtitle: Text('This is circuit is design and simulated in Proteus 7.10.\nIn this circuit you will learn how to make oscillator using..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('               Oscillators\n             2020-05-23',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  //PIC12F6
                  InkWell(
  onTap: (){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=>pic1(),
            )
    );
  },
  child:   Card(
  
  
  
  child: Column(
  
  mainAxisSize: MainAxisSize.min,
  
  children: <Widget>[
  
  
  
  
  
  Container(
  
  height:height*0.20,
  
  width: width*0.70,
  
  child: Image.asset(
  
  
  
  'assets/pic1.gif',
  
  fit:BoxFit.cover
  
  ),
  
  ),
  
  const ListTile(
  
  //leading: Icon(Icons.album),
  
  title: Text('PIC12F675 Timer0 Interupt ADC & LCD'),
  
  subtitle: Text('This is circuit is design and simulated in Proteus 7.10.\nis written in MpLab X IDE using XC8 compiler.The micr..',style: TextStyle(fontSize: 12,),),
  
  ),
  
  Column(
  
  mainAxisAlignment: MainAxisAlignment.end,
  
  children: <Widget>[
  
  const SizedBox(width: 8),
  
  TextButton(
  
  child: Padding(
  
  padding: const EdgeInsets.only(left: 235),
  
  child: const Text('              PIC12F675\n             2020-06-01',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
  
  ),
  
  onPressed: () {
  
  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
  
  },
  
  ),
  
  /*const SizedBox(width: 0),
  
                      const SizedBox(width: 0),*/
  
  
  
  
  
  ],
  
  ),
  
  ],
  
  ),
  
  
  
  ),
),
InkWell(
  onTap: (){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=>pic2(),
        )
    );
  },

  child:   Card(
  
  child: Column(
  mainAxisSize: MainAxisSize.min,
  children: <Widget>[
  
  
  Container(
  height:height*0.20,
  width: width*0.70,
  child: Image.asset(
  
  'assets/pic2.gif',
  fit:BoxFit.cover
  ),
  ),
  const ListTile(
  //leading: Icon(Icons.album),
  
    title: Text('PWM Generator With Duty Cycle Control'),
    subtitle: Text('This is circuit is design and simulated in Proteus 7.10.\nis written in MpLab X IDE using XC8 compiler.The micr..',style: TextStyle(fontSize: 12,),),
  ),
  Column(
  mainAxisAlignment: MainAxisAlignment.end,
  children: <Widget>[
  const SizedBox(width: 8),
  TextButton(
  child: Padding(
  padding: const EdgeInsets.only(left: 235),
  child: const Text('              PIC12F675\n             2020-04-18',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
  ),
  onPressed: () {
  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
  },
  ),
  /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/
  
  
  ],
  ),
  ],
  ),
  
  ),
),

InkWell(
  onTap: (){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=>pic3(),
        )
    );
  },

  child:   Card(

  child: Column(
  mainAxisSize: MainAxisSize.min,
  children: <Widget>[


  Container(
  height:height*0.20,
  width: width*0.70,
  child: Image.asset(

  'assets/pic3.gif',
  fit:BoxFit.cover
  ),
  ),
  const ListTile(
  //leading: Icon(Icons.album),

    title: Text('PIC12F675 PWM using Bit Banging'),
    subtitle: Text('This is circuit is design and simulated in Proteus 7.10.\nis written in MpLab X  compiler used is XC8 .In this..',style: TextStyle(fontSize: 12,),),
  ),
  Column(
  mainAxisAlignment: MainAxisAlignment.end,
  children: <Widget>[
  const SizedBox(width: 8),
  TextButton(
  child: Padding(
  padding: const EdgeInsets.only(left: 235,top: 0),
  child: const Text('              PIC12F675\n             2020-04-18',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
  ),
  onPressed: () {
  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
  },
  ),
  /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


  ],
  ),
  ],
  ),

  ),
),

  InkWell(
    onTap: (){
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context)=>pic4(),
          )
      );
    },

    child: Card(

      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[


          Container(
            height:height*0.20,
            width: width*0.70,
            child: Image.asset(

                'assets/pic4.gif',
                fit:BoxFit.cover
            ),
          ),
          const ListTile(
//leading: Icon(Icons.album),

            title: Text('PIC12F675 Timer0 Code and Simulation'),
            subtitle: Text('This is circuit is simulated in Proteus 7.10. while code \nis written in MPLAB X  IDE using  XC8 compiler .This prog..',style: TextStyle(fontSize: 12,),),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              const SizedBox(width: 8),
              TextButton(
                child: Padding(
                  padding: const EdgeInsets.only(left: 235,top: 0),
                  child: const Text('              PIC12F675\n             2020-04-18',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                ),
                onPressed: () {
// Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                },
              ),
/*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


            ],
          ),
        ],
      ),

    ),
  ),
  //SCRSWic
    InkWell(

                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>src1(),
                          )
                      );
                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width,
                            child: Image.asset(

                                'assets/scr1.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Fan Regulator or Lamp Dimmer'),
                            subtitle: Text('This is circuit is design and simulated in Proteus 7.10.\nThis circuit is made by using DIAC and TRIAC .The worki..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 215),
                                  child: const Text('       SCR TRIAC & DIAC\n                    2020-05-09',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>src2(),
                          )
                      );
                    },

                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.55,
                            child: Image.asset(

                                'assets/scr2.png',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('SCR Test Circuit '),
                            subtitle: Text('This is circuit is design and simulated in Proteus 7.10.\nThis is simple test circuit for understanding working o..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 215),
                                  child: const Text('       SCR TRIAC & DIAC\n                    2020-04-11',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  //switchmodepower supply
                   InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>s1(),
                          )
                      );
                    },

                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.90,
                            child: Image.asset(

                                'assets/s1.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('PIC12F675 Forward Converter'),
                            subtitle: Text('This is circuit is simulated in Proteus 7.10. While code \nis written in MpLab X IDE using complier .The micr..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 170,top: 0),
                                  child: const Text('   Switch Mode Power Supplies\n                                 2020-06-13',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>s2(),
                          )
                      );
                    },

                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width,
                            child: Image.asset(

                                'assets/s2.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('LM2576 SMPS 3A Regulator Schematic+Pcb'),
                            subtitle: Text('Install FDAC app for calculating the values of inductance \nand Capacitance..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 170,top: 0),
                                  child: const Text('   Switch Mode Power Supplies\n                                 2020-05-29',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>s3(),
                          )
                      );
                    },

                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width,
                            child: Image.asset(

                                'assets/s3.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('PIC12F675 Flyback Converter'),
                            subtitle: Text('Install FDAC app for calculating the values of inductance \nand Capacitance..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 170,top: 0),
                                  child: const Text('   Switch Mode Power Supplies\n                                 2020-05-28',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),

                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>s4(),
                          )
                      );
                    },

                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.85,
                            child: Image.asset(

                                'assets/s4.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('PIC12F675 Synchronous Buck Converter'),
                            subtitle: Text('Install FDAC app for calculating the values of inductance\nand Capacitance..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 170,top: 0),
                                  child: const Text('   Switch Mode Power Supplies\n                                 2020-05-21',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>s5(),
                          )
                      );
                    },

                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.90,
                            child: Image.asset(

                                'assets/s5.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('PIC12F675 Zeta Buck Boost Converter'),
                            subtitle: Text('Install FDAC app for calculating the values of inductance\nand Capacitance..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 170,top: 0),
                                  child: const Text('   Switch Mode Power Supplies\n                                 2020-05-20',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>s6(),
                          )
                      );
                    },

                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.80,
                            child: Image.asset(

                                'assets/s6.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('PIC12F675 Inverting Buck Boost Converter'),
                            subtitle: Text('Install FDAC app for calculating the values of inductance\nand Capacitance..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 170,top: 0),
                                  child: const Text('   Switch Mode Power Supplies\n                                 2020-05-19',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>s7(),
                          )
                      );
                    },

                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.90,
                            child: Image.asset(

                                'assets/s7.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('PIC12F675 Buck Boost SEPIC Converter'),
                            subtitle: Text('Install FDAC app for calculating the values of inductance\nand Capacitance..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 170,top: 0),
                                  child: const Text('   Switch Mode Power Supplies\n                                 2020-05-14',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>s8(),
                          )
                      );
                    },

                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.90,
                            child: Image.asset(

                                'assets/s8.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('PIC12F675 Buck Boost or Cuk Converter'),
                            subtitle: Text('Install FDAC app for calculating the values of inductance\nand Capacitance..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 170,top: 0),
                                  child: const Text('   Switch Mode Power Supplies\n                                 2020-05-12',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>s9(),
                          )
                      );
                    },

                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.85,
                            child: Image.asset(

                                'assets/s9.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('PIC12F675 Buck Converter'),
                            subtitle: Text('Install FDAC app for calculating the values of inductance\nand Capacitance..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 170,top: 0),
                                  child: const Text('   Switch Mode Power Supplies\n                                 2020-05-11',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>s10(),
                          )
                      );
                    },

                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.85,
                            child: Image.asset(

                                'assets/s10.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('PIC12F675 Boost Converter'),
                            subtitle: Text('Install FDAC app for calculating the values of inductance\nand Capacitance..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 170,top: 0),
                                  child: const Text('   Switch Mode Power Supplies\n                                 2020-05-10',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>s11(),
                          )
                      );
                    },

                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.85,
                            child: Image.asset(

                                'assets/s11.JPG',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Non-Isolated Boost Regulator'),
                            subtitle: Text('Install FDAC app for calculating the values of inductance\nand Capacitance..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 170,top: 0),
                                  child: const Text('   Switch Mode Power Supplies\n                                 2020-04-08',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  //TRANSISTOR LOGIC 
                   InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>t1(),
                          )
                      );

                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.60,
                            child: Image.asset(

                                'assets/t1.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('SCR Equialent Circuit'),
                            subtitle: Text('This is circuit is design and simulated in Proteus 7.10.\nThis is an equivalent circuit of SCR(thyrisotor or sillicon c..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('     Transistor Logic \n             2020-04-30',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>t2(),
                          )
                      );

                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.90,
                            child: Image.asset(

                                'assets/t2.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Transistor as Switch'),
                            subtitle: Text('This is circuit is design and simulated in Proteus 7.10.\nThis is an basic circuit of a transistor.The working of the..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('     Transistor Logic \n             2020-04-29',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>t3(),
                          )
                      );

                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.50,
                            child: Image.asset(

                                'assets/t3.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Transistor as Inverter'),
                            subtitle: Text('This is circuit is design and simulated in Proteus 7.10.Its.\na very basic circuit for detection and protection of over...',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235,top: 0),
                                  child: const Text('     Transistor Logic \n             2020-04-23',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>t4(),
                          )
                      );

                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width,
                            child: Image.asset(

                                'assets/t4.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Over Voltage Detection and Protection'),
                            subtitle: Text('This is circuit is designed and simulated in Proteus 7.10. Its\na very basic circuit detection and protection of over..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('     Transistor Logic \n             2020-04-21',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>t5(),
                          )
                      );

                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.60,
                            child: Image.asset(

                                'assets/t5.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Open Circuit Detection'),
                            subtitle: Text('This simulation is made in Proteus 7.10. This is very basic \ncircuit of detecting open circuit. The working of this..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('     Transistor Logic \n             2020-04-20',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>t6(),
                          )
                      );

                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.60,
                            child: Image.asset(

                                'assets/t6.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Short Circuit Detection'),
                            subtitle: Text('This simulation is made in Proteus 7.10. This is very \nbasic circuit of detecting short circuit .The working of t..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('     Transistor Logic \n             2020-04-19',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>t7(),
                          )
                      );

                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.80,
                            child: Image.asset(

                                'assets/t7.png',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Bi Stable Oscillator'),
                            subtitle: Text('This is circuit is designed in LTspice,it good tool for ana-\nlog simulation and freely avaliable on linear Technology..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('     Transistor Logic \n             2020-04-10',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>t8(),
                          )
                      );

                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.50,
                            child: Image.asset(

                                'assets/t8.JPG',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Transistor Logic Design'),
                            subtitle: Text('This is circuit is design  in Proteus 8.4. To open the \nproject file of this ciruit use Proteus 8.6. Gerber..',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('     Transistor Logic \n             2020-04-10',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>t9(),
                          )
                      );

                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.70,
                            child: Image.asset(

                                'assets/t9.jpg',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Two Bidirectional Buffer and Level Shift'),
                            subtitle: Text('Circuit is used for bidirectional level shifting and it is very economical.\nUse Proteus 7.10. for simulation.',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('     Transistor Logic \n             2020-04-21',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>t10(),
                          )
                      );

                    },
                    child: Card(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[


                          Container(
                            height:height*0.20,
                            width: width*0.70,
                            child: Image.asset(

                                'assets/t10.gif',
                                fit:BoxFit.cover
                            ),
                          ),
                          const ListTile(
                            //leading: Icon(Icons.album),
                            title: Text('Single Bidirectional Buffer and Level Shift'),
                            subtitle: Text('Circuit is used for level shifting and it is very economical.\nUse Proteus 7.10. for simulation.',style: TextStyle(fontSize: 12,),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              const SizedBox(width: 8),
                              TextButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 235),
                                  child: const Text('     Transistor Logic \n             2020-04-21',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                                },
                              ),
                              /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


                            ],
                          ),
                        ],
                      ),

                    ),
                  ),

                  //titleSection,
                 // titleSection,
                 // titleSection,
                 //titleSection,
                 // titleSection
                ],
              ),

            ),
          ],
        ),
      ),
    );

  }
}