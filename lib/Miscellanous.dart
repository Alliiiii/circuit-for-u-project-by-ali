import 'package:flutter/material.dart';
import 'package:pdfwithassets/89c51.dart';
import 'package:flutter/rendering.dart';
import 'package:pdfwithassets/newpage.dart';
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
import 'package:pdfwithassets/page1.dart';
import 'package:pdfwithassets/switchmodepowersupply.dart';
import 'newpage1.dart';
import 'newpage.dart';
import '555 Timer.dart';
import 'Analog Circuit.dart';
import 'Arduino Circuits and project.dart';
import 'Breakout Boards.dart';
import 'Digital Circuit.dart';
import 'Electrical Circuit.dart';
import 'Example Projects.dart';
import 'Linear powersupply.dart';
//import 'Miscellanous.dart';
import 'Operational Apmlifier.dart';
import 'Oscillator.dart';
import 'PIC12F675.dart';
import 'Scr tric and diac.dart';
import 'Transitior Logic.dart';
import 'logicgates.dart';
import 'p8.dart';




class Miscellanous extends StatefulWidget {
  @override
  State createState()=>new MiscellanousState();
}
class MiscellanousState extends State<Miscellanous>{
//drop down list
  final List<String> association=["All","89c51","Transistor Logic","Breakout Boards","Example Projects","Basic Circuit","Miscellaneous","Linear Power Supply","Switch Mode Power Supplies","SCR TRIAC & DIAC","Filter","Analog Circuit","Arduino Circuits & Projects","PIC12F675","Electrical Circuits","Operational Amplifier","Digital Circuits","555 Timer","Oscillators","Logic Gates"];
  String selectAssociation="Miscellaneous";
//drop down list
  @override
  Widget build(BuildContext context){

    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
/*
    //custome widget
    Widget titleSection=Card(

      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[

          Image.asset(
              'assets/81.JPG',
              fit:BoxFit.cover
          ),
          const ListTile(
            //leading: Icon(Icons.album),
            title: Text('Interfacing 20x4 LCD with AT89C51'),
             subtitle: Text('Use Proteus 7.10 for simulation. All necessary files are \n given .Thus program is just for beginners understanding..'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              const SizedBox(width: 8),
              TextButton(
                child: const Text('Details',style:TextStyle(fontSize:16.0,color: Colors.brown)),
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                },
              ),
              const SizedBox(width: 8),
            ],
          ),
        ],
      ),

    );
    //Custom Widget*/

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


        /*
           Text('Search Circuit',style: TextStyle(color: Colors.grey,fontSize: 17)),
//Search icon
           actions:<Widget>[
  IconButton(
            icon: const Icon(Icons.search,color: Colors.grey,),
            //tooltip: 'Next page',
            onPressed: () {
              print("Cclikckedd");},),
   ],
*/
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

                                        else if(value=='All'){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context)=>Welcomepage(),
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
                                        else{
                                          print(value);
                                        }
                                        }   ,  /* {Navigator.push(
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



/*
 //list tile
       Container(
         margin: EdgeInsets.only(top:10.0),
  //color: Colors.greenAccent,

child:
 ListView(
      children: [

        titleSection,
        /*
        titleSection,
        titleSection,
        titleSection,
        titleSection,
        titleSection,
        titleSection,
        titleSection,
        titleSection,
        titleSection,
        titleSection,
        titleSection
        */
    ],
     ),
),
 //listView
 */

                      ],
                    ),
                  ),
                  //

                  /*
         Container(
  margin: EdgeInsets.only(top:10.0),
  child:

 Column(
     children: [


            Card(

              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[

                  Image.asset(
                            'assets/c2.png',
                             fit:BoxFit.cover
                            ),
                  const ListTile(
                    //leading: Icon(Icons.album),
                    title: Text('Title Name of Circuit'),
                    subtitle: Text('Logica and Circuitcal designs. Lyrics by Sidney Stein.'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      const SizedBox(width: 8),
                      TextButton(
                        child: const Text('Details',style:TextStyle(fontSize:16.0,color: Colors.brown)),
                        onPressed: () {
                         // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                        },
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),

),
              ],

 ),

),
*/
/*
//2nd container
 Container(
  margin: EdgeInsets.only(top:10.0),
  child:

 Column(
     children: [


            Card(

              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[

                  Image.asset(
                            'assets/c2.png',
                             fit:BoxFit.cover
                            ),
                  const ListTile(
                    //leading: Icon(Icons.album),
                    title: Text('Title Name of Circuit'),
                    subtitle: Text('Logica and Circuitcal designs. Lyrics by Sidney Stein.'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      const SizedBox(width: 8),
                      TextButton(
                        child: const Text('Details',style:TextStyle(fontSize:16.0,color: Colors.brown)),
                        onPressed: () {
                         // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                        },
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),

),
              ],

 ),

),

//2nd container end
    */
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
                  /*titleSection,
                  titleSection,
                  titleSection,
                  titleSection,
                  titleSection*/
                ],
              ),

            ),
          ],
        ),
      ),
    );

  }
}
