import 'dart:async';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:save_in_gallery/save_in_gallery.dart';
import 'package:fluttertoast/fluttertoast.dart';



class s2 extends StatefulWidget {
  //MyStatelessWidget({Key key}) : super(key: key);
  @override
  _s2State createState() => _s2State();
}

class _s2State extends State<s2> {final _imageSaver = ImageSaver();
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
  final urls = ["assets/s2.gif"];
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

      height: height*1.590,
      child:Card(
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('LM2576 SMPS 3A Regulator Schematic+Pcb',style:TextStyle(fontSize:19.0,fontWeight:FontWeight.bold,)),

            Container(
              padding: EdgeInsets.only(top: 5.0,bottom: 20.0,left: 5.0),
              child:Row(children: [
                Text("Switch Mode Power Supplies",style:TextStyle(/*fontSize:14.0,*/color: Colors.grey[600],fontStyle: FontStyle.italic)),
              ],
              ),

            ),
            Container(
                height:height*0.25,
                width: width*0.95,
                child: Image.asset('assets/s2.gif',fit:BoxFit.cover)),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[

                TextButton(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0,top: 0),
                    child: const Text('                                                                            2020-05-29',style:TextStyle(fontSize:14.0,color:Colors.black54,fontStyle:FontStyle.italic)),
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
              child:Text('This circuit is designed in Altium 17. It is recommended always use the latest available version of software.\n'
                  '1. This is a circuit of step down buck converter using LM2576.\n'
                  '2. LM2576 comes as adjustable regulator and also comes as fixed regulator of 5V and 12V.\n'
                  '3. Pcb of this circuit is also made and pdfs are also generated.\n'
                  '4. This circuit can be used for both models fixed and adjustable voltage regulator.\n'
                  '5. The maximum output current of this regulator is 3A.\n'
                  '6. The software files are also given, if you want to modify pcb or schematic, you can do it.\n'
                  '7. In this circuit smd package of LM2576 is used, if you have through hole package then you can bend and cut the legs of LM2576 to make it look like smd package.\n'
                  'Applications:\n'
                  '1. This circuit can be used as buck converter.\n'
                  '2. This circuit can also be used as variable buck converter, if R2 is replaced with variable resistor.\n'
                  'New circuits are added on daily basis. So come back daily to get new amazing and exciting circuits.\n',style: TextStyle(color: Colors.grey[600]),),
            ),
/*
            Row(
              children: <Widget>[
                Text("Datasheet Link",style:TextStyle(fontSize:14.0,color: Colors.black,fontWeight:FontWeight.bold)),
              ],

            ),
            Row(
              children: <Widget>[
                Text("Schematic File",style:TextStyle(fontSize:11.0,color: Colors.lightBlueAccent,fontWeight:FontWeight.bold,fontStyle: FontStyle.italic,)),
              ],

            ),*/




            //Downloade files





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
                        url: "https://drive.google.com/file/d/1J5N6CHLzJxOOzY1LgLsyuqT-ab0ea3I3/view?usp=sharing",
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
                  child: Text('DOWNLOAD(.SCHDOC FILE SIZE:177 KB)'),
                ),
              ],
            ),


            Row(
              children: <Widget>[
                Text("Pcb File", style: TextStyle(fontSize: 14.0,
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
                        url: "https://drive.google.com/file/d/1KnJsAQ9QOl54FgO7bt5hrfLV_aP6bkJC/view?usp=sharing",
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
                  child: Text('DOWNLOAD(.PCBDOC FILE SIZE:1.1 MB)'),
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
                        url: "https://drive.google.com/file/d/1rztN2VWWCXUHwfhOfn2vbqnIU063zuDP/view?usp=sharing",
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
                  child: Text('DOWNLOAD ZIP FILE SIZE:16.2 MB)'),
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
                  child: Text('DOWNLOAD(.GIF FILE 29.1 KB)'),
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
