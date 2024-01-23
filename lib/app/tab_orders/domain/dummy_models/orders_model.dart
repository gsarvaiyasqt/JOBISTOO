import 'package:jobisto/utils/common_utils/enums.dart';

import '../../route/order_route.dart';

class OrdersClass{
  String? request;
  String? profilePic;
  String? name;
  String? category;
  num? price;
  String? date;
  JobsServiceData? jobsServiceData;

  OrdersClass({this.request,this.profilePic,this.name,this.category,this.price,this.date,this.jobsServiceData});

  static List<OrdersClass> requestList = [
    OrdersClass(
      request: "Requested for",
      category: "Plumbing",
      price: 50.00,
      jobsServiceData: JobsServiceData(
        jobstype: JOBSTYPE.BUSINESS
      ),
      date: "1 Nov ‘23",
    ),

    OrdersClass(
        request: "Booked for",
        profilePic: "profile_1.png",
        name: "Jabari Osei",
        category: "AC Service",
        price: 45.00,
        jobsServiceData: JobsServiceData(
          jobstype: JOBSTYPE.JOBS,
          statustype: STATUSTYPE.PENDING
        ),
        date: "5 Nov ‘23"
    ),

    OrdersClass(
        request: "Booked for",
        profilePic: "profile_2.png",
        name: "Rox Hardware",
        category: "AC Service",
        price: 99.00,
        jobsServiceData: JobsServiceData(
            jobstype: JOBSTYPE.JOBS,
            statustype: STATUSTYPE.COMPLETED
        ),
        date: "23 Nov ‘23"
    ),

    OrdersClass(
        request: "Requested for",
        category: "Pipe Repairing and Fittings",
        price: 28.00,
        date: "1 Nov ‘23"
    ),

    OrdersClass(
        request: "Requested for",
        category: "Cleaning",
        price: 59.00,
        date: "1 Nov ‘23"
    ),

    OrdersClass(
        request: "Requested for",
        category: "Pipe Repairing and Fittings",
        price: 99.00,
        date: "1 Nov ‘23"
    ),

    OrdersClass(
        request: "Booked for",
        profilePic: "profile_1.png",
        name: "Jabari Osei",
        category: "AC Service",
        price: 45.00,
        date: "5 Nov ‘23"
    ),

    OrdersClass(
        request: "Booked for",
        profilePic: "profile_2.png",
        name: "Rox Hardware",
        category: "AC Service",
        price: 99.00,
        date: "23 Nov ‘23"
    ),


  ];
}