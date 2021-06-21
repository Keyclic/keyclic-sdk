// @dart=2.10
part of keyclic_sdk_api.api;

class PersonAgreement {
  PersonAgreement({
    this.olderThan,
    this.privacyPolicy,
    this.termsOfService,
  });

  factory PersonAgreement.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PersonAgreement(
      olderThan: json['olderThan'],
      privacyPolicy: json['privacyPolicy'],
      termsOfService: json['termsOfService'],
    );
  }

  bool olderThan;

  bool privacyPolicy;

  bool termsOfService;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PersonAgreement &&
        runtimeType == other.runtimeType &&
        olderThan == other.olderThan &&
        privacyPolicy == other.privacyPolicy &&
        termsOfService == other.termsOfService;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= olderThan?.hashCode ?? 0;
    hashCode ^= privacyPolicy?.hashCode ?? 0;
    hashCode ^= termsOfService?.hashCode ?? 0;

    return hashCode;
  }

  static List<PersonAgreement> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => PersonAgreement.fromJson(value))
            ?.toList() ??
        <PersonAgreement>[];
  }

  static Map<String, PersonAgreement> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, PersonAgreement>((String key, dynamic value) {
          return MapEntry(key, PersonAgreement.fromJson(value));
        }) ??
        <String, PersonAgreement>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (olderThan != null) 'olderThan': olderThan,
      if (privacyPolicy != null) 'privacyPolicy': privacyPolicy,
      if (termsOfService != null) 'termsOfService': termsOfService,
    };
  }

  @override
  String toString() {
    return 'PersonAgreement[olderThan=$olderThan, privacyPolicy=$privacyPolicy, termsOfService=$termsOfService, ]';
  }
}
