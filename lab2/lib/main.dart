import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

}
// This widget is the root of your application.
class _MyAppState extends State<MyApp> {
  double _redValue = 0.0;
  double _greenValue = 0.0;
  double _blueValue = 0.0;
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: <Widget>[
            SizedBox(height: 25,),
            Container(
              height: 240,
              width: 350,
              decoration: BoxDecoration(
                color: Color.fromRGBO(_redValue.toInt(), _greenValue.toInt(), _blueValue.toInt(), 1.0),
                borderRadius: BorderRadius.circular(20)
              ),
            ),
            Column(children: <Widget>[
                SizedBox(height: 10),
                Text(
                  "Red: ${_redValue.toInt()}",
                  style: TextStyle(
                    color: Colors.red,
                  ),),
                Slider(
                  min: 0,
                  max: 255,
                  value: _redValue,
                  onChanged: (value) {
                    setState(() {
                      _redValue = value;
                    });
                  },
                ),
                Text(
                  "Green: ${_greenValue.toInt()}",
                  style: TextStyle(
                    color: Colors.green,
                  ),),
                Slider(
                  min: 0,
                  max: 255,
                  value: _greenValue,
                  onChanged: (value) {
                    setState(() {
                      _greenValue = value;
                    });
                  },
                ),
                Text(
                  "Blue: ${_blueValue.toInt()}",
                  style: TextStyle(
                    color: Colors.blue,
                  ),),
                Slider(
                  min: 0,
                  max: 255,
                  value: _blueValue,
                  onChanged: (value) {
                    setState(() {
                      _blueValue = value;
                    });
                  },
              ),
            ],),
          ],),
        ),
        debugShowCheckedModeBanner: false, 
      );

  }
}