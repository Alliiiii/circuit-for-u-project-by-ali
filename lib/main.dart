import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:pdfwithassets/page1.dart';
//import 'package:flutter_secure_content/flutter_secure_content.dart';
import 'SplashScreen.dart';
void main()  async{
     WidgetsFlutterBinding.ensureInitialized();
await FlutterDownloader.initialize(
  debug: true // optional: set false to disable printing logs to console
);
  

  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context){

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: ThemeData(
        primaryColor: Colors.orange,
      ),
    );
  }
}

//Welcome page class

//
/*
void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatefulWidget {
 @override
 _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
 //bool isSearching = false;
@override
 Widget build(BuildContext context) {
    //final width = MediaQuery.of(context).size.width;
      //final height = MediaQuery.of(context).size.height;
       return Scaffold(
          appBar:AppBar(

           centerTitle: true,
           title: Text('Search'),
          ),
           /*
            backgroundColor: Colors.green,
                     title: !isSearching ?Text("Circuit",textAlign: TextAlign.center, style:

                     TextStyle(fontSize: 24, color: Colors.white),):
             Container(
 //color: Colors.white,
 width: width,
 margin: EdgeInsets.only(top:height*0.01,bottom:height*0.01),
 //width: width*0.90,
 child:
 TextField(
 style: TextStyle(
   //backgroundColor: Colors.white,
 fontSize: 22.0,
 //height: 2.0,
 color: Colors.black
 ),
 decoration:InputDecoration(

 icon: Icon(Icons.search,color: Colors.white,),
 hintText: 'Search Circuits ',
 hintStyle: TextStyle(
 //backgroundColor: Colors.white,
 color: Colors.white, // <-- Change this
 fontSize: 24,
 fontWeight: FontWeight.w400,
 fontStyle: FontStyle.normal,),
 /*
 border: new OutlineInputBorder(
 borderRadius: const BorderRadius.all(
 const Radius.circular(5.0),
 ),
 ),*/
 ),

 ),
 ),
 elevation: 10.0,
 /*
 actions:<Widget>[
 isSearching ?
 IconButton(
 icon:Icon(Icons.cancel),
 onPressed:(){
 setState(() {
 //this.isSearching= !this.isSearching;
this.isSearching= false;
 });
 },
 ): IconButton(
 icon:Icon(Icons.search),
 onPressed:(){
 setState(() {
 //this.isSearching= !this.isSearching;
 this.isSearching= true;
                      });
 },
),
],*/
//title: Text('Search'),
),*/
body: Center(
 child: Text('default content')
 ),
 */



/*
import 'package:flutter/material.dart';

import 'MyPdfFile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,



      home: MyPdf(),
    );
  }
}



*/
