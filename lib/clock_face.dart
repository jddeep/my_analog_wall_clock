import 'clock_text.dart';
import 'package:flutter/material.dart';

class ClockFace extends StatelessWidget {
  final DateTime dateTime;
  final ClockText clockText;
  ClockFace({this.clockText = ClockText.arabic, this.dateTime});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: new Padding(
        padding: const EdgeInsets.all(10.0),
        child: new AspectRatio(
          aspectRatio: 0.75,
          child: Stack(
            children: <Widget>[
              new Container(
                width: double.infinity,
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xfff4f9fd),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(8.0, 0),
                          blurRadius: 13,
                          spreadRadius: 1,
                          color: Color(0xffd3e0f0))
                    ]),
              ),
              Positioned(
                  left: MediaQuery.of(context).size.width * 0.137,
                  top: MediaQuery.of(context).size.height * 0.13,
                  child: Text('XII',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22.0,
                          fontFamily: 'Times New Roman')))
            ],
          ),
        ),
      ),
    );
  }
}
