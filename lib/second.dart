import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  _launchFB() async {
    const url = 'https://facebook.com/eyecandythehague';

    if (await canLaunch(
      url,
    )) {
      await launch(
        url,
        forceWebView: true,
        enableJavaScript: true,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchgiftcard() async {
    const url = 'https://giftcard.sumup.io/order/GWTQRTC/kay';
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

  _launchIG() async {
    const url = 'https://instagram.com/eyecandy.thehague';
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

  _launchWH() async {
    const url = 'https://wa.me/31639222112';
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
  void initState() {
    super.initState();
    //_launchask();
    // Timer(Duration(seconds: 7), () {
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => WebViewScreen()));
    // });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {},
      child: Scaffold(
        // appBar: AppBar(
        //   automaticallyImplyLeading: false,
        //   title:
        //       Image.asset('assets/images/eyecandylogo.png', fit: BoxFit.cover),
        // ),
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset('assets/images/eyecandylogo.png',
                      fit: BoxFit.cover),
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 50.0,
                        right: 50,
                        bottom: 14,
                      ),
                      child: Text(
                        "Welkom in de app van EYECANDY The Hague!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25.0,
                        vertical: 14,
                      ),
                      child: Text(
                        "Boek gemakkelijk je afspraak in voor een nieuwe set one by one wimperextensions of het opvullen ervan.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25.0,
                        vertical: 14,
                      ),
                      child: Text(
                        "Je kan tot uiterlijk 2 uur van te voren een afspraak inplannen. Staat de gewenste dag/tijd er niet bij?  Druk dan op het WhatsApp icoontje en stuur een bericht!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: _launchask,
                  child: Image.asset(
                    "assets/images/asf.jpeg",
                    fit: BoxFit.cover,
                    height: 70,
                  ),
                ),
                GestureDetector(
                  onTap: _launchgiftcard,
                  child: Image.asset(
                    "assets/images/giftcard.jpeg",
                    fit: BoxFit.cover,
                    height: 70,
                  ),
                ),
                GestureDetector(
                  onTap: _launchWH,
                  child: Image.asset(
                    "assets/images/whatsapp.jpeg",
                    fit: BoxFit.cover,
                    height: 70,
                  ),
                ),
                GestureDetector(
                  onTap: _launchIG,
                  child: Image.asset(
                    "assets/images/instagram.jpeg",
                    fit: BoxFit.cover,
                    height: 70,
                  ),
                ),
                GestureDetector(
                  onTap: _launchFB,
                  child: Image.asset(
                    "assets/images/facebook.jpeg",
                    fit: BoxFit.cover,
                    height: 70,
                  ),
                ),
                //   Center(
                //     child:  JumpingDotsProgressIndicator(
                //   fontSize: 40.0,
                //   numberOfDots: 4,
                //   color: Colors.black,
                // )
                //     // Text(
                //     //   "Afspraak maken",
                //     //   style: TextStyle(
                //     //     color: Colors.black,
                //     //     fontSize: 18,
                //     //   ),
                //     // ),
                //   ),
                //   Column(
                //     children: <Widget>[
                //       Row(
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: <Widget>[
                //           GestureDetector(
                //             onTap: _launchFB,
                //             child: Image.asset(
                //               "assets/images/facebook.png",
                //               height: 50,
                //               width: 50,
                //               fit: BoxFit.cover,
                //             ),
                //           ),
                //           SizedBox(
                //             width: 30,
                //           ),
                //           GestureDetector(
                //             onTap: _launchIG,
                //             child: Image.asset(
                //               "assets/images/insta.png",
                //               height: 50,
                //               width: 50,
                //               fit: BoxFit.cover,
                //             ),
                //           ),
                //           SizedBox(
                //             width: 30,
                //           ),
                //           GestureDetector(
                //             onTap: _launchWH,
                //             child: Image.asset(
                //               "assets/images/whatsapp.png",
                //               height: 50,
                //               width: 50,
                //               fit: BoxFit.cover,
                //             ),
                //           ),
                //         ],
                //       ),
                //     ],
                //   ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
