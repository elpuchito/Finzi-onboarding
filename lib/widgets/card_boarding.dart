import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:onboarding/constants/constants.dart';

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
