part of keyclic_sdk_api.api;

class PlanLinks {
  PlanLinks({
    this.image,
    this.place,
    this.self,
  });

  factory PlanLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlanLinks(
      image: PlanLinksImage.fromJson(json['image']),
      place: PlanLinksPlace.fromJson(json['place']),
      self: PlanLinksSelf.fromJson(json['self']),
    );
  }

  PlanLinksImage image;

  PlanLinksPlace place;

  PlanLinksSelf self;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlanLinks &&
        runtimeType == other.runtimeType &&
        image == other.image &&
        place == other.place &&
        self == other.self;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= image?.hashCode ?? 0;
    hashCode ^= place?.hashCode ?? 0;
    hashCode ^= self?.hashCode ?? 0;

    return hashCode;
  }

  static List<PlanLinks> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => PlanLinks.fromJson(value))?.toList() ??
        <PlanLinks>[];
  }

  static Map<String, PlanLinks> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, PlanLinks>((String key, dynamic value) {
          return MapEntry(key, PlanLinks.fromJson(value));
        }) ??
        <String, PlanLinks>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'image': image?.toJson(),
      'place': place?.toJson(),
      'self': self?.toJson(),
    };
  }

  @override
  String toString() {
    return 'PlanLinks[image=$image, place=$place, self=$self, ]';
  }
}
