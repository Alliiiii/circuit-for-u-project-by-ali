import 'dart:async';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:save_in_gallery/save_in_gallery.dart';
import 'package:fluttertoast/fluttertoast.dart';


class bc25 extends StatefulWidget {
  //MyStatelessWidget({Key key}) : super(key: key);
  @override
  _bc25State createState() => _bc25State();
}

class _bc25State extends State<bc25> {

  //MyStatelessWidget({Key key}) : super(key: key);
  /// Saves one of asset images to gallery

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery
        .of(context)
        .size
        .height;
    final width = MediaQuery
        .of(context)
        .size
        .width;
    //descrption
    Widget showdescription = Container(

      height: height * 1.170,
      child: Card(
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Low Voltage Hi Input Impedance DC Summing Amplifier',
                style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold,)),

            Container(
              padding: EdgeInsets.only(top: 0, bottom: 0, left: 5.0),
              child: Row(children: [
                Text("Basic Circuits", style: TextStyle(/*fontSize:14.0,*/
                    color: Colors.grey[600], fontStyle: FontStyle.italic)),
              ],
              ),

            ),
            Container(
                height: height * 0.40,
                width: width * 0.95,
                child: Image.asset('assets/bc25.JPG', fit: BoxFit.cover)),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[

                TextButton(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0, top: 0),
                    child: const Text(
                        '                                                                            2020-03-23',
                        style: TextStyle(fontSize: 14.0,
                            color: Colors.black54,
                            fontStyle: FontStyle.italic)),
                  ),
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                  },
                ),
                /*const SizedBox(width: 0),
                      const SizedBox(width: 0),*/


              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 0, bottom: 0, left: 5.0),
              child: Row( //Description
                children: <Widget>[
                  Text('Description', style: TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 5.0),
              child: Text('', style: TextStyle(color: Colors.grey[600]),),
            ),


            //image file end
          ],
        ),
      ),
    );


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //title: 'Flutter layout demo',
      home: Scaffold(


        // Text('Flutter layout demo'),

        body: ListView(
          children: [
            showdescription,
          ],
        ),
      ),
    );
  }

}