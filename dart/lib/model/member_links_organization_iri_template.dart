part of keyclic_sdk_api.api;

class MemberLinksOrganizationIriTemplate {
  MemberLinksOrganizationIriTemplate({
    this.mapping,
  });

  factory MemberLinksOrganizationIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return MemberLinksOrganizationIriTemplate(
      mapping:
          CategoryLinksOrganizationIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  CategoryLinksOrganizationIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MemberLinksOrganizationIriTemplate &&
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

  static List<MemberLinksOrganizationIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                MemberLinksOrganizationIriTemplate.fromJson(value))
            ?.toList() ??
        <MemberLinksOrganizationIriTemplate>[];
  }

  static Map<String, MemberLinksOrganizationIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, MemberLinksOrganizationIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(
              key, MemberLinksOrganizationIriTemplate.fromJson(value));
        }) ??
        <String, MemberLinksOrganizationIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'MemberLinksOrganizationIriTemplate[mapping=$mapping, ]';
  }
}
