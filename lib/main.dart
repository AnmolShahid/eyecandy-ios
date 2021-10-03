import 'dart:async';
import 'package:flutter/material.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';
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
  int i = 0;
  @override
  void initState() {
    super.initState();
  }

  void call() {
    Timer(Duration(seconds: 5), () {
      //  _launchask();
      i = 1;
      setState(() {});

      /// Navigator.push(
      ///  context, MaterialPageRoute(builder: (context) => SecondScreen()));
    });
  }

  _launchask() async {
    const url = 'https://eyecandy.salonized.com/widget_bookings/new';
    if (await canLaunch(url)) {
      await launch(
        url,
        forceWebView: true,
        enableJavaScript: true,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    call();
    return i == 0
        ? Scaffold(
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
          )
        : WebView(
            initialUrl: 'https://eyecandy.salonized.com/widget_bookings/new',
            javascriptMode: JavascriptMode.unrestricted,
            debuggingEnabled: true,
          );
  }
}
