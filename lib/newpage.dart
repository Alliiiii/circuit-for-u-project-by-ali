import 'package:flutter/material.dart';
import 'op1.dart';
import 'op5.dart';
import 'package:pdfwithassets/89c51.dart';
import 'package:flutter/rendering.dart';
//import 'package:pdfwithassets/newpage.dart';
import 'package:pdfwithassets/page1.dart';
import 'package:pdfwithassets/switchmodepowersupply.dart';
import 'logicgates.dart';
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
import 'bc1.dart';
import 'bc2.dart';
import 'bc3.dart';
import 'bc4.dart';
import 'bc5.dart';
import 'bc6.dart';
import 'bc7.dart';
import 'bc8.dart';
import 'bc9.dart';
import 'bc10.dart';
import 'bc11.dart';
import 'bc12.dart';
import 'bc13.dart';
import 'bc14.dart';
import 'bc15.dart';
import 'bc16.dart';
import 'bc17.dart';
import 'bc18.dart';
import 'bc19.dart';
import 'bc20.dart';
import 'bc25.dart';
import 'bc22.dart';
import 'bc23.dart';
import 'bc24.dart';
import 'bc26.dart';
import 'newpage1.dart';
import 'newpage.dart';
class NewPage extends StatefulWidget {
  @override
  _NewPageState createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  final List<String> association=["All","89c51","Transistor Logic","Breakout Boards","Example Projects","Basic Circuit","Miscellaneous","Linear Power Supply","Switch Mode Power Supplies","SCR TRIAC & DIAC","Filter","Analog Circuit","Arduino Circuits & Projects","PIC12F675","Electrical Circuits","Operational Amplifier","Digital Circuits","555 Timer","Oscillators","Logic Gates"];
String selectAssociation="Basic Circuit";
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
final width=MediaQuery.of(context).size.width;
    //final String toda=ModalRoute.of(context).settings.arguments;
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

else if(value=='All'){
  Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=>Welcomepage(),
          settings: RouteSettings(arguments: value,))
  );

}
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
else{
  print(value);
}
}      ,/* {Navigator.push(
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
        MaterialPageRoute(builder: (context)=>bc1(),
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



  'assets/bc1.png',

  fit:BoxFit.fill

  ),

  ),

  const ListTile(

  //leading: Icon(Icons.album),

  title: Text('Differential Integrator With Frequency Controlled Gain'),

  subtitle: Text('The frequency i/p is provided by digital input Va and\nVb. The charging capacitor Cs is differen tly charged...',style: TextStyle(fontSize: 12,),),

  ),

  Column(

  mainAxisAlignment: MainAxisAlignment.end,

  children: <Widget>[

  const SizedBox(width: 8),

  TextButton(

  child: Padding(

  padding: const EdgeInsets.only(left: 235),

  child: const Text('       Basic Circuits\n          2020-04-10',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),

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
  InkWell(
    onTap: (){
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context)=>bc2(),
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



                'assets/bc2.png',

                fit:BoxFit.fill

            ),

          ),

          const ListTile(

            //leading: Icon(Icons.album),

            title: Text('Simple Charge Integrator'),

            subtitle: Text('The input Vin produced integration current,which flows\nthrough 1 Mohm resistor and this current is directly prop...',style: TextStyle(fontSize: 12,),),

          ),

          Column(

            mainAxisAlignment: MainAxisAlignment.end,

            children: <Widget>[

              const SizedBox(width: 8),

              TextButton(

                child: Padding(

                  padding: const EdgeInsets.only(left: 235),

                  child: const Text('       Basic Circuits\n          2020-04-09',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),

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
          MaterialPageRoute(builder: (context)=>bc3(),
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
                'assets/bc3.png',
                fit:BoxFit.fill
            ),
          ),
          const ListTile(
            title: Text('Charge Integrator'),
            subtitle: Text('This is a basic integrator circuit. The integration current\nl1 is produced by input Vin is directly proportional t...',style: TextStyle(fontSize: 12,),),
          ),

          Column(

            mainAxisAlignment: MainAxisAlignment.end,

            children: <Widget>[

              const SizedBox(width: 8),

              TextButton(

                child: Padding(

                  padding: const EdgeInsets.only(left: 235),

                  child: const Text('       Basic Circuits\n          2020-04-08',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),

                ),

                onPressed: () {

                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                },
              ),
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
          MaterialPageRoute(builder: (context)=>bc4(),
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
                'assets/bc4.JPG',
                fit:BoxFit.fill
            ),
          ),
          const ListTile(
            title: Text('0V2 N-Channel Transmission Gate'),
            subtitle: Text('An EPAD MOSEFET act as an analog transmission gate\n(analog switch) when it is turned on with an appropriate',style: TextStyle(fontSize: 12,),),
          ),

          Column(

            mainAxisAlignment: MainAxisAlignment.end,

            children: <Widget>[

              const SizedBox(width: 8),

              TextButton(

                child: Padding(

                  padding: const EdgeInsets.only(left: 235),

                  child: const Text('       Basic Circuits\n          2020-03-25',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),

                ),

                onPressed: () {

                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                },
              ),
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
          MaterialPageRoute(builder: (context)=>bc5(),
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
                'assets/bc5.JPG',
                fit:BoxFit.fill
            ),
          ),
          const ListTile(
            title: Text('0V2 Nanopower 2-Input NOR and NAND Gates'),
            subtitle: Text('Simply logic gates suc as NOR and NAND gates can be\nready implemented using EPAD MOSFETs to operate a',style: TextStyle(fontSize: 12,),),
          ),

          Column(

            mainAxisAlignment: MainAxisAlignment.end,

            children: <Widget>[

              const SizedBox(width: 8),

              TextButton(

                child: Padding(

                  padding: const EdgeInsets.only(left: 235),

                  child: const Text('       Basic Circuits\n          2020-03-25',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),

                ),

                onPressed: () {

                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                },
              ),
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
          MaterialPageRoute(builder: (context)=>bc6(),
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
                'assets/bc6.JPG',
                fit:BoxFit.fill
            ),
          ),
          const ListTile(
            title: Text('0V2 Supply Voltage Nanopower Inverter'),
            subtitle: Text('Basic voltage level translator utilzes a voltage compara-\ntor to translate an i/p voltage range into an o/p voltage r...',style: TextStyle(fontSize: 12,),),
          ),

          Column(

            mainAxisAlignment: MainAxisAlignment.end,

            children: <Widget>[

              const SizedBox(width: 8),

              TextButton(

                child: Padding(

                  padding: const EdgeInsets.only(left: 235),

                  child: const Text('       Basic Circuits\n          2020-03-25',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),

                ),

                onPressed: () {

                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                },
              ),
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
          MaterialPageRoute(builder: (context)=>bc7(),
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
                'assets/bc7.JPG',
                fit:BoxFit.fill
            ),
          ),
          const ListTile(
            title: Text('Voltage Level Translator with Open Drain Comparator'),
            subtitle: Text('Basic voltage level translator utilzes a voltage compara-\ntor to translate an i/p voltage range into an o/p voltage r...',style: TextStyle(fontSize: 12,),),
            ),

          Column(

            mainAxisAlignment: MainAxisAlignment.end,

            children: <Widget>[

              const SizedBox(width: 8),

              TextButton(

                child: Padding(

                  padding: const EdgeInsets.only(left: 235),

                  child: const Text('       Basic Circuits\n          2020-03-25',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),

                ),

                onPressed: () {

                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                },
              ),
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
          MaterialPageRoute(builder: (context)=>bc10(),
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
                'assets/bc10.JPG',
                fit:BoxFit.fill
            ),
          ),
          const ListTile(
            title: Text('Micropower Buffered Variable Voltage Source'),
            subtitle: Text('This circuit is a micropower buffered variable rail to rail\nvoltage source. Vout can be from within a few mV to a f...',style: TextStyle(fontSize: 12,),),
          ),

          Column(

            mainAxisAlignment: MainAxisAlignment.end,

            children: <Widget>[

              const SizedBox(width: 8),

              TextButton(

                child: Padding(

                  padding: const EdgeInsets.only(left: 235),

                  child: const Text('       Basic Circuits\n          2020-03-24',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),

                ),

                onPressed: () {

                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                },
              ),
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
          MaterialPageRoute(builder: (context)=>bc11(),
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
                'assets/bc11.JPG',
                fit:BoxFit.fill
            ),
          ),
          const ListTile(
            title: Text('Micro-power Rail-to-Rail Adjustable Voltage Source'),
            subtitle: Text('This circuit is a variation to the basic connection of a\nunity gain buffer amplifier.The unity gain amp is used pr...',style: TextStyle(fontSize: 12,),),
          ),

          Column(

            mainAxisAlignment: MainAxisAlignment.end,

            children: <Widget>[

              const SizedBox(width: 8),

              TextButton(

                child: Padding(

                  padding: const EdgeInsets.only(left: 235),

                  child: const Text('       Basic Circuits\n          2020-03-24',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),

                ),

                onPressed: () {

                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                },
              ),
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
          MaterialPageRoute(builder: (context)=>bc12(),
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
                'assets/bc12.JPG',
                fit:BoxFit.fill
            ),
          ),
          const ListTile(
            title: Text('Rail-to-Rail Voltage Follower'),
            subtitle: Text('The unity gain is amp is used primarily to isolate the input\nfrom the output. The key characteristics of this circuit a...',style: TextStyle(fontSize: 12,),),
          ),

          Column(

            mainAxisAlignment: MainAxisAlignment.end,

            children: <Widget>[

              const SizedBox(width: 8),

              TextButton(

                child: Padding(

                  padding: const EdgeInsets.only(left: 235),

                  child: const Text('       Basic Circuits\n          2020-03-24',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),

                ),

                onPressed: () {

                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                },
              ),
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
          MaterialPageRoute(builder: (context)=>bc13(),
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
                'assets/bc13.JPG',
                fit:BoxFit.fill
            ),
          ),
          const ListTile(
            title: Text('Low Pass Filter'),
            subtitle: Text('The i/p of the low pas filter has an i/p resistor of 10 Kohm\nand i/p cutoff frequency depending on the product of R...',style: TextStyle(fontSize: 12,),),
          ),

          Column(

            mainAxisAlignment: MainAxisAlignment.end,

            children: <Widget>[

              const SizedBox(width: 8),

              TextButton(

                child: Padding(

                  padding: const EdgeInsets.only(left: 235),

                  child: const Text('       Basic Circuits\n          2020-03-24',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),

                ),

                onPressed: () {

                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                },
              ),
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
          MaterialPageRoute(builder: (context)=>bc14(),
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
                'assets/bc14.JPG',
                fit:BoxFit.fill
            ),
          ),
          const ListTile(
            title: Text('Function Generator'),
            subtitle: Text('This circuit utilizes a quad op-amp to producccce 4\noutputs of the 4 stages,consisting of a square wave o/..',style: TextStyle(fontSize: 12,),),
          ),

          Column(

            mainAxisAlignment: MainAxisAlignment.end,

            children: <Widget>[

              const SizedBox(width: 8),

              TextButton(

                child: Padding(

                  padding: const EdgeInsets.only(left: 235),

                  child: const Text('       Basic Circuits\n          2020-03-24',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),

                ),

                onPressed: () {

                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                },
              ),
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
          MaterialPageRoute(builder: (context)=>bc15(),
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
                'assets/bc15.JPG',
                fit:BoxFit.fill
            ),
          ),
          const ListTile(
            title: Text('Band-pass Filter Network'),
            subtitle: Text('In this circuit,,op-amp with relatively high slew rate per\nunit power consmption configured as a band-pass filte..',style: TextStyle(fontSize: 12,),),
          ),

          Column(

            mainAxisAlignment: MainAxisAlignment.end,

            children: <Widget>[

              const SizedBox(width: 8),

              TextButton(

                child: Padding(

                  padding: const EdgeInsets.only(left: 235),

                  child: const Text('       Basic Circuits\n          2020-03-24',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),

                ),

                onPressed: () {

                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                },
              ),
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
          MaterialPageRoute(builder: (context)=>bc16(),
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
                'assets/bc16.JPG',
                fit:BoxFit.fill
            ),
          ),
          const ListTile(
            title: Text('Micro-power Band-pass Filter'),
            subtitle: Text('In this circuit,,op-amp with relatively high slew rate per\nunit power consmption configured as a band-pass filte..',style: TextStyle(fontSize: 12,),),
          ),

          Column(

            mainAxisAlignment: MainAxisAlignment.end,

            children: <Widget>[

              const SizedBox(width: 8),

              TextButton(

                child: Padding(

                  padding: const EdgeInsets.only(left: 235),

                  child: const Text('       Basic Circuits\n          2020-03-24',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),

                ),

                onPressed: () {

                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                },
              ),
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
          MaterialPageRoute(builder: (context)=>bc17(),
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
                'assets/bc17.JPG',
                fit:BoxFit.fill
            ),
          ),
          const ListTile(
            title: Text('High Precision Current to Voltage Converter'),
            subtitle: Text('Net current generated by the photodiode (I) is forced \nthrough feedback resistor(RF), assuming zero leakage..',style: TextStyle(fontSize: 12,),),
          ),

          Column(

            mainAxisAlignment: MainAxisAlignment.end,

            children: <Widget>[

              const SizedBox(width: 8),

              TextButton(

                child: Padding(

                  padding: const EdgeInsets.only(left: 235),

                  child: const Text('       Basic Circuits\n          2020-03-24',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),

                ),

                onPressed: () {

                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                },
              ),
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
          MaterialPageRoute(builder: (context)=>bc18(),
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
                'assets/bc18.JPG',
                fit:BoxFit.fill
            ),
          ),
          const ListTile(
            title: Text('Current to Voltage Converter'),
            subtitle: Text('The current to voltage converter rely on the very high i/\np impedeance of the op-amp. The i/p current (I) is forced...',style: TextStyle(fontSize: 12,),),
          ),

          Column(

            mainAxisAlignment: MainAxisAlignment.end,

            children: <Widget>[

              const SizedBox(width: 8),

              TextButton(

                child: Padding(

                  padding: const EdgeInsets.only(left: 235),

                  child: const Text('       Basic Circuits\n          2020-03-24',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),

                ),

                onPressed: () {

                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                },
              ),
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
          MaterialPageRoute(builder: (context)=>bc20(),
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
                'assets/bc20.JPG',
                fit:BoxFit.fill
            ),
          ),
          const ListTile(
            title: Text('+- 2V5 Current to Voltage Converter'),
            subtitle: Text('The current to voltage converter rely on the very high i/\np impedeance of the op-amp. The i/p current (I) is forced...',style: TextStyle(fontSize: 12,),),
          ),

          Column(

            mainAxisAlignment: MainAxisAlignment.end,

            children: <Widget>[

              const SizedBox(width: 8),

              TextButton(

                child: Padding(

                  padding: const EdgeInsets.only(left: 235),

                  child: const Text('       Basic Circuits\n          2020-03-24',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),

                ),

                onPressed: () {

                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                },
              ),
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
          MaterialPageRoute(builder: (context)=>bc22(),
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
                'assets/bc22.JPG',
                fit:BoxFit.fill
            ),
          ),
          const ListTile(
            title: Text('Low Offset Summing Amplifier'),
            subtitle: Text('The i/p leakage currents of the op-amp are not a\nfactor since the i/p resistor values are 10Kohm. The i/p...',style: TextStyle(fontSize: 12,),),
          ),

          Column(

            mainAxisAlignment: MainAxisAlignment.end,

            children: <Widget>[

              const SizedBox(width: 8),

              TextButton(

                child: Padding(

                  padding: const EdgeInsets.only(left: 235),

                  child: const Text('       Basic Circuits\n          2020-03-24',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),

                ),

                onPressed: () {

                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                },
              ),
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
          MaterialPageRoute(builder: (context)=>bc23(),
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
                'assets/bc23.JPG',
                fit:BoxFit.fill
            ),
          ),
          const ListTile(
            title: Text('Low Voltage Instrumentation Amplifier'),
            subtitle: Text('This circuit is designed to amplify low level\ndifference-mode signal over a common mode voltage...',style: TextStyle(fontSize: 12,),),
          ),

          Column(

            mainAxisAlignment: MainAxisAlignment.end,

            children: <Widget>[

              const SizedBox(width: 8),

              TextButton(

                child: Padding(

                  padding: const EdgeInsets.only(left: 235),

                  child: const Text('       Basic Circuits\n          2020-03-24',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),

                ),

                onPressed: () {

                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                },
              ),
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
          MaterialPageRoute(builder: (context)=>bc7(),
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
                'assets/bc24.jpg',
                fit:BoxFit.fill
            ),
          ),
          const ListTile(
            title: Text('Discrete Differential Amplifier'),
            subtitle: Text('With this type of different circuit, it is possible to set\neach individual circuit parameters seperately to produc...',style: TextStyle(fontSize: 12,),),
          ),

          Column(

            mainAxisAlignment: MainAxisAlignment.end,

            children: <Widget>[

              const SizedBox(width: 8),

              TextButton(

                child: Padding(

                  padding: const EdgeInsets.only(left: 235),

                  child: const Text('       Basic Circuits\n          2020-03-24',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),

                ),

                onPressed: () {

                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                },
              ),
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
          MaterialPageRoute(builder: (context)=>bc25(),
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
                'assets/bc25.JPG',
                fit:BoxFit.fill
            ),
          ),
          const ListTile(
            title: Text('Low Voltage Hi Input Impedance DC Summing Amplifier'),
            subtitle: Text('This circuit presents a simple low voltage precision\nDC summing amplifier that has input impedance of ..',style: TextStyle(fontSize: 12,),),
          ),

          Column(

            mainAxisAlignment: MainAxisAlignment.end,

            children: <Widget>[

              const SizedBox(width: 8),

              TextButton(

                child: Padding(

                  padding: const EdgeInsets.only(left: 235),

                  child: const Text('       Basic Circuits\n          2020-03-23',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),

                ),

                onPressed: () {

                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                },
              ),
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
          MaterialPageRoute(builder: (context)=>bc26(),
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
                'assets/bc26.JPG',
                fit:BoxFit.fill
            ),
          ),
          const ListTile(
            title: Text('Hi Input Impedance DC Summing Amplifier'),
            subtitle: Text('This circuit presents a simple DC summing amplifier\nthat has igh input impedance of 10Mohm.The obvious..',style: TextStyle(fontSize: 12,),),
          ),

          Column(

            mainAxisAlignment: MainAxisAlignment.end,

            children: <Widget>[

              const SizedBox(width: 8),

              TextButton(

                child: Padding(

                  padding: const EdgeInsets.only(left: 235),

                  child: const Text('       Basic Circuits\n          2020-03-23',style:TextStyle(fontSize:12.0,color: Colors.black26,fontStyle:FontStyle.italic)),

                ),

                onPressed: () {

                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                },
              ),
            ],

          ),

        ],

      ),

    ),
  ),

],
),

),
],
),
),
);

    /*
    Scaffold(
      appBar: AppBar(title: Text("My Data"),
      backgroundColor: Colors.green,)
      ,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Text(
          toda
        ),
      ),
    );
*/

  }
}
