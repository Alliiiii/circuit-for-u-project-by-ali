import 'dart:async';
import 'dart:typed_data';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:save_in_gallery/save_in_gallery.dart';


class ec1 extends StatefulWidget {
  //MyStatelessWidget({Key key}) : super(key: key);
  @override
  _ec1State createState() => _ec1State();
}

class _ec1State extends State<ec1> {



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
    final urls = ["assets/ec1.gif"];
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

      height: height*1.420,
      child:Card(
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Auto Transformer',style:TextStyle(fontSize:19.0,fontWeight:FontWeight.bold,)),

            Container(
              padding: EdgeInsets.only(top: 5.0,bottom: 20.0,left: 5.0),
              child:Row(children: [
                Text("Electrical Circuit",style:TextStyle(/*fontSize:14.0,*/color: Colors.grey[600],fontStyle: FontStyle.italic)),
              ],
              ),

            ),
            Container(
                height:height*0.25,
                width: width*0.95,
                child: Image.asset('assets/ec1.gif',fit:BoxFit.cover)),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[

                TextButton(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0,top: 0),
                    child: const Text('                                                                            2020-04-22',style:TextStyle(fontSize:14.0,color:Colors.black54,fontStyle:FontStyle.italic)),
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
              child:Text("This circuit is designed and simulated in Proteus 7.10. In this simulation you will learn how auto-transformer works.\n"
              "1. Generally there are two types auto of transformer on the basis of construction, which are described in following points.\n"
              "2. The first type consists of continuous winding (only one winding) with the taps brought out by the desired secondary voltage.\n"
                  "3. In above type, one portion of the winding acts as primary winding and remaining taps acts as secondary winding.\n"
                  "4. The normal transformers has two separate windings, one is primary and other is secondary winding. But we can convert normal transformer into auto transformer by adding the secondary winding in series with the primary winding. This is the second type of auto-transformer.\n"
                  "5. This circuit is simulated with second type of auto-transformer.\n"
                  "6. By connecting primary and secondary winding in series, the voltage of the secondary winding adds with the primary voltage. The output voltage Vout (shown in the animation) is the sum of primary voltage and secondary voltage.\n"
                  "7. Assume variable resistor as VARIAC (Variable ac Voltage source or transformer).\n"
                  "Application\n"
                  "1. The common application of auto-transformer is voltage stabilizer.\n"
                  "Download the files for more understanding and performing experiments by yourself.\n",style: TextStyle(color: Colors.grey[600]),),
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
                        url: "https://drive.google.com/file/d/13mVHaq2GibJihlHBMqs6i1csV-GU5ard/view?usp=sharing",
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
                  child: Text('DOWNLOAD(.DSN FILE SIZE:88.7 KB)'),
                ),
              ],
            ),



            Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Source File", style: TextStyle(fontSize: 14.0,
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
                        url: "https://drive.google.com/file/d/1KRaBEC8Z06zLVYW2gA5fA-cjTu768J1k/view?usp=sharing",
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
                  child: Text('DOWNLOAD ZIP FILE SIZE:77.8 KB)'),
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
                  child: Text('DOWNLOAD(.GIF FILE 183.4 KB)'),
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
