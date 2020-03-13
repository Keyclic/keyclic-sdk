part of keyclic_sdk_api.api;

class PersonLinks {
  PersonLinks({
    this.application,
    this.createdBy,
    this.image,
    this.self,
  });

  factory PersonLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PersonLinks(
      application: PersonLinksApplication.fromJson(json['application']),
      createdBy: PersonLinksCreatedBy.fromJson(json['createdBy']),
      image: PersonLinksImage.fromJson(json['image']),
      self: PersonLinksSelf.fromJson(json['self']),
    );
  }

  PersonLinksApplication application;

  PersonLinksCreatedBy createdBy;

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
        application == other.application &&
        createdBy == other.createdBy &&
        image == other.image &&
        self == other.self;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= application?.hashCode ?? 0;
    hashCode ^= createdBy?.hashCode ?? 0;
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
      if (application != null) 'application': application.toJson(),
      if (createdBy != null) 'createdBy': createdBy.toJson(),
      if (image != null) 'image': image.toJson(),
      if (self != null) 'self': self.toJson(),
    };
  }

  @override
  String toString() {
    return 'PersonLinks[application=$application, createdBy=$createdBy, image=$image, self=$self, ]';
  }
}
