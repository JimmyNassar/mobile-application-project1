List<Car> cars = [
  Car("Mustang Dark Horse", "images/mustang.jpg", 1),
  Car("Lamborghini Huracan", "images/huracan.jpg", 2.5),
  Car("Bugatti Veyron", "images/bugatti.jpg", 3),
  Car("Porsche 911 Turbo S", "images/porsche911.jpg", 1),
  Car("Koenigsegg Gemera", "images/gemera.jpg", 2),
  Car("McLaren GT", "images/mclaren.jpg", 1.5),
];

List<String> cities = [
  "Amioun",
  "Batroun",
  "Beirut",
  "Tripoli",
  "Zgharta",
];

class Car {
  String name;
  double price;
  String img;
  double km = 4;
  bool back = false;

  Car(
    this.name,
    this.img,
    this.price,
  );

  String totalPr() {
    if(back){
      double pr = km * price * 1.5;
    return pr.toStringAsFixed(2);}
    else {double pr = km * price;
    return pr.toStringAsFixed(2);

    }
  }

  @override
  String toString() {
    return """price/km: \$$price
  Total Km: $km
  Total Price: \$${totalPr()}
  """;
  }
}
