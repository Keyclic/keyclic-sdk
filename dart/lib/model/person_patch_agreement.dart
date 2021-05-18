part of keyclic_sdk_api.api;

class PersonPatchAgreement {
  PersonPatchAgreement({
    this.privacyPolicy,
    this.termsOfService,
    this.olderThan,
  });

  factory PersonPatchAgreement.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PersonPatchAgreement(
      privacyPolicy: json['privacyPolicy'],
      termsOfService: json['termsOfService'],
      olderThan: json['olderThan'],
    );
  }

  bool privacyPolicy;

  bool termsOfService;

  bool olderThan;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PersonPatchAgreement &&
        runtimeType == other.runtimeType &&
        privacyPolicy == other.privacyPolicy &&
        termsOfService == other.termsOfService &&
        olderThan == other.olderThan;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= privacyPolicy?.hashCode ?? 0;
    hashCode ^= termsOfService?.hashCode ?? 0;
    hashCode ^= olderThan?.hashCode ?? 0;

    return hashCode;
  }

  static List<PersonPatchAgreement> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => PersonPatchAgreement.fromJson(value))
            ?.toList() ??
        <PersonPatchAgreement>[];
  }

  static Map<String, PersonPatchAgreement> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, PersonPatchAgreement>((String key, dynamic value) {
          return MapEntry(key, PersonPatchAgreement.fromJson(value));
        }) ??
        <String, PersonPatchAgreement>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (privacyPolicy != null) 'privacyPolicy': privacyPolicy,
      if (termsOfService != null) 'termsOfService': termsOfService,
      if (olderThan != null) 'olderThan': olderThan,
    };
  }

  @override
  String toString() {
    return 'PersonPatchAgreement[privacyPolicy=$privacyPolicy, termsOfService=$termsOfService, olderThan=$olderThan, ]';
  }
}
