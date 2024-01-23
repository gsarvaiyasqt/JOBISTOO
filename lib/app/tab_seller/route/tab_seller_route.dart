import 'package:flutter/cupertino.dart';
import 'package:jobisto/app/tab_seller/view/job_details_screen.dart';
import 'package:jobisto/app/tab_seller/view/job_request_screen.dart';
import 'package:jobisto/app/tab_seller/view/jobs_apply_screen.dart';
import 'package:jobisto/app/tab_seller/view/manage_job_screen.dart';
import 'package:jobisto/app/tab_seller/view/managed_jobs_sub_details_screen.dart';
import 'package:jobisto/app/tab_seller/view/portfolio_screen.dart';

class TabSellerRoute{

  static String manageJobScreenRoute = "/manageJobRoute";
  static String jobDetailsScreenRoute = "/manageJobDetailsRoute";
  static String jobRequestScreenRoute = "/jobRequestScreenRoute";
  static String managedJobSubDetailsScreenRoute = "/managedJobReqSubDetailsScreen";
  static String jobsApplyScreenRoute = "/jobsApplyScreen";
  static String portfolioScreenRoute = "/portfolioScreen";

  static Widget get manageJobScreenChild => const ManageJobsScreen();
  static Widget get jobDetailsChild => const JobDetailsScreen();
  static Widget get jobRequestScreenChild => const JobRequestScreen();
  static Widget get managedJobSubDetailsChild => const ManagedJobsSubDetailsScreen();
  static Widget get jobsApplyScreenChild => const JobsApplyScreen();
  static Widget get portfolioScreenChild => const PortfolioScreen();

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

  static goToJobsApplyPage(BuildContext context){
    Navigator.of(context).pushNamed(jobsApplyScreenRoute);
  }

  static goToPortfolioPage(BuildContext context){
    Navigator.of(context).pushNamed(portfolioScreenRoute);
  }
}