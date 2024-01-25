import 'package:flutter/cupertino.dart';
import 'package:jobisto/app/menu/view/become_jobber/jobber_business.dart';
import 'package:jobisto/app/menu/view/become_jobber/jobber_service.dart';
import 'package:jobisto/app/menu/view/manage_business/add_product_screen.dart';
import 'package:jobisto/app/menu/view/manage_business/my_business_service.dart';
import 'package:jobisto/app/menu/view/manage_business/my_jobisto_profile.dart';
import 'package:jobisto/app/menu/view/manage_business/my_jobisto_team.dart';
import 'package:jobisto/app/menu/view/manage_business/my_product_screen.dart';
import 'package:jobisto/app/menu/view/manage_seller/add_done_jobs_screen.dart';
import 'package:jobisto/app/menu/view/manage_seller/jobs_done_details.dart';
import 'package:jobisto/app/menu/view/manage_seller/menu_seller_screen.dart';
import 'package:jobisto/app/menu/view/manage_seller/my_done_jobs.dart';
import 'package:jobisto/app/menu/view/manage_seller/my_jobisto_screen.dart';
import 'package:jobisto/app/menu/view/manage_seller/my_service_screen.dart';
import '../view/become_jobber/become_a_jobber_screen.dart';
import '../view/manage_business/menu_business_screen.dart';

class MenuRoute{

  static String becomeAJobberRoute = '/becomeAJobber';
  static String jobberServiceRoute = '/jobberService';
  static String jobberBusinessRoute = '/jobberBusiness';

  static String menuBusinessRoute = '/menuBusiness';
  static String myBusinessServiceRoute = '/myBusinessService';
  static String myJobistoProfileRoute = '/myJobistoProfile';
  static String myJobistoTeamRoute = '/myJobistoTeam';
  static String myProductScreenRoute = '/myProductScreen';
  static String addProductScreenRoute = '/addProductScreen';

  static String menuSellerRoute = '/menuSeller';
  static String myJobistoRoute = '/myJobisto';
  static String myServiceRoute = '/myService';
  static String myDoneJobsRoute = '/myDoneJobs';
  static String addDoneJobsRoute = '/addDoneJobs';
  static String jobDoneDetailsRoute = '/jobDoneDetails';

  static Widget get becomeAJobberChild => const BecomeAJobberScreen();
  static Widget get jobberServiceChild => const JobberServicesScreen();
  static Widget get jobberBusinessChild => const JobberBusinessScreen();

  static Widget get menuBusinessChild => const MenuBusinessScreen();
  static Widget get myBusinessServiceChild => const MyBusinessService();
  static Widget get myJobistoProfileChild => const MyJobistoProfile();
  static Widget get myJobistoTeamChild => const MyJobistoTeam();
  static Widget get myProductScreenChild => const MyProductScreen();
  static Widget get addProductScreenChild => const AddProductScreen();

  static Widget get menuSellerChild => const MenuSellerScreen();
  static Widget get myJobistoChild => const MyJobistoScreen();
  static Widget get myServiceChild => const MyServiceScreen();
  static Widget get myDoneJobsChild => const MyDoneJObs();
  static Widget get addDoneJobsChild => const AddDoneJobs();
  static Widget get jobDoneDetailsChild =>  JobDoneDetails();


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

  static goToMyServicePage(BuildContext context){
    Navigator.of(context).pushNamed(myServiceRoute);
  }

  static goToMyDoneJobsPage(BuildContext context){
    Navigator.of(context).pushNamed(myDoneJobsRoute);
  }

  static goToAddDoneJobsPage(BuildContext context){
    Navigator.of(context).pushNamed(addDoneJobsRoute);
  }

  static goToJobDoneDetailsPage(BuildContext context){
    Navigator.of(context).pushNamed(jobDoneDetailsRoute);
  }

  static goToMyBusinessServicePage(BuildContext context){
    Navigator.of(context).pushNamed(myBusinessServiceRoute);
  }

  static goToAddProductScreenPage(BuildContext context){
    Navigator.of(context).pushNamed(addProductScreenRoute);
  }

  static goToMyProductScreenPage(BuildContext context){
    Navigator.of(context).pushNamed(myProductScreenRoute);
  }

  static goToMyJobistoTeamPage(BuildContext context){
    Navigator.of(context).pushNamed(myJobistoTeamRoute);
  }

  static goToMyJobistoProfilePage(BuildContext context){
    Navigator.of(context).pushNamed(myJobistoProfileRoute);
  }
}