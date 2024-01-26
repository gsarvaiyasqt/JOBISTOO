import 'package:flutter/material.dart';
import 'package:jobisto/app/tab_orders/view/job_talk_page.dart';

import '../../../utils/common_utils/enums.dart';
import '../view/my_jobber_profile_page.dart';
import '../view/order_detail_screen.dart';

class TabOrderRoute{

  static String orderDetailRoute = '/order_detail_route';

  static String jobberProfileRoute = '/jobber_profile_route';

  static String jobberTalkRoute = '/jobber_talk_route';

  static Widget get becomeAJobberChild => const OrderDetailScreen();

  static Widget get myJobberProfileChild => const MyJobberProfilePage();

  static Widget get jobberTalkChild => const JOBTalkPage();

  static goToBecomeAJobberPage(BuildContext context,[JobsServiceData? jobsServiceData]){
    Navigator.of(context).pushNamed(orderDetailRoute,arguments: jobsServiceData);
  }

  static goToJobberProfilePage(BuildContext context,[JobsServiceData? jobsServiceData]){
    Navigator.of(context).pushNamed(jobberProfileRoute,arguments: jobsServiceData);
  }

  static goToJobTalkPage(BuildContext context){
    Navigator.of(context).pushNamed(jobberTalkRoute);
  }

}
class JobsServiceData{

  String? image;
  JOBSTYPE? jobstype;
  STATUSTYPE? statustype;
  String? text1;
  String? text2;
  String? category;
  JobsServiceData({this.statustype,this.jobstype,this.category,this.image,this.text1,this.text2});

}




