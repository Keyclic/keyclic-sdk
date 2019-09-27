part of keyclic_sdk_api.api;

class OccupantLinksSelfIriTemplate {
  OccupantLinksSelfIriTemplate({
    this.mapping,
  });

  OccupantLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = OccupantLinksSelfIriTemplateMapping.fromJson(json['mapping']);
  }

  OccupantLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OccupantLinksSelfIriTemplate &&
        runtimeType == other.runtimeType &&
        mapping == other.mapping;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= mapping?.hashCode ?? 0;

    return hashCode;
  }

  static List<OccupantLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? <OccupantLinksSelfIriTemplate>[]
        : json
            .map(
                (dynamic value) => OccupantLinksSelfIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, OccupantLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OccupantLinksSelfIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OccupantLinksSelfIriTemplate.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'OccupantLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
