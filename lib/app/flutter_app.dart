import 'package:flutter/material.dart';
import 'package:flutterpage/app/router.dart';



class FlutterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: Router.generateRouter,
    );
  }
  
}