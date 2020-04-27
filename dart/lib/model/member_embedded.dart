part of keyclic_sdk_api.api;

class MemberEmbedded {
  MemberEmbedded({
    this.availableRoles,
    this.invitation,
    this.organization,
    this.person,
    this.roles,
  });

  factory MemberEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return MemberEmbedded(
      availableRoles: json['availableRoles'] is List
          ? List<String>.from(json['availableRoles'])
          : null,
      invitation: Invitation.fromJson(json['invitation']),
      organization: Organization.fromJson(json['organization']),
      person: Person.fromJson(json['person']),
      roles: Role.listFromJson(json['roles']),
    );
  }

  List<String> availableRoles;

  Invitation invitation;

  Organization organization;

  Person person;

  List<Role> roles;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MemberEmbedded &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered()
            .equals(availableRoles, other.availableRoles) &&
        invitation == other.invitation &&
        organization == other.organization &&
        person == other.person &&
        DeepCollectionEquality.unordered().equals(roles, other.roles);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (availableRoles is List && availableRoles.isNotEmpty) {
      hashCode ^= availableRoles
          .map((String element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }
    if (roles is List && roles.isNotEmpty) {
      hashCode ^= roles
          .map((Role element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= invitation?.hashCode ?? 0;
    hashCode ^= organization?.hashCode ?? 0;
    hashCode ^= person?.hashCode ?? 0;

    return hashCode;
  }

  static List<MemberEmbedded> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => MemberEmbedded.fromJson(value))
            ?.toList() ??
        <MemberEmbedded>[];
  }

  static Map<String, MemberEmbedded> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, MemberEmbedded>((String key, dynamic value) {
          return MapEntry(key, MemberEmbedded.fromJson(value));
        }) ??
        <String, MemberEmbedded>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (availableRoles != null) 'availableRoles': availableRoles,
      if (invitation != null) 'invitation': invitation.toJson(),
      if (organization != null) 'organization': organization.toJson(),
      if (person != null) 'person': person.toJson(),
      if (roles != null) 'roles': roles,
    };
  }

  @override
  String toString() {
    return 'MemberEmbedded[availableRoles=$availableRoles, invitation=$invitation, organization=$organization, person=$person, roles=$roles, ]';
  }
}
