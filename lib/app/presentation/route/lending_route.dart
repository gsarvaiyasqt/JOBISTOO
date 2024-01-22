import 'package:flutter/cupertino.dart';
import '../view/intro_screen.dart';

class PresentationRoute{

  static String introRoute = "/";

  static Widget get introChild => const IntroScreen();

  static goToIntroPage(BuildContext context){
    Navigator.of(context).pushNamed(introRoute);
  }
}