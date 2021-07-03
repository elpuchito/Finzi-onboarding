import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

String assetName = 'assets/images/Fondo.svg';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  Widget svg = SvgPicture.asset(assetName, semanticsLabel: 'Logo');

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark),
      child: Scaffold(
        backgroundColor: Color(0xffF2F2F7),
        body: SafeArea(
          child: ListView(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Container(
                    height: 70,
                    child: svg,
                  ),
                  SizedBox(height: 20),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 12),
                        height: 550,
                        padding: EdgeInsets.only(bottom: 20),
                        // color: Colors.red,
                        child: Content(
                          title: '¡Aprende!',
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: (MediaQuery.of(context).size.width / 2) - 87,
                        child: ButtonGreen(
                          title: 'Comenzar',
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Center(
                      child: Text(
                        'La cuenta bancaria mas\nbacana para jovenes',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.grey,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Content extends StatelessWidget {
  Content({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xff962597),
            Color(0xff340C34),
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 60,
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontFamily: 'Londrina Solid',
            ),
          ),
          SizedBox(
            height: 80,
          )
        ],
      ),
    );
  }
}

class ButtonGreen extends StatelessWidget {
  ButtonGreen({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff00C191),
                Color(0xff00674E),
              ],
            )),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontFamily: 'Londrina Solid',
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        height: 50,
        width: 174,
      ),
    );
  }
}
