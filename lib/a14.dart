 import 'dart:async';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:save_in_gallery/save_in_gallery.dart';
import 'package:fluttertoast/fluttertoast.dart';

class a14 extends StatefulWidget {
  //MyStatelessWidget({Key key}) : super(key: key);
  @override
  _a14State createState() => _a14State();
}

class _a14State extends State<a14>{
final _imageSaver = ImageSaver();
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
  final urls = ["assets/  a14.gif"];
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

      height: height*1.890,
      child:Card(
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Zener Diode as Dummy Load',style:TextStyle(fontSize:19.0,fontWeight:FontWeight.bold,)),

            Container(
              padding: EdgeInsets.only(top: 5.0,bottom: 20.0,left: 5.0),
              child:Row(children: [
                Text("Analog Circuits",style:TextStyle(/*fontSize:14.0,*/color: Colors.grey[600],fontStyle: FontStyle.italic)),
              ],
              ),

            ),
            Container(
                height:height*0.25,
                width: width*0.95,
                child: Image.asset('assets/a14.gif',fit:BoxFit.cover)),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[

                TextButton(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0,top: 0),
                    child: const Text('                                                                            2020-04-27',style:TextStyle(fontSize:14.0,color:Colors.black54,fontStyle:FontStyle.italic)),
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
              child:Text('This circuit is designed and simulated in Proteus 7.10. This is a simple circuit for using zener diode as dummy load. The working of this circuit is given below.\n'
                  '1. In this circuit, you will learn two concepts:\n'
                  'a) How a capacitor is used to divide mains AC voltage (220Vac rms or 110Vac rms).\n'
                  'b) How a zener diode is used as dummy load to test a small power supply.\n'
                  '2. For selection of capacitor you should know at least the input voltage and the current.\n'
                  '3. Then find its resistance (reactace) X = V/I, V can be 110V or 220V.\n'
                  '4. Value of capacitor can be calculated by using this formula\n'
                  '   C = 1/(2*pi*f*X)\n'
                  '   f can be 50Hz or 60Hz\n'
                  '5. When the mains power is applied to the circuit, the voltage drops across the capacitor by V = IX.\n'
                  '6. Which means there should be almost constant load (current) and constant mains voltage, otherwise the output voltage will vary with respect to the load or mains input voltage.\n'
                  '8. Use series circuit (a 100W bulb is placed in series with the mains) for safety to test this circuit.\n'
                  '8. Use zener diode as your dummy load, because it is cheap as compared to load (fan or power LED).\n'
                  '9. The wattage of zener should be considered according to the current.\n'
                  '10.Once you make this circuit and tested successfully in with zener load, then remove series lamp and zener diode and place your real load.\n'
                  '11. The R1 (1M ohm 2W) and R2 (100K ohm 0.5W) are placed for safety, to discharge the capacitors C1 and C2 when the circuit is OFF.\n'
                  '12. There are many types of capacitors, use polyester x class capacitor of 400V.\n'
                  'Application:\n'
                  '1. This circuit can be used to derive 12VDC fan from mains voltage.\n'
                  '2. This circuit can also be used to derive 12V LED buld or LED strip or a single LED up to 5W.\n'
                  'Precautions:\n'
                  '1. THIS CIRCUIT IS DANGEROUS, BECAUSE THERE ARE LIVE VOLTAGES AT THE CAPACITOR, SO BE EXTRA CAREFUL WHILE IMPLEMENTING THIS CIRCUIT.\n'
                  '2. USE SAFETY GLOVES BEFORE USING OR TURN ON THIS CIRCUIT.\n'
                  "3. DON'T MAKE AND RUN THIS CIRCUIT ALONE. THERE SHOULD BE SOMEONE NEAR TO OBSERVE YOU WHILE YOU ARE WORKING ON THIS CIRCUIT.\n"
                'Before practical you can download these files and perfrom simulation experiments for more understanding.\n',style: TextStyle(color: Colors.grey[600]),),
            ),
/*
            Row(
              children: <Widget>[
                Text("Datasheet Link",style:TextStyle(fontSize:14.0,color: Colors.black,fontWeight:FontWeight.bold)),
              ],

            ),*/
            /*Row(
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
                        url: "https://drive.google.com/file/d/1vG0o7Q4YEUuN9V0hIQUxrNVlHkU66qz2/view?usp=sharing",
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
                  child: Text('DOWNLOAD(.DSN FILE SIZE:101.2 KB)'),
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
                        url: "https://drive.google.com/file/d/178N-OTnnw1pFRjUkxi4SRvIi8egU4N94/view?usp=sharing",
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
                  child: Text('DOWNLOAD(.HEX FILE SIZE:6.2 KB)'),
                ),
              ],
            ),*/

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
                        url: "https://drive.google.com/file/d/1mbpIpYiOQXQPuyNFzKvTYviicsbjPJoL/view?usp=sharing",
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
                  child: Text('DOWNLOAD ZIP FILE SIZE:90.4 KB)'),
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
                  child: Text('DOWNLOAD(.GIF FILE 118 KB)'),
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
