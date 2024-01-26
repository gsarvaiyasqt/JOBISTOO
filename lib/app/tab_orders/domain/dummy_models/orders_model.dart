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
        jobstype: JOBSTYPE.BUSINESS,
        image: "assets/images/icons/plumbing_profile.svg"
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
          statustype: STATUSTYPE.PENDING,
          image: "assets/images/dummy_img/ac_image.svg",
          text1: "I DO ELECTRICITY",
          text2: "Ke teng"
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
            image: "assets/images/dummy_img/ac_image.svg",
            jobstype: JOBSTYPE.JOBS,
            statustype: STATUSTYPE.COMPLETED,
            text1: "I DO ELECTRICITY",
            text2: "Ke teng"
        ),
        date: "23 Nov ‘23"
    ),

    OrdersClass(
        request: "Requested for",
        category: "Pipe Repairing and Fittings",
        jobsServiceData: JobsServiceData(
            jobstype: JOBSTYPE.JOBS,
            statustype: STATUSTYPE.COMPLETED,
            image: "assets/images/icons/plumbing_profile.svg"
        ),
        price: 28.00,
        date: "1 Nov ‘23"
    ),

    OrdersClass(
        request: "Requested for",
        category: "Cleaning",
        jobsServiceData: JobsServiceData(
            jobstype: JOBSTYPE.JOBS,
            statustype: STATUSTYPE.COMPLETED,
            image: "assets/images/dummy_img/ac_image.svg",
            text1: "I DO ELECTRICITY",
            text2: "Ke teng"

        ),
        price: 59.00,
        date: "1 Nov ‘23"
    ),

    OrdersClass(
        request: "Requested for",
        jobsServiceData: JobsServiceData(
            jobstype: JOBSTYPE.JOBS,
            statustype: STATUSTYPE.COMPLETED,
            image: "assets/images/icons/plumbing_profile.svg",
            text1: "I DO ELECTRICITY",
            text2: "Ke teng"
        ),
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
        jobsServiceData: JobsServiceData(
            jobstype: JOBSTYPE.JOBS,
            statustype: STATUSTYPE.COMPLETED,
            image: "assets/images/dummy_img/ac_image.svg",
            text1: "I DO ELECTRICITY",
            text2: "Ke teng"

        ),
        date: "5 Nov ‘23"
    ),

    OrdersClass(
        request: "Booked for",
        profilePic: "profile_2.png",
        name: "Rox Hardware",
        category: "AC Service",
        jobsServiceData: JobsServiceData(
            jobstype: JOBSTYPE.JOBS,
            statustype: STATUSTYPE.COMPLETED,
            image: "assets/images/icons/plumbing_profile.svg"
        ),
        price: 99.00,
        date: "23 Nov ‘23"
    ),


  ];
}