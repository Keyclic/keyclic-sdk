// @dart=2.10
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
    return json
            ?.map(
                (dynamic value) => MemberLinksPersonIriTemplate.fromJson(value))
            ?.toList() ??
        <MemberLinksPersonIriTemplate>[];
  }

  static Map<String, MemberLinksPersonIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, MemberLinksPersonIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(key, MemberLinksPersonIriTemplate.fromJson(value));
        }) ??
        <String, MemberLinksPersonIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'MemberLinksPersonIriTemplate[mapping=$mapping, ]';
  }
}
