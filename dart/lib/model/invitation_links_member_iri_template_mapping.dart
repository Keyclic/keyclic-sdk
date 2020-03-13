part of keyclic_sdk_api.api;

class InvitationLinksMemberIriTemplateMapping {
  InvitationLinksMemberIriTemplateMapping({
    this.member,
  });

  factory InvitationLinksMemberIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return InvitationLinksMemberIriTemplateMapping(
      member: json['member'],
    );
  }

  String member;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InvitationLinksMemberIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        member == other.member;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= member?.hashCode ?? 0;

    return hashCode;
  }

  static List<InvitationLinksMemberIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                InvitationLinksMemberIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <InvitationLinksMemberIriTemplateMapping>[];
  }

  static Map<String, InvitationLinksMemberIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, InvitationLinksMemberIriTemplateMapping>(
            (String key, dynamic value) {
          return MapEntry(
              key, InvitationLinksMemberIriTemplateMapping.fromJson(value));
        }) ??
        <String, InvitationLinksMemberIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (member != null) 'member': member,
    };
  }

  @override
  String toString() {
    return 'InvitationLinksMemberIriTemplateMapping[member=$member, ]';
  }
}
