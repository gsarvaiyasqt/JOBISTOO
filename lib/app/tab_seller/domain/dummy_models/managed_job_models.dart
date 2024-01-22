class ManagedJobsClass{
  String? jobName;
  String? description;
  String? profilePic;
  String? name;
  num? price;
  int? days;

  ManagedJobsClass({this.jobName,this.description,this.profilePic,this.name,this.price,this.days});

  static List<ManagedJobsClass> managedJobsListCard = [
    ManagedJobsClass(
      jobName: "Installing Toilet Seat",
      description: "Skilled professional needed for installing toilet seat. Proficient in assembly, ensuring proper alignment and stability.",
      profilePic: "profile_1.png",
      name: "Jabari Osei",
      price: 50.00,
      days: 30
    ),

    ManagedJobsClass(
        jobName: "AC Servicing & Repairing",
        description: "Skilled professional needed for installing toilet seat. Proficient in assembly, ensuring proper alignment and stability.",
        profilePic: "profile_2.png",
        name: "Tariq Malik",
        price: 30.00,
        days: 15
    ),

    ManagedJobsClass(
        jobName: "Installing Toilet Seat",
        description: "Skilled professional needed for installing toilet seat. Proficient in assembly, ensuring proper alignment and stability.",
        profilePic: "profile_1.png",
        name: "Jabari Osei",
        price: 45.00,
        days: 30
    ),

    ManagedJobsClass(
        jobName: "AC Servicing & Repairing",
        description: "Skilled professional needed for installing toilet seat. Proficient in assembly, ensuring proper alignment and stability.",
        profilePic: "profile_2.png",
        name: "Tariq Malik",
        price: 30.00,
        days: 15
    )
  ];
}

