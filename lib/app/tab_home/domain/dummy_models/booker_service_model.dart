class BookServiceClass{
  String? profilePic;
  String? name;
  num? price;
  num? review;

  BookServiceClass({this.profilePic,this.name,this.price, this.review});
}

List<BookServiceClass> bookServiceList = [
  BookServiceClass(
    name: "Rox Hardware",
    profilePic: "/profile_1.png",
    price: 50.00,
    review: 3.5
  ),

  BookServiceClass(
      name: "Jabari Osei",
      profilePic: "/profile_2.png",
      price: 45.00,
      review: 4.5
  ),

  BookServiceClass(
      name: "Max Sales & Services",
      profilePic: "/profile_1.png",
      price: 50.00,
      review: 5.0
  ),

  BookServiceClass(
      name: "Jabari Osei",
      profilePic: "/profile_2.png",
      price: 45.00,
      review: 5.0
  ),

  BookServiceClass(
      name: "Max Sales & Services",
      profilePic: "/profile_1.png",
      price: 50.00,
      review: 2.0
  ),
];