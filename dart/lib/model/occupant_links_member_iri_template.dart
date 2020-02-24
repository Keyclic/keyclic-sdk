part of keyclic_sdk_api.api;

class OccupantLinksMemberIriTemplate {
  OccupantLinksMemberIriTemplate({
    this.mapping,
  });

  factory OccupantLinksMemberIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OccupantLinksMemberIriTemplate(
      mapping:
          InvitationLinksMemberIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  InvitationLinksMemberIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OccupantLinksMemberIriTemplate &&
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

  static List<OccupantLinksMemberIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? <OccupantLinksMemberIriTemplate>[]
        : json
            .map((dynamic value) =>
                OccupantLinksMemberIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, OccupantLinksMemberIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OccupantLinksMemberIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OccupantLinksMemberIriTemplate.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'OccupantLinksMemberIriTemplate[mapping=$mapping, ]';
  }
}
