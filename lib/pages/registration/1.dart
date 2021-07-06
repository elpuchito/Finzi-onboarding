import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:onboarding/constants/constants.dart';
import 'package:onboarding/widgets/button_big_square.dart';
import 'package:onboarding/widgets/button_navigation.dart';
import 'package:onboarding/widgets/logo.dart';
import 'package:onboarding/widgets/roundedRectangle.dart';
import 'dart:math' as math;

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
                                    ButtonBigSquare(
                                      title: 'Soy un\n jóven',
                                      onTap: () {},
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    ButtonBigSquare(
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
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
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
                                  onTap: () {},
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
