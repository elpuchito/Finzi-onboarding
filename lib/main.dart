import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math;
import 'constants/constants.dart';
import 'widgets/RoundedRectangle.dart';
import 'widgets/button_green.dart';
import 'widgets/button_navigation.dart';
import 'widgets/button_purple.dart';
import 'widgets/logo.dart';

String purple_mascot = 'assets/images/purple_mascot.svg';
String yellow_mascot = 'assets/images/yellow_mascot.svg';
String gold_logo = 'assets/images/goldLogo.svg';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Registration(),
    );
  }
}

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

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
                  Logo(),
                  SizedBox(height: 20),
                  BoardingCard(
                    title: '¡Empezemos!',
                    isBienvenidoPage: false,
                    button2: Text(''),
                    button: ButtonGreen(
                        onTap: () {},
                        title: 'Comenzar',
                        icon: Icons.arrow_forward_rounded),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Footer(
                    title: 'La cuenta bancaria mas\nbacana para jovenes',
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

class BoardingCard extends StatelessWidget {
  BoardingCard({
    Key? key,
    required this.isBienvenidoPage,
    this.button,
    this.button2,
    required this.title,
  }) : super(key: key);
  final String title;
  final bool isBienvenidoPage;
  Widget? button;
  Widget? button2;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 12),
          height: 540,
          padding: EdgeInsets.only(bottom: 20),
          // color: Colors.red,
          child: isBienvenidoPage
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Flexible(
                            flex: 2,
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    lightestGray,
                                    darkestGray,
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.yellow,
                                gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    lightestGray,
                                    darkestGray,
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height,
                        width: width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 100,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  purple_mascot,
                                ),
                                SvgPicture.asset(
                                  yellow_mascot,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'Bienvenidos',
                              style: TextStyle(
                                fontSize: 30,
                                color: darkestPurple,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Londrina Solid',
                              ),
                            ),
                            Text(
                              'Finzeros',
                              style: TextStyle(
                                fontSize: 60,
                                color: darkestPurple,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Londrina Solid',
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              : Container(
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        lightestPurple,
                        darkestPurple,
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
                ),
        ),
        Positioned(
          bottom: 0,
          left: isBienvenidoPage ? 0 : (width / 2) - 75,
          child: isBienvenidoPage
              ? Container(
                  // color:Colors.red,
                  width: width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      button!,
                      SizedBox(
                        width: 8,
                      ),
                      button2!,
                    ],
                  ),
                )
              : button!,
        ),
      ],
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            color: Colors.grey,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}

class Bienvenidos extends StatelessWidget {
  const Bienvenidos({Key? key}) : super(key: key);

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
                    child: SvgPicture.asset(logo, semanticsLabel: 'Logo'),
                  ),
                  SizedBox(height: 20),
                  BoardingCard(
                    isBienvenidoPage: true,
                    button: ButtonGreen(
                      onTap: () {},
                      title: 'Iniciar Sesion',
                      icon: Icons.verified_user_rounded,
                    ),
                    button2: ButtonPurple(
                        onTap: () {},
                        title: 'Crear Cuenta',
                        icon: Icons.supervised_user_circle_rounded),
                    title: '¡Aprende!',
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Footer(
                    title: 'La cuenta bancaria mas\nbacana para jovenes',
                  ),
                  SizedBox(height: 50),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Registration extends StatelessWidget {
  const Registration({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark),
      child: Scaffold(
        backgroundColor: Color(0xffF2F2F7),
        body: ListView(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    SizedBox(height: 60),
                    Logo(),
                    SizedBox(height: 20),
                    Stack(
                      children: [
                        Container(
                          //this padding is what makes container cut the buttons in the center
                          padding: EdgeInsets.only(top: 70),
                          margin: EdgeInsets.symmetric(horizontal: 12),
                          height: 550,
                          // color: Colors.red,
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  lightestGray,
                                  darkestGray,
                                ],
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 100,
                                ),
                                Text(
                                  '¿Quien eres?',
                                  style: TextStyle(
                                      color: darkestPurple,
                                      fontSize: 30,
                                      fontFamily: 'Londrina Solid'),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ButtonSquare(
                                      title: 'Soy un joven',
                                      onTap: () {},
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    ButtonSquare(
                                      title: 'Soy un padre',
                                      onTap: () {},
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          // left: (width / 2) - 75,
                          child: Container(
                            // color: Colors.yellow,
                            width: width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ButtonNavigation(
                                  icon: Icons.arrow_back_rounded,
                                ),
                                CustomPaint(
                                  size: Size(
                                      140,
                                      (140 * 1)
                                          .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                                  painter: RoundedRectangle(),
                                ),
                                ButtonNavigation(
                                  icon: Icons.home_outlined,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 120,
                    )
                  ],
                ),
                Positioned(
                  bottom: -150,
                  left: -40,
                  child: Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationY(math.pi),
                    child: SvgPicture.asset(
                      purple_mascot,
                      semanticsLabel: 'Logo',
                      height: 400,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ButtonSquare extends StatelessWidget {
  ButtonSquare({Key? key, required this.title, required this.onTap})
      : super(key: key);
  String title;
  VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 130,
        width: 130,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(0, 5), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xffE9EBFF),
              Color(0xffB8BBD7),
            ],
          ),
        ),
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: darkestPurple,
                fontSize: 30,
                fontFamily: 'Londrina Solid'),
          ),
        ),
      ),
    );
  }
}
