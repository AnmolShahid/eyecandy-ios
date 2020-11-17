import 'dart:async';
import 'package:eye_candy/second.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatefulWidget {
  @override
  _WebViewScreenState createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  bool loaded = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return WillPopScope(child:  Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  top: 45.0,
                  left: 15,
                  right: 15,
                ),
                child: Image.asset('assets/images/eyecandylogo.png',
                    fit: BoxFit.cover),
              ),
              Stack(
                children: [
                  Container(
                      height: size.height,
                      width: size.width,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: WebView(
                          initialUrl:
                              "https://eyecandy.salonized.com/bookings/new?layout=standalone",
                          javascriptMode: JavascriptMode.unrestricted,
                          onWebViewCreated:
                              (WebViewController webViewController) {
                            _controller.complete(webViewController);
                          },
                          onPageStarted: (String url) {
                            print('Page started loading: $url');
                          },
                          onPageFinished: (String url) {
                            print('Page finished loading: $url');
                            loaded = true;
                            setState(() {});
                          },
                          gestureNavigationEnabled: true,
                        ),
                      )),
                  Visibility(
                    visible: !loaded,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Please Wait",
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          CircularProgressIndicator()
                        ],
                      ),
                    ),
                  )
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset("assets/images/iconback.png"),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    ), onWillPop: (){
       Navigator.push(
          context, MaterialPageRoute(builder: (context) => SecondScreen()));

    })
   ;
  }
}
