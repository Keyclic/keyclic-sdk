part of keyclic_sdk_api.api;

class MemberLinksSelfIriTemplate {
  MemberLinksSelfIriTemplate({
    this.mapping,
  });

  factory MemberLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return MemberLinksSelfIriTemplate(
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

    return other is MemberLinksSelfIriTemplate &&
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

  static List<MemberLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => MemberLinksSelfIriTemplate.fromJson(value))
            ?.toList() ??
        <MemberLinksSelfIriTemplate>[];
  }

  static Map<String, MemberLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, MemberLinksSelfIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(key, MemberLinksSelfIriTemplate.fromJson(value));
        }) ??
        <String, MemberLinksSelfIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping?.toJson(),
    };
  }

  @override
  String toString() {
    return 'MemberLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
