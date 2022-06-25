import 'package:aplicacion_prueba/MeScreen.dart';
import 'package:flutter/material.dart';
import 'MeScreen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget> [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 30.0,
                ),
                FlatButton(
                 onPressed: (){},
                  child: Text("Home", textScaleFactor: 1.8,),
                ),
                FlatButton(
                  onPressed: (){},
                  child: Text("Hook", textScaleFactor: 1.8,),
                ),
                FlatButton(
                  onPressed: (){
                    Navigator.push (
                        context, MaterialPageRoute(
                        builder: (context) {
                          return MeScreen();
                        }
                    )
                    );
                  },
                  child: Text("Me", textScaleFactor: 1.8,),
                ),
                Container(
                  width: 30.0,
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
