import 'package:flutter/cupertino.dart';
import 'package:jobisto/app/tab_seller/view/job_details_screen.dart';
import 'package:jobisto/app/tab_seller/view/job_request_screen.dart';
import 'package:jobisto/app/tab_seller/view/manage_job_screen.dart';
import 'package:jobisto/app/tab_seller/view/managed_jobs_sub_details_screen.dart';

class TabSellerRoute{

  static String manageJobScreenRoute = "/manageJobRoute";
  static String jobDetailsScreenRoute = "/manageJobDetailsRoute";
  static String jobRequestScreenRoute = "/jobRequestScreenRoute";
  static String managedJobSubDetailsScreenRoute = "/managedJobReqSubDetailsScreen";

  static Widget get manageJobScreenChild => const ManageJobsScreen();
  static Widget get jobDetailsChild => const JobDetailsScreen();
  static Widget get jobRequestScreenChild => const JobRequestScreen();
  static Widget get managedJobSubDetailsChild => const ManagedJobsSubDetailsScreen();

  static goToManageJobPage(BuildContext context){
    Navigator.of(context).pushNamed(manageJobScreenRoute);
  }

  static goToJobDetailsPage(BuildContext context){
    Navigator.of(context).pushNamed(jobDetailsScreenRoute);
  }

  static goToJobRequestPage(BuildContext context){
    Navigator.of(context).pushNamed(jobRequestScreenRoute);
  }

  static goToManagedJobSubDetailsPage(BuildContext context){
    Navigator.of(context).pushNamed(managedJobSubDetailsScreenRoute);
  }
}