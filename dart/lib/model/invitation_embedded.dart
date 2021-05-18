part of keyclic_sdk_api.api;

class InvitationEmbedded {
  InvitationEmbedded({
    this.organization,
  });

  factory InvitationEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return InvitationEmbedded(
      organization: Organization.fromJson(json['organization']),
    );
  }

  Organization organization;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InvitationEmbedded &&
        runtimeType == other.runtimeType &&
        organization == other.organization;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= organization?.hashCode ?? 0;

    return hashCode;
  }

  static List<InvitationEmbedded> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => InvitationEmbedded.fromJson(value))
            ?.toList() ??
        <InvitationEmbedded>[];
  }

  static Map<String, InvitationEmbedded> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, InvitationEmbedded>((String key, dynamic value) {
          return MapEntry(key, InvitationEmbedded.fromJson(value));
        }) ??
        <String, InvitationEmbedded>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'organization': organization?.toJson(),
    };
  }

  @override
  String toString() {
    return 'InvitationEmbedded[organization=$organization, ]';
  }
}
