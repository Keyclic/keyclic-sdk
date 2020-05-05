part of keyclic_sdk_api.api;

class PublicationEmbedded {
  PublicationEmbedded({
    this.author,
    this.place,
  });

  factory PublicationEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PublicationEmbedded(
      author: Person.fromJson(json['author']),
      place: Place.fromJson(json['place']),
    );
  }

  Person author;

  Place place;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PublicationEmbedded &&
        runtimeType == other.runtimeType &&
        author == other.author &&
        place == other.place;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= author?.hashCode ?? 0;
    hashCode ^= place?.hashCode ?? 0;

    return hashCode;
  }

  static List<PublicationEmbedded> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => PublicationEmbedded.fromJson(value))
            ?.toList() ??
        <PublicationEmbedded>[];
  }

  static Map<String, PublicationEmbedded> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, PublicationEmbedded>((String key, dynamic value) {
          return MapEntry(key, PublicationEmbedded.fromJson(value));
        }) ??
        <String, PublicationEmbedded>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (author != null) 'author': author.toJson(),
      if (place != null) 'place': place.toJson(),
    };
  }

  @override
  String toString() {
    return 'PublicationEmbedded[author=$author, place=$place, ]';
  }
}
