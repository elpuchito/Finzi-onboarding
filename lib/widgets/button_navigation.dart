import 'package:flutter/material.dart';
import 'package:onboarding/constants/constants.dart';

class ButtonNavigation extends StatelessWidget {
  ButtonNavigation({Key? key, required this.icon, required this.onTap})
      : super(key: key);

  IconData icon;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                lightestGray,
                darkestGray,
              ]),
        ),
        height: 50,
        width: 50,
        child: Icon(
          icon,
          color: darkestPurple,
          size: 30,
        ),
      ),
    );
  }
}
