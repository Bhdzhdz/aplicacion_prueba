import 'package:aplicacion_prueba/GoogleSingInProvider.dart';
import 'package:flutter/material.dart';
import 'package:aplicacion_prueba/Screen0.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
  create: (context) => GoogleSingInProvider(),
  child: MaterialApp(
      home: Screen0(),
    )
  );
}