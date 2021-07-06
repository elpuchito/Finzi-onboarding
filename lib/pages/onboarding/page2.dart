import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:onboarding/pages/onboarding/Bienvenidos.dart';
import 'package:onboarding/pages/onboarding/page3.dart';
import 'package:onboarding/widgets/button_green.dart';
import 'package:onboarding/widgets/card_boarding.dart';
import 'package:onboarding/widgets/footer.dart';
import 'package:onboarding/widgets/logo.dart';
import 'package:transition/transition.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

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
                    title: '¡Ahorra!',
                    isBienvenidoPage: false,
                    button2: Text(''),
                    button: ButtonGreen(
                        onTap: () {
                          Navigator.push(
                              context,
                              Transition(
                                  child: Page3(),
                                  transitionEffect:
                                      TransitionEffect.RIGHT_TO_LEFT));
                        },
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
