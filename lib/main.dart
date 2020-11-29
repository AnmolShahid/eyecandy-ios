import 'dart:async';
import 'package:flutter/material.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'second.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EYECANDY The Hague',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SecondScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                left: 25.0,
                right: 25.0,
              ),
              child: Image.asset('assets/images/eyecandylogo.png'),
            ),
            JumpingDotsProgressIndicator(
              fontSize: 40.0,
              numberOfDots: 4,
              color: Colors.black,
            )
            // Padding(
            //   padding: const EdgeInsets.only(top: 0.0, bottom: 20.0),
            //   child: JumpingDotsProgressIndicator(
            //     //fontSize: 10.0,
            //     color: Colors.black,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
