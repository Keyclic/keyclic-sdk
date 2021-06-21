// @dart=2.10
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
      mapping: BookmarkLinksMemberIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  BookmarkLinksMemberIriTemplateMapping mapping;

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
    return json
            ?.map((dynamic value) =>
                OccupantLinksMemberIriTemplate.fromJson(value))
            ?.toList() ??
        <OccupantLinksMemberIriTemplate>[];
  }

  static Map<String, OccupantLinksMemberIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, OccupantLinksMemberIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(key, OccupantLinksMemberIriTemplate.fromJson(value));
        }) ??
        <String, OccupantLinksMemberIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'OccupantLinksMemberIriTemplate[mapping=$mapping, ]';
  }
}
