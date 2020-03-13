part of keyclic_sdk_api.api;

class RegisterDataAgreement {
  RegisterDataAgreement({
    this.olderThan,
    this.privacyPolicy,
    this.termsOfService,
  });

  factory RegisterDataAgreement.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return RegisterDataAgreement(
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

    return other is RegisterDataAgreement &&
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

  static List<RegisterDataAgreement> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => RegisterDataAgreement.fromJson(value))
            ?.toList() ??
        <RegisterDataAgreement>[];
  }

  static Map<String, RegisterDataAgreement> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, RegisterDataAgreement>((String key, dynamic value) {
          return MapEntry(key, RegisterDataAgreement.fromJson(value));
        }) ??
        <String, RegisterDataAgreement>{};
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
    return 'RegisterDataAgreement[olderThan=$olderThan, privacyPolicy=$privacyPolicy, termsOfService=$termsOfService, ]';
  }
}
