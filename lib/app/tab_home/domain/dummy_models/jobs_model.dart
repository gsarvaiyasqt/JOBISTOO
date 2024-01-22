class JobsClass{
  String? icon;
  String? text;

  JobsClass({this.icon,this.text});

  static List<JobsClass> jobsList = [
    JobsClass(
        icon: "/plumbing.svg",
        text: "Plumbing"
    ),

    JobsClass(
        icon: "/saloon.svg",
        text: "Saloon"
    ),

    JobsClass(
        icon: "/cleaning.svg",
        text: "Cleaning"
    ),

    JobsClass(
        icon: "/cleaning.svg",
        text: "Cleaning"
    ),

    JobsClass(
        icon: "/cleaning.svg",
        text: "Cleaning"
    ),

    JobsClass(
        icon: "/ac_service.svg",
        text: "AC Service"
    ),


  ];

  static List<JobsClass> mostBookedJobList = [

    JobsClass(
        icon: "/pipe_repair.png",
        text: "Door lock\nrepairing"
    ),

    JobsClass(
        icon: "/ac_repair.png",
        text: "AC repair"
    ),

    JobsClass(
        icon: "/home_paint.png",
        text: "Cleaning"
    )

  ];

  static List<JobsClass> quickHomeRepairs = [

    JobsClass(
        icon: "/door_repair.png",
        text: "Water pipe\nleakage"
    ),

    JobsClass(
        icon: "/electric.png",
        text: "Switchboard\nrepairing"
    ),

    JobsClass(
        icon: "/home_paint.png",
        text: "Cleaning"
    )

  ];


}