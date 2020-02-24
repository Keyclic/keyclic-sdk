part of keyclic_sdk_api.api;

class InvitationLinksSelfIriTemplate {
  InvitationLinksSelfIriTemplate({
    this.mapping,
  });

  factory InvitationLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return InvitationLinksSelfIriTemplate(
      mapping: InvitationLinksSelfIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  InvitationLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InvitationLinksSelfIriTemplate &&
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

  static List<InvitationLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? <InvitationLinksSelfIriTemplate>[]
        : json
            .map((dynamic value) =>
                InvitationLinksSelfIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, InvitationLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, InvitationLinksSelfIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = InvitationLinksSelfIriTemplate.fromJson(value));
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
    return 'InvitationLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
