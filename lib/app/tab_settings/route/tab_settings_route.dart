import 'package:flutter/cupertino.dart';
import 'package:jobisto/app/tab_settings/view/become_a_jobber_screen.dart';

class TabSettingsRoute{

  static String becomeAJobberRoute = '/becomeAJobber';

  static Widget get becomeAJobberChild => const BecomeAJobberScreen();

  static goToBecomeAJobberPage(BuildContext context){
    Navigator.of(context).pushNamed(becomeAJobberRoute);
  }
}