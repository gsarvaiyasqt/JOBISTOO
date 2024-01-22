class PlumbingRequestModel{

  String? reqText;
  String? imageUrl;

  PlumbingRequestModel({this.imageUrl,this.reqText});

  static List<PlumbingRequestModel> plumbingReqList = [
    PlumbingRequestModel(reqText: "Rox Hardware",imageUrl: "profile_1.png"),
    PlumbingRequestModel(reqText: "Jabari Osei",imageUrl: "profile_2.png"),
  ];



}