part of keyclic_sdk_api.api;

class OccupantLinksPersonIriTemplate {
  OccupantLinksPersonIriTemplate({
    this.mapping,
  });

  factory OccupantLinksPersonIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OccupantLinksPersonIriTemplate(
      mapping: ContributionLinksContributorIriTemplateMapping.fromJson(
          json['mapping']),
    );
  }

  ContributionLinksContributorIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OccupantLinksPersonIriTemplate &&
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

  static List<OccupantLinksPersonIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? <OccupantLinksPersonIriTemplate>[]
        : json
            .map((dynamic value) =>
                OccupantLinksPersonIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, OccupantLinksPersonIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OccupantLinksPersonIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OccupantLinksPersonIriTemplate.fromJson(value));
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
    return 'OccupantLinksPersonIriTemplate[mapping=$mapping, ]';
  }
}
