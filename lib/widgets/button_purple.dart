import 'package:flutter/material.dart';
import 'package:onboarding/constants/constants.dart';

class ButtonPurple extends StatelessWidget {
  ButtonPurple({
    Key? key,
    required this.title,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                lightestPurple,
                darkestPurple,
              ],
            )),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: buttonStyle,
            ),
            Icon(
              icon,
              color: Colors.white,
              size: 22,
            ),
          ],
        ),
        height: 45,
        width: 150,
      ),
    );
  }
}
