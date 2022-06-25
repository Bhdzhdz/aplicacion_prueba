import 'package:aplicacion_prueba/Screen0.dart';
import 'package:aplicacion_prueba/Screen2.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'Screen1.dart';
import 'Screen0.dart';
import 'Screen2.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>  Scaffold(
    body: StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshoot) {
        if(snapshoot.connectionState == ConnectionState.waiting){
          return Center(child: CircularProgressIndicator(),);
        } else if(snapshoot.hasData){
          return Screen2();
        } else if(snapshoot.hasError){
          return Center(child: Text ("Somthing went wrong"),);
        } else {
          return Screen1();
        }
      },
    ),
  );
}
