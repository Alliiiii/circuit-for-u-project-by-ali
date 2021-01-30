import 'dart:async';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:save_in_gallery/save_in_gallery.dart';
import 'package:fluttertoast/fluttertoast.dart';



class s10 extends StatefulWidget {
  //MyStatelessWidget({Key key}) : super(key: key);
  @override
  _s10State createState() => _s10State();
}

class _s10State extends State<s10> {final _imageSaver = ImageSaver();
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
  final urls = ["assets/s10.gif"];
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

      height: height*1.950,
      child:Card(
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('PIC12F675 Boost Converter',style:TextStyle(fontSize:19.0,fontWeight:FontWeight.bold,)),

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
                child: Image.asset('assets/s10.gif',fit:BoxFit.cover)),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[

                TextButton(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0,top: 0),
                    child: const Text('                                                                            2020-05-10',style:TextStyle(fontSize:14.0,color:Colors.black54,fontStyle:FontStyle.italic)),
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
              child:Text('This circuit is simulated in Proteus 7.10. While code is written in MpLab X IDE using XC8 compiler. The microcontroller used in this project is PIC12F675. A boost converter is made by generating PWM through microcontroller. The working of this project is given below.\n'
                  '1. To understand the working of this circuit, first see previous circuit "PWM Generator With Duty Cycle Control".\n'
                  '2. In this circuit, a boost converter is made using PIC12F675.\n'
                  '3. The output voltage Vo formula for boost converter is\n'
                  '   Vo = Vin/(1-D)\n'
                  '   where D is duty cycle (0.1 to 0.9).\n'
                  '4. To derive the mosfet Q1 (IRF3205), a npn transistor Q2 (2N3904) is used, because Q1 should operate in saturation or cutt-off region.\n'
                  '5. The input voltage of boost converter is 12V, and output voltage is greater than 12V.\n'
                  '6. The resistor R1 is the load resistor, switching circuit should be operate with some load, otherwise the control is difficult.\n'
                  '7. The output voltage can be controlled by changing the duty cycle or mosfet Q1 through potentiometer RV1.\n'
                  '8. When the duty cycle is 50%, the output voltage will be exactly double of input voltage (use above equation for duty cycle and output voltage relation).\n'
                  '9. The frequency can also be changed by changing RV2.\n'
                  '10. The value of inductor is selected according to switching frequency, and it is inversely proportional.\n'
                  '11. The capacitors C1, C2, C3 and C5 are filter capacitors.\n'
                  '12. The LED D2 is used as indication of output voltages.\n'
                  '13. When the mosfet Q1 is ON, it connects the inductor L1 to ground, and inductor is charged and stores electrical energy in the form of current (i.e (1/2)*L*I^2).\n'
                  '14. When the mosfet Q1 is OFF, the inductor releases its energy, and inductor energy is added in input voltage, so the output voltage is greater than the input voltage.\n'
                  '15. The current direction can be seen using arrows.\n'
                  '16. The diode D1 is used to block the reverse voltages, because output voltage is greater than the input voltage.\n'
                  'Application:\n'
                  '1. This circuit can be used to understand the concept of a boost converter.\n'
                  '2. Thic circuit can be used as variable step-up or boost converter for DC input.\n',style: TextStyle(color: Colors.grey[600]),),
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
                        url: "https://drive.google.com/file/d/1NeDvKcUp5PJA1tJtw-7eWhICG8EEax5R/view?usp=sharing",
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
                  child: Text('DOWNLOAD(.DSN FILE SIZE:99.4 KB)'),
                ),
              ],
            ),


            Row(
              children: <Widget>[
                Text("Hex File", style: TextStyle(fontSize: 14.0,
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
                        url: "https://drive.google.com/file/d/192rvb4j2W1FVfpOd46edYxc9JxM8LYx-/view?usp=sharing",
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
                  child: Text('DOWNLOAD(.HEX FILE SIZE:2.1 KB)'),
                ),
              ],
            ),

            Row(
              children: <Widget>[
                Text("Program Files", style: TextStyle(fontSize: 14.0,
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
                        url: "https://drive.google.com/drive/folders/1i7oHOtMMRkcUApyyk3u7ou68pG9I4ACa?usp=sharing",
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
                  child: Text('VIEW'),
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
                        url: "https://drive.google.com/file/d/17VYy3NlkytSPtZ_LXJhKWAE3ha0JG5r_/view?usp=sharing",
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
                  child: Text('DOWNLOAD ZIP FILE SIZE:574.3 KB)'),
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
                  child: Text('DOWNLOAD(.GIF FILE 580.3 KB)'),
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
