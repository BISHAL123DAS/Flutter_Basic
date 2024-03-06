import 'package:flutter/material.dart';
import 'package:flutter_animation/amimated_opacity.dart';
// import 'package:flutter_animation/foo_animation.dart';


void main() {
  runApp(FlutterApp());
}


class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutterApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      // home: fooanimation(),
       home:AnimatedOpacityDemo(),
    );
  }
}

