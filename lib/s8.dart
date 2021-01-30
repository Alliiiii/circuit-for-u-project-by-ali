import 'dart:async';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:save_in_gallery/save_in_gallery.dart';
import 'package:fluttertoast/fluttertoast.dart';



class s8 extends StatefulWidget {
  //MyStatelessWidget({Key key}) : super(key: key);
  @override
  _s8State createState() => _s8State();
}

class _s8State extends State<s8> {final _imageSaver = ImageSaver();
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
  final urls = ["assets/s8.gif"];
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

      height: height*2.990,
      child:Card(
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('PIC12F675 Buck Boost or Cuk Converter',style:TextStyle(fontSize:19.0,fontWeight:FontWeight.bold,)),

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
                child: Image.asset('assets/s8.gif',fit:BoxFit.cover)),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[

                TextButton(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0,top: 0),
                    child: const Text('                                                                            2020-05-21',style:TextStyle(fontSize:14.0,color:Colors.black54,fontStyle:FontStyle.italic)),
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
              child:Text('This circuit is simulated in Proteus 7.10. While code is written in MpLab X IDE using XC8 compiler. The microcontroller used in this project is PIC12F675. A Buck-Boost (or Cuk) converter is made by generating PWM through microcontroller. The working of this project is given below.\n'
                  '1. To understand the working of this circuit, first see previous circuits "PWM Generator With Duty Cycle Control", "PIC12F675 Buck Converter" and also "PIC12F Boost Converter".\n'
                  '2. In this circuit, a buck-boost converter is made using PIC12F675.\n'
                  '3. The output voltage Vo formula for buck-boost converter is\n'
                  '   Vo = D*Vin/(1-D)\n'
                  '   where D is duty cycle (0.1 to 0.9).\n'
                  '4. To derive the mosfet Q1 (IRF3205), a npn transistor Q2 (2N3904) is used, because Q1 should operate in saturation or cutt-off region.\n'
                  '5. The mosfet Q1 needs 12V for saturation therefore, a npn transistor Q2 is used to shift level from 5V to 12V (but in inverting mode i.e., not gate).\n'
                  '6. The input voltage for this buck-boost converter is 12V, and output voltage can be step down or can be step up (i.e, can be less than 12V or can be greater than 12V) depending on PWM duty cycle.\n'
              '7. The resistor R1 is the load resistor, switching circuit should be operate with some load, otherwise the control is difficult.\n'
                  '8. The output voltage can be controlled by changing the duty cycle or mosfet Q1 through potentiometer RV1.\n'
                  '9. When the duty cycle of mosfet Q1 less than 50%, the circuit is in step down (buck converter) mode and output voltage will be less than input voltage (use above equation for duty cycle and output voltage relation).\n'
                  '10. When the duty cycle of mosfet Q1 greater than 50%, the circuit is in step up (boosr converter) mode and output voltage will be greater than input voltage (use above equation for duty cycle and output voltage relation).\n'
                  '11. The frequency can also be changed by changing RV2, I choose very low switching frequency (alsmost 250Hz) for simulation in Proteus, increase the switching frequency to reduce the value and size of inductors and capacitors.\n'
                  '12. In steady state, the average voltage accross both inductors (L1 and L2) are zero and the voltage (Vc) across capacitor C1 which is placed between these inductors is the sum of input and output voltage.\n'
                  '    Vc = Vin + Vo\n'
                  '13. The value of inductors L1 and L2 is selected according to switching frequency, and it is inversely proportional.\n'
                  '14. The capacitors C1 and C2 are also dependent upon switching frequency, C2 is used for output voltage filter.\n'
                  '15. The LED D2 is used as indication of output voltages.\n'
                  '16. When the mosfet Q1 is ON, it connects the inductor L1 to ground, and inductor L1 is charged and stores electrical energy in the form of current (i.e (1/2)*L*I^2), the inductor L2 is also charged at input voltage.\n'
                  '17. The equations for both inductors VL1 and VL2 are:\n'
                  '    VL1 = L1*(di_l1/dt) = Vin\n'
                  '    VL2 = L2*(di_l2/dt) = Vc - Vo = Vin\n'
                  '    Note, that both voltages are equal to Vin\n'
                  '18. The current in inductor L1 will flow from left to right and the current in inductor L2 will flow from right to left because there is a short circuit path of Q1 and due to this short circuit the current will not flow from diode D1, D1 behaves as open circuit (in short when Q1 is ON both inductors L1 and L2 are charged).\n'
                  '19. When the mosfet Q1 is OFF, both inductors (L1 & L2) releases its energy and both inductors maintain their current direction, and now the short circuit path available is through diode D1\n'
                " 20. Now from above equation we can write equaltion for output voltage which is.\n"
                '     L1*(di_l1/dt) = Vin - Vc = -Vo ; and\n'
                '     L2*(di_l2/dt) = -Vo\n'
                '    Note that in both equations to sign of output voltage is -ve.\n'
                '21. The current direction can be seen using arrows.\n'
                '22. Assumming the steady state, the final output voltage can be calculated using this equation.\n'
                '      Vo = D*Vin/(1-D)\n'
                '23. The mosfet Q1 and diode D1 should be used with proper heat sink.\n'
                'Application:\n'
                '1. This circuit can be used to understand the concept of a buck-boost converter.\n'
                '2. Thic circuit can be used as variable step-up and step-down or buck-boost converter for DC input.\n'
                '3. This circuit can be used to drive load from solar panels, because the input voltages of solar panels can vary with environmental effects.\n'
                '4. This circuit can be used to drive power LEDs to maintain constant output voltage whether the input voltages are high or low.\n'
                'Download these files to perform more experiments.\n',style: TextStyle(color: Colors.grey[600]),),
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
                        url: "https://drive.google.com/file/d/1s3c346IFGZahXwEH3ucCBDD3Y8KNptQD/view?usp=sharing",
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
                  child: Text('DOWNLOAD(.DSN FILE SIZE:98.8 KB)'),
                ),
              ],
            ),

/*
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
                        url: "https://drive.google.com/file/d/1YD28LMSCIscU9pUiguCJb4rewZMtBHO5/view?usp=sharing",
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
            ),*/

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
                        url: "https://drive.google.com/drive/folders/1Kmd7qjT-e7RCUACm1Y6lhPZstIbkoOWh?usp=sharing",
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
                        url: "https://drive.google.com/file/d/1DWk5kk1zFf1Kv2SQLh44DRS7NnIw61-_/view?usp=sharing",
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
                  child: Text('DOWNLOAD ZIP FILE SIZE:347.3 KB)'),
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
                  child: Text('DOWNLOAD(.GIF FILE 365.3 KB)'),
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
