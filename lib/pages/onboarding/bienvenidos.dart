import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:onboarding/pages/registration/1.dart';
import 'package:onboarding/widgets/button_green.dart';
import 'package:onboarding/widgets/button_purple.dart';
import 'package:onboarding/widgets/card_boarding.dart';
import 'package:onboarding/widgets/footer.dart';
import 'package:onboarding/widgets/logo.dart';

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
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Registration(),
                          ),
                        );
                      },
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
