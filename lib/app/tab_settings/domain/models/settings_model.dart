class SettingsClass{

  String? suffixIcon;
  String? name;

  SettingsClass({this.suffixIcon,this.name});

  static List<SettingsClass> settingsList = [
    SettingsClass(
      suffixIcon: "/become_a_jobber.svg",
      name: "Become a Jobber"
    ),

    SettingsClass(
      suffixIcon: "/my_jobs.svg",
      name: "My JOBs"
    ),

    SettingsClass(
      suffixIcon: "/privacy_policy.svg",
      name: "Terms & Conditions"
    ),

    SettingsClass(
        suffixIcon: "/privacy_policy.svg",
        name: "Privacy Policy"
    )
  ];
}