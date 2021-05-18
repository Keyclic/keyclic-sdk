part of keyclic_sdk_api.api;

class PlaceLinks {
  PlaceLinks({
    this.children,
    this.geo,
    this.organization,
    this.self,
  });

  factory PlaceLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlaceLinks(
      children: PlaceLinksChildren.fromJson(json['children']),
      geo: PlaceLinksGeo.fromJson(json['geo']),
      organization: PlaceLinksOrganization.fromJson(json['organization']),
      self: PlaceLinksSelf.fromJson(json['self']),
    );
  }

  PlaceLinksChildren children;

  PlaceLinksGeo geo;

  PlaceLinksOrganization organization;

  PlaceLinksSelf self;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceLinks &&
        runtimeType == other.runtimeType &&
        children == other.children &&
        geo == other.geo &&
        organization == other.organization &&
        self == other.self;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= children?.hashCode ?? 0;
    hashCode ^= geo?.hashCode ?? 0;
    hashCode ^= organization?.hashCode ?? 0;
    hashCode ^= self?.hashCode ?? 0;

    return hashCode;
  }

  static List<PlaceLinks> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => PlaceLinks.fromJson(value))?.toList() ??
        <PlaceLinks>[];
  }

  static Map<String, PlaceLinks> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, PlaceLinks>((String key, dynamic value) {
          return MapEntry(key, PlaceLinks.fromJson(value));
        }) ??
        <String, PlaceLinks>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'children': children.toJson(),
      'geo': geo?.toJson(),
      'organization': organization?.toJson(),
      'self': self?.toJson(),
    };
  }

  @override
  String toString() {
    return 'PlaceLinks[children=$children, geo=$geo, organization=$organization, self=$self, ]';
  }
}
