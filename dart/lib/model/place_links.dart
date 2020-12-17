part of keyclic_sdk_api.api;

class PlaceLinks {
  PlaceLinks({
    this.organization,
    this.self,
  });

  factory PlaceLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlaceLinks(
      organization: PlaceLinksOrganization.fromJson(json['organization']),
      self: PlaceLinksSelf.fromJson(json['self']),
    );
  }

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
        organization == other.organization &&
        self == other.self;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

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
      if (organization != null) 'organization': organization.toJson(),
      if (self != null) 'self': self.toJson(),
    };
  }

  @override
  String toString() {
    return 'PlaceLinks[organization=$organization, self=$self, ]';
  }
}
