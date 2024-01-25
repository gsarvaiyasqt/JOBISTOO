List<String> countyList = [
  "india","africa","Usa"
];

List<String> eductionList = [
  "Higher Education","Primary School","Bachelor"
];

List<String> filterList = [
  "All","Plumbing","Saloon","Color"
];

List<String> timeList = [
  "Day","Month","Year","week"
];


class JobsPortfolioClass{
  String? title;
  num? price;
  String? date;
  bool isSelected;

  JobsPortfolioClass({this.title,this.price,this.date,this.isSelected = false});
}

List<JobsPortfolioClass> portfolioList = [
  JobsPortfolioClass(
      title: "Home Paint",
      price: 50.00,
      date: "1 Nov ‘23",
      isSelected: false
  ),

  JobsPortfolioClass(
      title: "Tap Repairing",
      price: 40.00,
      date: "1 Nov ‘23",
      isSelected: false
  ),

  JobsPortfolioClass(
      title: "AC Service",
      price: 32.00,
      date: "1 Nov ‘23",
      isSelected: false
  ),

  JobsPortfolioClass(
      title: "Water Pipe Installation",
      price: 21.00,
      date: "1 Nov ‘23",
      isSelected: false
  ),
];




