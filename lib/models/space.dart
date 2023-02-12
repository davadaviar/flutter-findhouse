class Space {
  int id;
  String imageUrl;
  String name;
  int rating;
  String city;
  String country;
  double price;
  String address;
  String phone;
  String mapUrl;
  List photos;
  int numberOfKitchens;
  int numberOfBedRooms;
  int numberOfCupboards;

  Space({
    required this.id,
    required this.imageUrl,
    required this.name,
    required this.country,
    required this.rating,
    required this.city,
    required this.price,
    required this.address,
    required this.phone,
    required this.mapUrl,
    required this.photos,
    required this.numberOfKitchens,
    required this.numberOfBedRooms,
    required this.numberOfCupboards,
  });

  Space.fromJson(json){
    id = json['id'];
    imageUrl = json['image_url'];
    name = json['name'];
    country = json['country'];
    rating = json['rating'];
    city = json['city'];
    price = json['price'];
    address = json['address'];
    phone = json['phone'];
    mapUrl = json['map_url'];
    photos = json['photos'];
    numberOfKitchens = json['number_of_kitchens'];
    numberOfBedRooms = json['number_of_bedrooms'];
    numberOfCupboards = json['number_of_cupboards'];
  }
}
