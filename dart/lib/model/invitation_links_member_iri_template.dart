part of keyclic_sdk_api.api;

class InvitationLinksMemberIriTemplate {
  InvitationLinksMemberIriTemplate({
    this.mapping,
  });

  factory InvitationLinksMemberIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return InvitationLinksMemberIriTemplate(
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

    return other is InvitationLinksMemberIriTemplate &&
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

  static List<InvitationLinksMemberIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                InvitationLinksMemberIriTemplate.fromJson(value))
            ?.toList() ??
        <InvitationLinksMemberIriTemplate>[];
  }

  static Map<String, InvitationLinksMemberIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, InvitationLinksMemberIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(
              key, InvitationLinksMemberIriTemplate.fromJson(value));
        }) ??
        <String, InvitationLinksMemberIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping?.toJson(),
    };
  }

  @override
  String toString() {
    return 'InvitationLinksMemberIriTemplate[mapping=$mapping, ]';
  }
}
