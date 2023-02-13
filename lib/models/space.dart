class Space {
  final int id;
  final String imageUrl;
  final String name;
  final int rating;
  final String city;
  final String country;
  final int price;
  final String address;
  final String phone;
  final String mapUrl;
  final List photos;
  final int numberOfKitchens;
  final int numberOfBedRooms;
  final int numberOfCupboards;

  const Space({
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

  factory Space.fromJson(Map<String, dynamic> json) {
    return Space(
      id: json['id'],
      imageUrl: json['image_url'],
      name: json['name'],
      country: json['country'],
      rating: json['rating'],
      city: json['city'],
      price: json['price'],
      address: json['address'],
      phone: json['phone'],
      mapUrl: json['map_url'],
      photos: json['photos'],
      numberOfKitchens: json['number_of_kitchens'],
      numberOfBedRooms: json['number_of_bedrooms'],
      numberOfCupboards: json['number_of_cupboards'],
    );
  }
}
