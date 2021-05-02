class PublicPlace {
  final int placeRating, numberOfReviews;
  final String placeId, placeImage, placeName, website, description, adminId, location;

  const PublicPlace({
    this.placeRating,
    this.numberOfReviews,
    this.placeId,
    this.placeImage,
    this.placeName,
    this.website,
    this.description,
    this.adminId,
    this.location
  });

  factory PublicPlace.fromMap(Map<String, dynamic> map) {
    return new PublicPlace(
      placeRating: map['placeRating']!=null?int.tryParse(map['placeRating']):null,
      numberOfReviews: map['numberOfReviews']!=null?int.tryParse(map['numberOfReviews']):null,
      placeId: map['placeId'] as String,
      location: map['location'],
      placeImage: map['placeImage'] as String,
      placeName: map['placeName'] as String,
      website: map['website'] as String,
      description: map['description'] as String,
      adminId: map['adminId'] as String,
    );
  }

  Map<String, String> toMap() {
    return {
      'placeRating': placeRating.toString(),
      'numberOfReviews': numberOfReviews.toString(),
      'placeId': placeId,
      'placeImage': placeImage,
      'placeName': placeName,
      'website': website,
      'description': description,
      'adminId': adminId,
      'location': location,
    };
  }

  PublicPlace copyWith({
    int placeRating,
    int numberOfReviews,
    String placeId,
    String placeImage,
    String placeName,
    String website,
    String description,
    String adminId,
    String location,
  }) {
    return  PublicPlace(
      location: location?? this.location,
      placeRating: placeRating ?? this.placeRating,
      numberOfReviews: numberOfReviews ?? this.numberOfReviews,
      placeId: placeId ?? this.placeId,
      placeImage: placeImage ?? this.placeImage,
      placeName: placeName ?? this.placeName,
      website: website ?? this.website,
      description: description ?? this.description,
      adminId: adminId ?? this.adminId,
    );
  }
}
