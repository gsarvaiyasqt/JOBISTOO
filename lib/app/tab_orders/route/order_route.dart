import 'package:flutter/material.dart';

import '../view/order_detail_screen.dart';

class TabOrderRoute{

  static String orderDetailRoute = '/order_detail_route';

  static Widget get becomeAJobberChild => const OrderDetailScreen();

  static goToBecomeAJobberPage(BuildContext context){
    Navigator.of(context).pushNamed(orderDetailRoute);
  }
}


