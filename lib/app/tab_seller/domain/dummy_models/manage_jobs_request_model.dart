class ManageJobsRequestClass{
  String? applied;
  String? profilePic;
  String? name;
  String? category;
  num? serviceNum;
  num? productNum;
  String? location;
  String? date;
  num? price;

  ManageJobsRequestClass({this.applied,this.profilePic,this.location ,this.name,this.category,this.date,this.serviceNum,this.productNum,this.price});

  static List<ManageJobsRequestClass> manageJobsRequestList = [
    ManageJobsRequestClass(
        applied: "Applied for",
        category: "Plumbing",
        price: 50.00,
        date: "1 Nov ‘23"
    ),

    ManageJobsRequestClass(
        applied: "JOB from",
        profilePic: "profile_1.png",
        name: "Jabari Osei",
        serviceNum: 1,
        productNum: 2,
        location: "Nairobi, Kenya",
        date: "11/25/2023"
    ),

    ManageJobsRequestClass(
        applied: "JOB from",
        profilePic: "profile_2.png",
        name: "Rox Hardware",
        productNum: 5,
        serviceNum: 3,
        location: "Nairobi, Kenya",
        date: "11/25/2023"
    ),


  ];
}