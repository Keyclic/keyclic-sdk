part of keyclic_sdk_api.api;

class PersonLinks {
  PersonLinks({
    this.image,
    this.self,
  });

  PersonLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    image = PersonLinksImage.fromJson(json['image']);
    self = PersonLinksSelf.fromJson(json['self']);
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
    return json == null
        ? <PersonLinks>[]
        : json.map((dynamic value) => PersonLinks.fromJson(value)).toList();
  }

  static Map<String, PersonLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PersonLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PersonLinks.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'image': image,
      'self': self,
    };
  }

  @override
  String toString() {
    return 'PersonLinks[image=$image, self=$self, ]';
  }
}
