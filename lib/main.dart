import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_analog_clock/clock.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      title: 'Flutter Clock',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          brightness:
              Brightness.light // Brightness.dark can be done for dark mode.
          ),
      home: Scaffold(
          body: Center(
              child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Clock(),
      ))),
    );
  }
}
