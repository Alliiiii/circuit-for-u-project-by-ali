/*
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:ext_storage/ext_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class MyPdf extends StatefulWidget {
  @override
  _MyPdfState createState() => _MyPdfState();
}

class _MyPdfState extends State<MyPdf> {
  final imgUrl = "https://www.englisch-hilfen.de/en/grammar/tenses_table.pdf";



  var dio = Dio(

  );

  String assetPDFPath = "";
  String urlPDFPath = "";

  @override
  void initState() {
    super.initState();

    getFileFromAsset("assets/mypdf.pdf").then((f) {
      setState(() {
        assetPDFPath = f.path;
        print(assetPDFPath);
      });
    });

  */
/*  getFileFromUrl("http://www.pdf995.com/samples/pdf.pdf").then((f) {
      setState(() {
        urlPDFPath = f.path;
        print(urlPDFPath);
      });
    });*//*

  }

  Future<File> getFileFromAsset(String asset) async {
    try {
      var data = await rootBundle.load(asset);
      var bytes = data.buffer.asUint8List();
      var dir = await getApplicationDocumentsDirectory();
      File file = File("${dir.path}/mypdf.pdf");

      File assetFile = await file.writeAsBytes(bytes);
      return assetFile;
    } catch (e) {
      throw Exception("Error opening asset file");
    }
  }
*/
/*
  Future<File> getFileFromUrl(String url) async {
    try {
      var data = await http.get(url);
      var bytes = data.bodyBytes;
      var dir = await getApplicationDocumentsDirectory();
      File file = File("${dir.path}/mypdfonline.pdf");

      File urlFile = await file.writeAsBytes(bytes);
      return urlFile;
    } catch (e) {
      throw Exception("Error opening url file");
    }
  }*//*



  @override
  Widget build(BuildContext context) {
    final width = MediaQuery
        .of(context)
        .size
        .width;
    final height = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Single Phase H-Bridge Circuit", style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18

        ),),
        backgroundColor: Colors.white,
      ),
      body: Center(

        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[


            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                height: height *0.35,
                width: width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icon2.jpg'),
                      fit: BoxFit.cover),),
              ),
            ),
            SizedBox(height: 10),
            Text("Description                                                           ",style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight:FontWeight.bold,



            ),),

            Container(
              height: height*0.25,
              //color: Colors.red,
              width: width,
              child: Column(
                children: <Widget>[
                  Text("The schematic and PCB is made in Altium Designer ",style: TextStyle(color: Colors.black54,fontSize: 14),),
                  Text("Use the latest available version of this software.This",style: TextStyle(color: Colors.black54,fontSize: 14),),
                  Text("is just a simple H-bridge circuit for beginners under-",style: TextStyle(color: Colors.black54,fontSize: 14),),
                  Text(" standing.The truth table for H-Bridge is also attached",style: TextStyle(color: Colors.black54,fontSize: 14),),
                  Text("for understanding. All files are given.Just download ",style: TextStyle(color: Colors.black54,fontSize: 14),),

                  Text(" these files and make your concept stronger. PMOS is",style: TextStyle(color: Colors.black54,fontSize: 14),),
                  Text("used on upper side and NMOS is used at lowe side  ",style: TextStyle(color: Colors.black54,fontSize: 14),),
                  Text("This is beacuse NMOS is easy to drive at lower side ",style: TextStyle(color: Colors.black54,fontSize: 14),),
                  Text("and PMOS is easy to drive at high side.otherwise     ",style: TextStyle(color: Colors.black54,fontSize: 14),),
                  Text("  bootstrap circuit or extra power supply will be needed.",style: TextStyle(color: Colors.black54,fontSize: 14),),
                ],
              ),
            ),
            SizedBox(height: 4),
            Text("Schematic File                                                       ",style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight:FontWeight.bold,



            ),),
            Padding(
                padding: const EdgeInsets.only(left:8.0,right:210,),
                child: RaisedButton(onPressed: () async {
                  Fluttertoast.showToast(msg: "Downloaded Sucessfully"
                      ,toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM);

                  String path =
                  await ExtStorage.getExternalStoragePublicDirectory(
                      ExtStorage.DIRECTORY_DOWNLOADS);

                  String fullPath = "$path/mypdf.pdf";
                  //print(assetPDFPath);
                  download(dio, assetPDFPath, fullPath);
                },
                  color: Colors.green,
                  textColor: Colors.white,
                  child: Text("DOWNLOAD"),)

            ),
            SizedBox(height: 5),
            Text("Pcb File                                                                   ",style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight:FontWeight.bold,



            ),),
            Padding(
                padding: const EdgeInsets.only(left:8.0,right:210,),
                child: RaisedButton(onPressed: () */
