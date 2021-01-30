import 'package:flutter/material.dart';
import 'package:pdfwithassets/89c51.dart';
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
//import 'package:flutter/rendering.dart';
import 'package:pdfwithassets/newpage.dart';
import 'package:pdfwithassets/page1.dart';
import 'package:pdfwithassets/switchmodepowersupply.dart';
import 'newpage1.dart';
import 'newpage.dart';
import '555 Timer.dart';
//import 'Analog Circuit.dart';
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
import 'a14.dart';
import 'a4.dart';
import 'a5.dart';
import 'logicgates.dart';




class AnalogCircuit extends StatefulWidget {
  @override
  State createState()=>new AnalogCircuitState();
}
class AnalogCircuitState extends State<AnalogCircuit>{
//drop down list
  final List<String> association=["All","89c51","Transistor Logic","Breakout Boards","Example Projects","Basic Circuit","Miscellaneous","Linear Power Supply","Switch Mode Power Supplies","SCR TRIAC & DIAC","Filter","Analog Circuit","Arduino Circuits & Projects","PIC12F675","Electrical Circuits","Operational Amplifier","Digital Circuits","555 Timer","Oscillators","Logic Gates"];
  String selectAssociation="Analog Circuit";
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
