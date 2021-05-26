part of keyclic_sdk_api.api;

class OccupantLinksSelfIriTemplateMapping {
  OccupantLinksSelfIriTemplateMapping({
    this.occupant,
  });

  factory OccupantLinksSelfIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OccupantLinksSelfIriTemplateMapping(
      occupant: json['occupant'],
    );
  }

  String occupant;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OccupantLinksSelfIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        occupant == other.occupant;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= occupant?.hashCode ?? 0;

    return hashCode;
  }

  static List<OccupantLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                OccupantLinksSelfIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <OccupantLinksSelfIriTemplateMapping>[];
  }

  static Map<String, OccupantLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, OccupantLinksSelfIriTemplateMapping>(
            (String key, dynamic value) {
          return MapEntry(
              key, OccupantLinksSelfIriTemplateMapping.fromJson(value));
        }) ??
        <String, OccupantLinksSelfIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (occupant != null) 'occupant': occupant,
    };
  }

  @override
  String toString() {
    return 'OccupantLinksSelfIriTemplateMapping[occupant=$occupant, ]';
  }
}
