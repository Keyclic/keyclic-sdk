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
    return json == null
        ? <InvitationLinksMemberIriTemplate>[]
        : json
            .map((dynamic value) =>
                InvitationLinksMemberIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, InvitationLinksMemberIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, InvitationLinksMemberIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = InvitationLinksMemberIriTemplate.fromJson(value));
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
    return 'InvitationLinksMemberIriTemplate[mapping=$mapping, ]';
  }
}
