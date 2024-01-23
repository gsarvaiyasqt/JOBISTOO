import '../../../../utils/utils.dart';

class PortfoliosModel {

  String? icon;
  String? point;
  String? count;
  String? date;

  PortfoliosModel({this.icon,this.count,this.date,this.point});


 static List<PortfoliosModel>  portfoliosList = [

   PortfoliosModel(icon: "$iconPath/paint_roller.svg",count: "50.00",date: "1 Nov ‘23",point: "Home Paint"),
   PortfoliosModel(icon: "$iconPath/water_faucet.svg",count: "35.00",date: "2 Nov ‘23",point: "Tap Repairing"),

 ];


}