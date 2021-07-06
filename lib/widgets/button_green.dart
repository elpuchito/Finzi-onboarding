import 'package:flutter/material.dart';
import 'package:onboarding/constants/constants.dart';

class ButtonGreen extends StatelessWidget {
  ButtonGreen({
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
        // padding: EdgeInsets.symmetric(horizontal: 26),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                lightestGreen,
                darkestGreen,
              ],
            )),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Text(
                title,
                style: buttonStyle,
              ),
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