/*=>Fluttertoast.showToast(msg: "Downloaded Sucessfully"
                  ,toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM),*//*

                async {



                  Fluttertoast.showToast(msg: "Downloaded Sucessfully"
                      ,toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM);


                  String path =
                  await ExtStorage.getExternalStoragePublicDirectory(
                      ExtStorage.DIRECTORY_DOWNLOADS);


                  String fullPath = "$path/tenses_table.pdf";
                  download2(dio, imgUrl, fullPath);

                  //fluttertoast.showTo
                },


                    //Fluttertoast.showToast("Downloaded Sucessfully",toastlength:Toast.LENGTH_SHORT,gravity:ToastGravity.BOTTOM,),

                    color: Colors.green,
                    textColor: Colors.white,
                    child: Text("DOWNLOAD"))

            ),


            */
/*RaisedButton.icon(onPressed: () async {
              String path =
              await ExtStorage.getExternalStoragePublicDirectory(
                  ExtStorage.DIRECTORY_DOWNLOADS);

              String fullPath = "$path/tenses_table.pdf";
              download2(dio, imgUrl, fullPath);
            },
                icon: Icon(
                  Icons.file_download,
                  color: Colors.green,
                ),
                color: Colors.green,
                textColor:
                 Colors.white,
                label: Text("Download"))
          *//*

          ],
        ),
      ),

    );
  }

*/
/*
  final imgUrl="";

  var dio;

//get mobilw dwnload path
  String path =
      await ExtStorage.getExternalStoragePublicDirectory(
  ExtStorage.DIRECTORY_DOWNLOADS);

  String fullPath = "$path/newtask1.pdf";

*//*



  */
/*@override
  void initState() {
    getPermission();
  }*//*


  //get storage permission
  void getPermission() async {
    print("getPermission");
    await PermissionHandler().requestPermissions([PermissionGroup.storage]);
  }

  Future download2(Dio dio, String url, String savePath) async {
    //get pdf from link
    try {
      Response response = await dio.get(
        url,
        onReceiveProgress: showDownloadProgress,
        //Received data with List<int>
        options: Options(
            responseType: ResponseType.bytes,
            followRedirects: false,
            validateStatus: (status) {
              return status < 500;
            }),
      );


      //write in download folder
      File file = File(savePath);
      var raf = file.openSync(mode: FileMode.write);
      raf.writeFromSync(response.data);
      await raf.close();
    }
    catch (e) {
      print(e);
      print("Error is");
    }
  }

  Future download(Dio dio, String url, String savePath) async {
    //get pdf from link
    try {
      Response response = await dio.get(
        url,
        onReceiveProgress: showDownloadProgress,
        //Received data with List<int>
        options: Options(
            responseType: ResponseType.bytes,
            followRedirects: false,
            validateStatus: (status) {
              return status < 500;
            }),
      );


      //write in download folder
      File file = File(savePath);
      var raf = file.openSync(mode: FileMode.write);
      raf.writeFromSync(response.data);
      await raf.close();
    }
    catch (e) {
      print(e);
      print("Error is in assets");
    }
  }

//progress bar
  void showDownloadProgress(received, total) {
    if (total != -1) {
      print((received / total * 100).toStringAsFixed(0) + "%");
    }
  }


}
*/
