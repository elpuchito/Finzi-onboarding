import 'package:flutter/material.dart';
import 'package:onboarding/constants/constants.dart';

class ButtonBigSquare extends StatelessWidget {
  ButtonBigSquare({Key? key, required this.title, required this.onTap})
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
