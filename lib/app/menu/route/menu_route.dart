import 'package:flutter/cupertino.dart';
import 'package:jobisto/app/menu/view/become_jobber/jobber_business.dart';
import 'package:jobisto/app/menu/view/become_jobber/jobber_service.dart';
import 'package:jobisto/app/menu/view/manage_seller/menu_seller_screen.dart';
import 'package:jobisto/app/menu/view/manage_seller/my_jobisto_screen.dart';
import '../view/become_jobber/become_a_jobber_screen.dart';
import '../view/manage_business/menu_business_screen.dart';

class MenuRoute{

  static String becomeAJobberRoute = '/becomeAJobber';
  static String jobberServiceRoute = '/jobberService';
  static String jobberBusinessRoute = '/jobberBusiness';

  static String menuBusinessRoute = '/menuBusiness';

  static String menuSellerRoute = '/menuSeller';
  static String myJobistoRoute = '/myJobisto';

  static Widget get becomeAJobberChild => const BecomeAJobberScreen();
  static Widget get jobberServiceChild => const JobberServicesScreen();
  static Widget get jobberBusinessChild => const JobberBusinessScreen();

  static Widget get menuBusinessChild => const MenuBusinessScreen();

  static Widget get menuSellerChild => const MenuSellerScreen();
  static Widget get myJobistoChild => const MyJobistoScreen();


  static goToBecomeAJobberPage(BuildContext context){
    Navigator.of(context).pushNamed(becomeAJobberRoute);
  }

  static goToJobberServicePage(BuildContext context){
    Navigator.of(context).pushNamed(jobberServiceRoute);
  }

  static goToJobberBusinessPage(BuildContext context){
    Navigator.of(context).pushNamed(jobberBusinessRoute);
  }

  static goToMenuBusinessPage(BuildContext context){
    Navigator.of(context).pushNamed(menuBusinessRoute);
  }

  static goToMenuSellerPage(BuildContext context){
    Navigator.of(context).pushNamed(menuSellerRoute);
  }

  static goToMyJobistoPage(BuildContext context){
    Navigator.of(context).pushNamed(myJobistoRoute);
  }
}