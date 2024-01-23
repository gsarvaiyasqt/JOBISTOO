class SkillsModel{

  String? skill;
  String? rating;

  SkillsModel({this.skill,this.rating});

  static List<SkillsModel> skillsList = [
    SkillsModel(skill: "Hardware",rating: "4.2"),
    SkillsModel(skill: "Plumbing",rating: "4.5"),
  ];


  static List<String> serviceList = [
    "Services","Products"
  ];



}