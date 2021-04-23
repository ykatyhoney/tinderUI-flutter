import 'package:flutter/material.dart';
import 'file:///G:/tinder/tinder_swipe/lib/common/flutter_tindercard.dart';
import 'file:///G:/tinder/tinder_swipe/lib/dashboard/tinder_dashboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tinder Swipe',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
