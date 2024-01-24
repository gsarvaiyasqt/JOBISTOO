class PortfolioClass{
  String? title;
  num? price;
  String? date;
  bool isSelected;

  PortfolioClass({this.title,this.price,this.date,this.isSelected = false});
}

List<PortfolioClass> portfolioList = [
  PortfolioClass(
    title: "Home Paint",
    price: 50.00,
    date: "1 Nov ‘23",
    isSelected: false
  ),

  PortfolioClass(
      title: "Tap Repairing",
      price: 40.00,
      date: "1 Nov ‘23",
      isSelected: false
  ),

  PortfolioClass(
      title: "AC Service",
      price: 32.00,
      date: "1 Nov ‘23",
      isSelected: false
  ),

  PortfolioClass(
      title: "Water Pipe Installation",
      price: 21.00,
      date: "1 Nov ‘23",
      isSelected: false
  ),
];

