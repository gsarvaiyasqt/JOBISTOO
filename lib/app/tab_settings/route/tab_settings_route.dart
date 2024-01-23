import 'package:flutter/cupertino.dart';
import 'package:jobisto/app/tab_settings/view/become_a_jobber_screen.dart';
import 'package:jobisto/app/menu/view/become_jobber/jobber_business.dart';
import 'package:jobisto/app/menu/view/become_jobber/jobber_service.dart';

class TabSettingsRoute{

  static String becomeAJobberRoute = '/becomeAJobber';
  static String jobberServiceRoute = '/jobberService';
  static String jobberBusinessRoute = '/jobberBusiness';

  static Widget get becomeAJobberChild => const BecomeAJobberScreen();
  static Widget get jobberServiceChild => const JobberServicesScreen();
  static Widget get jobberBusinessChild => const JobberBusinessScreen();

  static goToBecomeAJobberPage(BuildContext context){
    Navigator.of(context).pushNamed(becomeAJobberRoute);
  }

  static goToJobberServicePage(BuildContext context){
    Navigator.of(context).pushNamed(jobberServiceRoute);
  }

  static goToJobberBusinessPage(BuildContext context){
    Navigator.of(context).pushNamed(jobberBusinessRoute);
  }
}