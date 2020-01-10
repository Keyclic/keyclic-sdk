part of keyclic_sdk_api.api;

class PlaceLinks {
  PlaceLinks({
    this.containedInPlace,
    this.containsPlaces,
    this.organization,
    this.self,
  });

  factory PlaceLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlaceLinks(
      containedInPlace:
          PlaceLinksContainedInPlace.fromJson(json['containedInPlace']),
      containsPlaces: PlaceLinksContainsPlaces.fromJson(json['containsPlaces']),
      organization: PlaceLinksOrganization.fromJson(json['organization']),
      self: PlaceLinksSelf.fromJson(json['self']),
    );
  }

  PlaceLinksContainedInPlace containedInPlace;

  PlaceLinksContainsPlaces containsPlaces;

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
        containedInPlace == other.containedInPlace &&
        containsPlaces == other.containsPlaces &&
        organization == other.organization &&
        self == other.self;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= containedInPlace?.hashCode ?? 0;
    hashCode ^= containsPlaces?.hashCode ?? 0;
    hashCode ^= organization?.hashCode ?? 0;
    hashCode ^= self?.hashCode ?? 0;

    return hashCode;
  }

  static List<PlaceLinks> listFromJson(List<dynamic> json) {
    return json == null
        ? <PlaceLinks>[]
        : json.map((dynamic value) => PlaceLinks.fromJson(value)).toList();
  }

  static Map<String, PlaceLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PlaceLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = PlaceLinks.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (containedInPlace != null) 'containedInPlace': containedInPlace,
      if (containsPlaces != null) 'containsPlaces': containsPlaces,
      if (organization != null) 'organization': organization,
      if (self != null) 'self': self,
    };
  }

  @override
  String toString() {
    return 'PlaceLinks[containedInPlace=$containedInPlace, containsPlaces=$containsPlaces, organization=$organization, self=$self, ]';
  }
}
