part of keyclic_sdk_api.api;

class PersonLinks {
  PersonLinks({
    this.image,
    this.self,
  });

  factory PersonLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PersonLinks(
      image: PersonLinksImage.fromJson(json['image']),
      self: PersonLinksSelf.fromJson(json['self']),
    );
  }

  PersonLinksImage image;

  PersonLinksSelf self;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PersonLinks &&
        runtimeType == other.runtimeType &&
        image == other.image &&
        self == other.self;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= image?.hashCode ?? 0;
    hashCode ^= self?.hashCode ?? 0;

    return hashCode;
  }

  static List<PersonLinks> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => PersonLinks.fromJson(value))
            ?.toList() ??
        <PersonLinks>[];
  }

  static Map<String, PersonLinks> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, PersonLinks>((String key, dynamic value) {
          return MapEntry(key, PersonLinks.fromJson(value));
        }) ??
        <String, PersonLinks>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (image != null) 'image': image.toJson(),
      if (self != null) 'self': self.toJson(),
    };
  }

  @override
  String toString() {
    return 'PersonLinks[image=$image, self=$self, ]';
  }
}
