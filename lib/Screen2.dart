import 'dart:io';
import 'package:flutter/material.dart';
import 'package:camera_camera/camera_camera.dart';
import 'HomeScreen.dart';

class Screen2 extends StatelessWidget {
  final photos = <File>[];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    //photos.add("images/LogoPRO.JPG");
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Tomate una foto',style: TextStyle(color: Colors.black), textScaleFactor: 1.8,),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            photos.isNotEmpty == true ? Container(
              width: 250.0,
              height: 250.0,
              child: Image.file(
                photos.last,
                fit: BoxFit.cover,
              ),
            ) : Container(
              height: 350.0,
              color: Colors.grey,
            ),
            Container(
              height: 40.0,
            ),
            Container(
              color: Colors.blueAccent,
              child: IconButton(
                padding: const EdgeInsets.all(0),
                alignment: Alignment.centerRight,
                icon: Icon(Icons.camera),
                color: Colors.black,
                onPressed:(){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => CameraCamera(
                            onFile: (file) {
                              photos.add(file);
                              Navigator.pop(context);
                              //setState(() {Screen2()});
                            },
                          )));
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RaisedButton(
                  color: Colors.green,
                  child: Text('Aceptar'),
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push (
                        context, MaterialPageRoute(
                        builder: (context) {
                          return HomeScreen();
                        }
                    )
                    );
                  },
                ),
                RaisedButton(
                  color: Colors.red,
                  child: Text('Regresar'),
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            Container(
              height: 40.0,
            ),
          ],
        ),
      ),
    );
  }
}
