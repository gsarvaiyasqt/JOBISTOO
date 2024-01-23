import 'package:flutter/cupertino.dart';
import 'package:jobisto/app/tab_settings/view/become_a_jobber_screen.dart';
import 'package:jobisto/app/menu/view/become_jobber/jobber_business.dart';
import 'package:jobisto/app/menu/view/become_jobber/jobber_service.dart';

class MenuRoute{

  static String jobberServiceRoute = '/jobberService';
  static String jobberBusinessRoute = '/jobberBusiness';

  static Widget get jobberServiceChild => const JobberServicesScreen();
  static Widget get jobberBusinessChild => const JobberBusinessScreen();


  static goToJobberServicePage(BuildContext context){
    Navigator.of(context).pushNamed(jobberServiceRoute);
  }

  static goToJobberBusinessPage(BuildContext context){
    Navigator.of(context).pushNamed(jobberBusinessRoute);
  }
}