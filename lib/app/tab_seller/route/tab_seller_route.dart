import 'package:flutter/cupertino.dart';
import 'package:jobisto/app/tab_seller/view/job_details_screen.dart';
import 'package:jobisto/app/tab_seller/view/manage_job_screen.dart';

class TabSellerRoute{

  static String manageJobScreenRoute = "/manageJobRoute";
  static String jobDetailsScreenRoute = "/manageJobDetailsRoute";

  static Widget get manageJobScreenChild => const ManageJobsScreen();
  static Widget get jobDetailsChild => const JobDetailsScreen();

  static goToManageJobPage(BuildContext context){
    Navigator.of(context).pushNamed(manageJobScreenRoute);
  }

  static goToJobDetailsPage(BuildContext context){
    Navigator.of(context).pushNamed(jobDetailsScreenRoute);
  }
}