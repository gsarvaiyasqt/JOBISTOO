import 'package:flutter/material.dart';
import 'package:jobisto/app/auth/view/change_password_screen.dart';
import 'package:jobisto/app/auth/view/forgot_pasword_screen.dart';
import 'package:jobisto/app/auth/view/registration_screen.dart';
import '../view/login_screen.dart';

class AuthRoute{

  static String loginRoute = "/login";
  static String registrationRoute ="/registration";
  static String forgetPasswordRoute = "/forgetPassword";
  static String changePasswordRoute = "/changePassword";

  static Widget get loginChild => const LoginScreen();
  static Widget get registrationChild => const RegistrationScreen();
  static Widget get forgetPasswordChild => const ForgotPasswordScreen();
  static Widget get changePasswordChild => const ChangePasswordScreen();

  static goToLoginPage(BuildContext context) {
    Navigator.of(context).pushNamed(loginRoute);
  }

  static goToRegistrationPage(BuildContext context) {
    Navigator.of(context).pushNamed(registrationRoute);
  }

  static goToForgotPasswordPage(BuildContext context){
    Navigator.of(context).pushNamed(forgetPasswordRoute);
  }

  static goToChangePasswordPage(BuildContext context){
    Navigator.of(context).pushNamed(changePasswordRoute);
  }
}