class Space {
  int id;
  String name;
  String imageUrl;
  int price;
  String city;
  String country;
  int rating;
  String address;
  String phone;
  String mapUrl;
  List photos;
  int numberOfKitchens;
  int numberOfBedrooms;
  int numberOfCupboards;

  Space(
      {this.id,
      this.name,
      this.imageUrl,
      this.price,
      this.city,
      this.country,
      this.rating,
      this.address,
      this.phone,
      this.mapUrl,
      this.numberOfKitchens,
      this.numberOfBedrooms,
      this.numberOfCupboards,
      this.photos});

  Space.fromJson(json) {
    id = json['id'];
    name = json['name'];
    imageUrl = json['image_url'];
    price = json['price'];
    city = json['city'];
    country = json['country'];
    rating = json['rating'];
    address = json['address'];
    phone = json['phone'];
    mapUrl = json['map_url'];
    numberOfKitchens = json['number_of_kitchens'];
    numberOfBedrooms = json['number_of_bedrooms'];
    numberOfCupboards = json['number_of_cupboards'];
    photos = json['photos'];
  }

//   toJson() {
//     return {
//       'id': id,
//       'name': name,
//       'imageUrl': imageUrl,
//       'price': price,
//       'city': city,
//       'country': country,
//       'rating': rating,
//       'address': address,
//       'phone': phone,
//       'mapUrl': mapUrl,
//       'numberOfKitchens': numberOfKitchens,
//       'numberOfBedrooms': numberOfBedrooms,
//       'numberOfCupboards': numberOfCupboards,
//       'photos': photos,
//     };
//   }
}
