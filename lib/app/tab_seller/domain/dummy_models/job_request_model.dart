class ServiceClass{
  String? img;
  String? serviceName;
  num? price;
  String? description;

  ServiceClass({this.img,this.serviceName,this.price,this.description});

  static List<ServiceClass> serviceList = [
    ServiceClass(
      img: "ac_repair.png",
      serviceName: "Plumbing System Installation",
      price: 50.00,
      description: "Setting up water supply lines, drainage systems, and fixtures..."
    ),

    ServiceClass(
        img: "pipe_repair.png",
        serviceName: "Plumbing System Installation",
        price: 50.00,
        description: "Setting up water supply lines, drainage systems, and fixtures..."
    ),
  ];


}