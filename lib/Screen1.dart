import 'package:firebase_auth/firebase_auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:aplicacion_prueba/Screen2.dart';
import 'package:provider/provider.dart';
import 'GoogleSingInProvider.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(child: Text("Set up account", style: TextStyle(color: Colors.black), textScaleFactor: 1.8,)),
        ),
        body: SafeArea(
            child: Center(
              child: SizedBox(
                width: 300.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Spacer(),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.black,
                        minimumSize: Size(double.infinity, 50.0)
                      ),
                        icon: FaIcon(FontAwesomeIcons.google, color: Colors.blueAccent,),
                        onPressed: (){
                        final  provider =
                            Provider.of<GoogleSingInProvider>(context, listen: false);
                        provider.googleLogin();
                        },
                      label: Text("          Sing in with Google"),
                    ),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xFF165DC0),
                          onPrimary: Colors.white,
                          minimumSize: Size(450.0, 50.0)
                      ),
                      icon: FaIcon(FontAwesomeIcons.facebook, color: Colors.white,),
                      onPressed: (){
                      },
                      label: Text("     Sing in with Facebook",),
                    ),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          onPrimary: Colors.white,
                          minimumSize: Size(450.0, 50.0)
                      ),
                      icon: FaIcon(FontAwesomeIcons.phone, color: Colors.white,),
                      onPressed: (){
                      },
                      label: Text("          Sing in with phone"),
                    ),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          onPrimary: Colors.white,
                          minimumSize: Size(450.0, 50.0)
                      ),
                      icon: FaIcon(FontAwesomeIcons.mailBulk, color: Colors.white,),
                      onPressed: (){
                      },
                      label: Text("          Sing in with email"),
                    ),
                    Spacer(),
                    FlatButton(
                      onPressed: (){
                        Navigator.push (
                            context, MaterialPageRoute(
                            builder: (context) {
                              return Screen2();
                            }
                        )
                        );
                      },
                      child: Text("Bienvenido"),
                      textColor: Colors.white,
                      color: Colors.blueAccent,
                      height: 50.0,
                    ),
                    Container(
                      height: 40.0,
                    ),
                  ],
                ),
              ),
            )
        ),
      ),
    );
  }
}
