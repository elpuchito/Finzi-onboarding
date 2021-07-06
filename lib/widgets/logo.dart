import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

String logo = 'assets/images/Fondo.svg';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: SvgPicture.asset(logo, semanticsLabel: 'Logo'),
    );
  }
}
