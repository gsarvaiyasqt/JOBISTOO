
import 'package:flutter/cupertino.dart';
import 'package:jobisto/app/tab_home/view/book_service_details_screen.dart';
import 'package:jobisto/app/tab_home/view/book_service_screen.dart';
import 'package:jobisto/app/tab_home/view/my_jobisto_profile_screen.dart';
import 'package:jobisto/app/tab_home/view/top_job_details_screen.dart';

class TabHomeRoute{

  static String topJobDetailsRoute = "/topJobDetailsRoute";
  static String bookServiceDetailsRoute = "/bookServiceDetailsRoute";
  static String bookServiceRoute = "/bookServiceRoute";
  static String myJobistoProfileRoute = "/myJobistoProfileRoute";

  static Widget get topJobDetailsChild => const TopJobDetailsScreen();
  static Widget get bookServiceDetailsChild => const BookServiceDetailsScreen();
  static Widget get bookServiceChild => const BookServiceScreen();
  static Widget get myJobistoProfileChild => const MyJobistoProfile();

  static goToTopJobDetailsPage(BuildContext context){
    Navigator.of(context).pushNamed(topJobDetailsRoute);
  }

  static goToBookServiceDetailsPage(BuildContext context){
    Navigator.of(context).pushNamed(bookServiceDetailsRoute);
  }

  static goToBookServicePage(BuildContext context){
    Navigator.of(context).pushNamed(bookServiceRoute);
  }

  static goToMyJobistoProfilePage(BuildContext context){
    Navigator.of(context).pushNamed(myJobistoProfileRoute);
  }
}