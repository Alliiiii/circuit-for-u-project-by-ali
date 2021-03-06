import 'dart:async';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:save_in_gallery/save_in_gallery.dart';
import 'package:fluttertoast/fluttertoast.dart';


class l4 extends StatefulWidget {
  //MyStatelessWidget({Key key}) : super(key: key);
  @override
  _l4State createState() => _l4State();
}

class _l4State extends State<l4> {final _imageSaver = ImageSaver();
bool _isLoading = false;
bool _showResult = false;
String _resultText = "";
Color _resultColor = Colors.red;

@override
void initState() {
  super.initState();
}

//MyStatelessWidget({Key key}) : super(key: key);
/// Saves one of asset images to gallery
Future<void> saveAssetImage() async {
  _startLoading();
  final urls = ["assets/l4.png"];
  List<Uint8List> bytesList = [];
  for (final url in urls) {
    final bytes = await rootBundle.load(url);
    bytesList.add(bytes.buffer.asUint8List());
  }
  final res = await _imageSaver.saveImages(imageBytes: bytesList);
  _stopLoading();
  _displayResult(res);
  print(res);

  Fluttertoast.showToast(msg: "Downloaded Sucessfully"
      ,toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM);
}


@override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    //descrption
    Widget showdescription=Container(

      height: height*1.130,
      child:Card(
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('LM317 as Constant Current Source',style:TextStyle(fontSize:19.0,fontWeight:FontWeight.bold,)),

            Container(
              padding: EdgeInsets.only(top: 5.0,bottom: 20.0,left: 5.0),
              child:Row(children: [
                Text("Linear Power Supplies",style:TextStyle(/*fontSize:14.0,*/color: Colors.grey[600],fontStyle: FontStyle.italic)),
              ],
              ),

            ),
            Container(
                height:height*0.25,
                width: width*0.95,
                child: Image.asset('assets/l4.png',fit:BoxFit.cover)),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[

                TextButton(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0,top: 0),
                    child: const Text('                                                                            2020-04-16',style:TextStyle(fontSize:14.0,color:Colors.black54,fontStyle:FontStyle.italic)),
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
              padding: EdgeInsets.only(top:0,bottom: 0,left: 5.0),
              child:Row(//Description
                children: <Widget>[
                  Text('Description',style:TextStyle(fontSize:18.0,fontWeight:FontWeight.bold)),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top:10.0,bottom: 10.0,left: 5.0),
              child:Text('This schematic and simulation is also made in Proteus 7.10. So if you want to do more experiment you should have Proteus 7.10 installed in your computer or laptop. In this circuit you will learn how to use LM317 (a variable voltage regulator) as a constant current source.\n'
                  '1. LM317 is a 3 pin device. 1st pin ADJ, 2nd pin Vout and 3rd pin Vin.\n'
                  '2. LM317 can be used as constant current source by connecting a current limit resistor between pin 1 and pin2.\n'
                  '3. Load should be connected at pin 1 with respect to ground.\n'
                  '4. Resistor can be calculated using this equation\n'
                  'R1 = 1.25/Iout\n'
                  '5. You see in picture that current remains same irrespective of number of LEDs.\n'
                  'Download these files to perform more experiments. See the datasheet of LM317 for more understanding.\n',style: TextStyle(color: Colors.grey[600]),),
            ),
/*
            Row(
              children: <Widget>[
                Text("Datasheet Link",style:TextStyle(fontSize:14.0,color: Colors.black,fontWeight:FontWeight.bold)),
              ],

            ),
            Row(
              children: <Widget>[
                Text("NOTE avaliable in assets",style:TextStyle(fontSize:11.0,color: Colors.lightBlueAccent,fontWeight:FontWeight.bold,fontStyle: FontStyle.italic,)),
              ],

            ),
*/





            Row(
              children: <Widget>[
                Text("Schematic File", style: TextStyle(fontSize: 14.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
              ],

            ),
            Row(
              children: <Widget>[
                RaisedButton(
                  elevation: 10.0,
                  onPressed: () async {
                    final status = await Permission.storage.request();
                    if (status.isGranted) {
                      final externalDir = await getExternalStorageDirectory();
                      await FlutterDownloader.enqueue(
                        url: "https://drive.google.com/file/d/1gaNcswII8SsmyfmpBHJZ_UEag1F-bowX/view?usp=sharing",
                        savedDir: externalDir.path,
                        fileName: "download",
                        showNotification: true,
                        openFileFromNotification: true,
                      );
                      Fluttertoast.showToast(msg: "Downloaded Sucessfully"
                          ,toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM);
                    } else {
                      print("Permission Denied");
                    }
                  },
                  textColor: Colors.white,
                  splashColor: Colors.green[300],
                  color: Colors.orange,
                  padding: const EdgeInsets.all(8.0),
                  child: Text('DOWNLOAD(.DSN FILE SIZE:89.5 KB)'),
                ),
              ],
            ),



            Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Source Files", style: TextStyle(fontSize: 14.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
              ],

            ),
            Row(
              children: <Widget>[
                RaisedButton(
                  elevation: 10.0,
                  onPressed: () async {
                    final status = await Permission.storage.request();
                    if (status.isGranted) {
                      final externalDir = await getExternalStorageDirectory();
                      await FlutterDownloader.enqueue(
                        url: "https://drive.google.com/file/d/10j6bW_KKYFCbFJTrJFAAU7dlwv_gCm4a/view?usp=sharing",
                        savedDir: externalDir.path,
                        fileName: "download",
                        showNotification: true,
                        openFileFromNotification: true,
                      );
                      Fluttertoast.showToast(msg: "Downloaded Sucessfully"
                          ,toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM);
                    } else {
                      print("Permission Denied");
                    }
                  },
                  textColor: Colors.white,
                  splashColor: Colors.green[300],
                  color: Colors.orange,
                  padding: const EdgeInsets.all(8.0),
                  child: Text('DOWNLOAD RAR FILE SIZE:51.6 KB)'),
                ),
              ],
            ),
            //source file code end
            //pic downloade link
            Row(
              children: <Widget>[
                Text("image File", style: TextStyle(fontSize: 14.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
              ],

            ),
            Row(
              children: <Widget>[
                RaisedButton(
                  elevation: 10.0,
                  onPressed: () => saveAssetImage(),
                  textColor: Colors.white,
                  splashColor: Colors.green[300],
                  color: Colors.orange,
                  padding: const EdgeInsets.all(8.0),
                  child: Text('DOWNLOAD(.PNG FILE 56.9 KB)'),
                ),
              ],
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

Widget get _progressIndictaor {
  return _isLoading
      ? Container(
    child: Center(child: CircularProgressIndicator()),
    color: Color.fromRGBO(0, 0, 0, 0.3),
  )
      : Container();
}

void _startLoading() {
  setState(() {
    _isLoading = true;
  });
}

void _stopLoading() {
  setState(() {
    _isLoading = false;
  });
}

void _displayResult(bool success) {
  _showResult = true;
  if (success) {
    _displaySuccessMessage();
  } else {
    _displayErrorMessage();
  }
  Timer(Duration(seconds: 2), () {
    _hideResult();
  });
}

void _displaySuccessMessage() {
  setState(() {
    _resultText = "Images saved successfullty";
    _resultColor = Colors.green;
  });
}

void _displayErrorMessage() {
  setState(() {
    _resultText = "An error occurred while saving images";
    _resultColor = Colors.red;
  });
}

void _hideResult() {
  setState(() {
    _showResult = false;
  });
}
}
