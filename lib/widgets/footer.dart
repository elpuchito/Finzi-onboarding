import 'package:flutter/material.dart';

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
