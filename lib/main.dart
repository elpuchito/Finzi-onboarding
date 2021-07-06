import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:onboarding/pages/onboarding/page1.dart';
import 'package:onboarding/pages/onboarding/Bienvenidos.dart';
import 'package:onboarding/pages/registration/1.dart';
import 'package:onboarding/widgets/card_boarding.dart';
import 'widgets/button_green.dart';
import 'widgets/footer.dart';
import 'widgets/logo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Page1(),
    );
  }
}
