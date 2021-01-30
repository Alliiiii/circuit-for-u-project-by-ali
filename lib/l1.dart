import 'dart:async';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:save_in_gallery/save_in_gallery.dart';
import 'package:fluttertoast/fluttertoast.dart';



class l1 extends StatefulWidget {
  //MyStatelessWidget({Key key}) : super(key: key);
  @override
  _l1State createState() => _l1State();
}

class _l1State extends State<l1> {
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
    final urls = ["assets/l1.gif"];
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

      height: height*1.650,
      child:Card(
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('TL431 as Variable Zener Diode',style:TextStyle(fontSize:19.0,fontWeight:FontWeight.bold,)),

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
                child: Image.asset('assets/l1.gif',fit:BoxFit.cover)),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[

                TextButton(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0,top: 0),
                    child: const Text('                                                                            2020-10-17',style:TextStyle(fontSize:14.0,color:Colors.black54,fontStyle:FontStyle.italic)),
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
              child:Text('This circuit is designed and simulated in Proteus 7.10. In this circuit you will learn that how LM431 or TL431 can be used as variable zener diode. Before understanding this circuit, see "Constant Linear Voltage Regulator" in Linear Power Supplies category. This is a very simple circuit and working of this circuit is given below.\n'
                  '1. TL431 is a 3 terminal device. Pin 1 is Reference, pin 2 is anode and pin 3 is cathode.\n'
                  '2. The maximum sink capability of TL431 is 100mA.\n'
                  '3. In this circuit a TL431, a variable resistor of 10K, a series resistor of 100ohm and R2 10k ohm are used to make potential divider for reference pin.\n'
                  '4. The input of this circuit is constant which is 12Vdc and desired output is 2.75Vdc to 11.8Vdc (see animation)\n'
                  '5. The formula of calculating output voltage is\n'
                  '	Vo = (1+RV1/R2)*2.5V	lets assume RV1 is 1k and after puting values of RV1 and R2 we get\n'
                  '	Vo = (1+0.1)*2.5V = 2.75V, which can be seen in animation\n'
                  '6. The current flowing through resistor R3 can be calculated as\n'
                  '	I = (Vin - Vo)/R\n'
                  '   For max. Vo = 12V\n'
                  '	I = (12 - 11.8)/100 = 2mA\n'
                  '   and for min. Vo = 3V\n'
                  '	I = (12 - 2.75)/100 = 92.5mA\n'
                  '7. You can also make fixed voltage zener diode, for this constant voltage application, see previous circuit.\n'
                  'Applications:\n'
                  '1. This circuit can be used to understand the working of TL431.\n'
                  '2. This circuit can be used as low power variable zener diode.\n'
                  '3. This circuit can be used as low power variable linear voltage regulator.\n'
                  'Note:\n'
                  '1. So, come back daily to get new, amazing and exciting electronic circuits.\n'
                  '2. Also share this app to your friends.\n',style: TextStyle(color: Colors.grey[600]),),
            ),
            /*Row(
              children: <Widget>[
                Text("Datasheet Link",style:TextStyle(fontSize:14.0,color: Colors.black,fontWeight:FontWeight.bold)),
              ],

            ),
            Row(
              children: <Widget>[
                Text("NOTE avaliable in assets",style:TextStyle(fontSize:11.0,color: Colors.lightBlueAccent,fontWeight:FontWeight.bold,fontStyle: FontStyle.italic,)),
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
                        url: "https://drive.google.com/file/d/1guD2_Elj8fjdV84QTU-Y9v8lJMqjMqO4/view?usp=sharing",
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
                  child: Text('DOWNLOAD(.DSN FILE SIZE:69.7 KB)'),
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
                        url: "https://drive.google.com/file/d/1Pgj_W9_EsdEO2-9i3G_FKabuvasnMoSM/view?usp=sharing",
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
                  child: Text('DOWNLOAD ZIP FILE SIZE:70.5 MB)'),
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
                  child: Text('DOWNLOAD(.GIF FILE 100.3 KB)'),
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
