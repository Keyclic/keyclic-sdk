// @dart=2.10
part of keyclic_sdk_api.api;

class InvitationLinksSelfIriTemplateMapping {
  InvitationLinksSelfIriTemplateMapping({
    this.invitation,
  });

  factory InvitationLinksSelfIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return InvitationLinksSelfIriTemplateMapping(
      invitation: json['invitation'],
    );
  }

  String invitation;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InvitationLinksSelfIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        invitation == other.invitation;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= invitation?.hashCode ?? 0;

    return hashCode;
  }

  static List<InvitationLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                InvitationLinksSelfIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <InvitationLinksSelfIriTemplateMapping>[];
  }

  static Map<String, InvitationLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, InvitationLinksSelfIriTemplateMapping>(
            (String key, dynamic value) {
          return MapEntry(
              key, InvitationLinksSelfIriTemplateMapping.fromJson(value));
        }) ??
        <String, InvitationLinksSelfIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (invitation != null) 'invitation': invitation,
    };
  }

  @override
  String toString() {
    return 'InvitationLinksSelfIriTemplateMapping[invitation=$invitation, ]';
  }
}
