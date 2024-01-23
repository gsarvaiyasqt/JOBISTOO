class JobDetailsModel{
  String? icon;
  String? firstText;
  String? secondText;

  JobDetailsModel({this.icon,this.firstText,this.secondText});

  static List<JobDetailsModel> jobDetailsList = [
    JobDetailsModel(
      icon: "/time_clock.svg",
      firstText: "Duration",
      secondText: "3 days"
    ),

    JobDetailsModel(
      icon: "/calender.svg",
      firstText: "Due Date",
      secondText: "12/20/2023"
    ),

    JobDetailsModel(
      icon: "/monetization.svg",
      firstText: "Amount/ Budget",
      secondText: "\$50.00"
    ),

    JobDetailsModel(
      icon: "/link.svg",
      firstText: "Cover Letter"
    )
  ];
}