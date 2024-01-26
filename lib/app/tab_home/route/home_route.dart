
import 'package:flutter/cupertino.dart';
import 'package:jobisto/app/tab_home/components/portfolio_home_paint.dart';
import 'package:jobisto/app/tab_home/view/book_service_details_screen.dart';
import 'package:jobisto/app/tab_home/view/book_service_screen.dart';
import 'package:jobisto/app/tab_home/view/create_job_screen.dart';
import 'package:jobisto/app/tab_home/view/job_confirm_screen.dart';
import 'package:jobisto/app/tab_home/view/my_jobisto_profile_screen.dart';
import 'package:jobisto/app/tab_home/view/requirement_screen.dart';
import 'package:jobisto/app/tab_home/view/take_the_job_screen.dart';
import 'package:jobisto/app/tab_home/view/top_job_details_screen.dart';

class TabHomeRoute{

  static String topJobDetailsRoute = "/topJobDetailsRoute";
  static String bookServiceDetailsRoute = "/bookServiceDetailsRoute";
  static String bookServiceRoute = "/bookServiceRoute";
  static String myJobistoProfileRoute = "/myJobistoProfileRoute";
  static String createJobScreenRoute = "/createJobRoute";
  static String requirementScreenRoute = "/requirementRoute";
  static String takeTheJobScreenRoute = "/takeTheJobScreenRoute";
  static String jobConfirmedScreenRoute = "/jobConfirmedScreenRoute";
  static String portfolioHomePaintRoute = "/portfolioHomePaintRoute";

  static Widget get topJobDetailsChild => const TopJobDetailsScreen();
  static Widget get bookServiceDetailsChild => const BookServiceDetailsScreen();
  static Widget get bookServiceChild => const BookServiceScreen();
  static Widget get myJobistoProfileChild => const MyJobistoProfile();
  static Widget get createJobScreenChild => const CreateJobScreen();
  static Widget get requirementScreenChild => const RequirementScreen();
  static Widget get takeTheJobScreenChild => const TakeTheJobScreen();
  static Widget get jobConfirmedScreenChild => const JobConfirmScreen();
  static Widget get portfolioHomePaintChild => PortfolioHomePaint();


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

  static goToCreateJobPage(BuildContext context){
    Navigator.of(context).pushNamed(createJobScreenRoute);
  }

  static goToRequirementPage(BuildContext context){
    Navigator.of(context).pushNamed(requirementScreenRoute);
  }

  static goToTakeTheJobPage(BuildContext context){
    Navigator.of(context).pushNamed(takeTheJobScreenRoute);
  }

  static goToJobConfirmedPage(BuildContext context){
    Navigator.of(context).pushNamed(jobConfirmedScreenRoute);
  }

  static goToPortfolioHomePaintPage(BuildContext context){
    Navigator.of(context).pushNamed(portfolioHomePaintRoute);
  }
}