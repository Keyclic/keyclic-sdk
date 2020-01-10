part of keyclic_sdk_api.api;

class MemberLinksPersonIriTemplate {
  MemberLinksPersonIriTemplate({
    this.mapping,
  });

  factory MemberLinksPersonIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return MemberLinksPersonIriTemplate(
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

    return other is MemberLinksPersonIriTemplate &&
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

  static List<MemberLinksPersonIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? <MemberLinksPersonIriTemplate>[]
        : json
            .map(
                (dynamic value) => MemberLinksPersonIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, MemberLinksPersonIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, MemberLinksPersonIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = MemberLinksPersonIriTemplate.fromJson(value));
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
    return 'MemberLinksPersonIriTemplate[mapping=$mapping, ]';
  }
}
