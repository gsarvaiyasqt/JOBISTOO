import 'package:flutter/material.dart';

import '../../../utils/common_utils/enums.dart';
import '../view/my_jobber_profile_page.dart';
import '../view/order_detail_screen.dart';

class TabOrderRoute{

  static String orderDetailRoute = '/order_detail_route';

  static String jobberProfileRoute = '/jobber_profile_route';

  static Widget get becomeAJobberChild => const OrderDetailScreen();

  static Widget get myJobberProfileChild => const MyJobberProfilePage();

  static goToBecomeAJobberPage(BuildContext context,[JobsServiceData? jobsServiceData]){
    Navigator.of(context).pushNamed(orderDetailRoute,arguments: jobsServiceData);
  }

  static goToJobberProfilePage(BuildContext context){
    Navigator.of(context).pushNamed(jobberProfileRoute);
  }

}
class JobsServiceData{

  JOBSTYPE? jobstype;
  STATUSTYPE? statustype;
  JobsServiceData({this.statustype,this.jobstype});


}


