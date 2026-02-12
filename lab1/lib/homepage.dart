import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _sliderValue = 1.0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 50, 50, 50),
        body: Column(
          children: <Widget>[
            SizedBox(height: 30,),

            Row (
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Now Playing',
                    style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),


          SizedBox(height: 120,),

          Center(
            child: Container(
              padding: EdgeInsets.all(3),
              height: 240,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Icon(
                Icons.music_note,
                color: Colors.white,
                size: 60,
                ),
            ),
          ),

          SizedBox(height: 30,),

          Text(
            "Sample Song Title",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),

          SizedBox(height: 8,),
          
          Text(
            "Sample Artist",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w200,
              color: Colors.white,
            ),
          ),

          SizedBox(height: 30,),

          Slider(
            min: 0.0,
            max: 2.0,
            value: _sliderValue,
            onChanged: (value) {
              setState(() {
                _sliderValue = value;
              });
            },
          ),
          
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("2.25",
                  style: TextStyle(
                    fontSize: 13,
                    color: const Color.fromARGB(255, 203, 203, 203),
                    fontWeight: FontWeight.w100
                  ),
                ),
                Text("4.50",
                  style: TextStyle(
                    fontSize: 13,
                    color: const Color.fromARGB(255, 203, 203, 203),
                    fontWeight: FontWeight.w100
                  ),
                ),
              ],
            ),
          ),

          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                  Icon(
                    Icons.shuffle,
                    color: Colors.white,
                    size: 30,
                  ),
                  Icon(
                    Icons.skip_previous,
                    color: Colors.white,
                    size: 40,
                  ),
                  Icon(
                    Icons.play_circle_fill,
                    color: Colors.green,
                    size: 60,
                  ),
                  Icon(
                    Icons.skip_next,
                    color: Colors.white,
                    size: 40,
                  ),
                  Icon(
                    Icons.repeat,
                    color: Colors.white,
                    size: 30,
                  ),
              ],
            ),
          )


          ],
      ),
    );
  }
}