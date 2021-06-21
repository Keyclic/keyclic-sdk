// @dart=2.10
part of keyclic_sdk_api.api;

class ApplicationAgreement {
  ApplicationAgreement({
    this.olderThan,
    this.privacyPolicy,
    this.termsOfService,
  });

  factory ApplicationAgreement.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ApplicationAgreement(
      olderThan: AgreementOlderThan.fromJson(json['olderThan']),
      privacyPolicy: AgreementPrivacyPolicy.fromJson(json['privacyPolicy']),
      termsOfService: AgreementTermsOfService.fromJson(json['termsOfService']),
    );
  }

  AgreementOlderThan olderThan;

  AgreementPrivacyPolicy privacyPolicy;

  AgreementTermsOfService termsOfService;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ApplicationAgreement &&
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

  static List<ApplicationAgreement> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ApplicationAgreement.fromJson(value))
            ?.toList() ??
        <ApplicationAgreement>[];
  }

  static Map<String, ApplicationAgreement> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, ApplicationAgreement>((String key, dynamic value) {
          return MapEntry(key, ApplicationAgreement.fromJson(value));
        }) ??
        <String, ApplicationAgreement>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (olderThan != null) 'olderThan': olderThan.toJson(),
      if (privacyPolicy != null) 'privacyPolicy': privacyPolicy.toJson(),
      if (termsOfService != null) 'termsOfService': termsOfService.toJson(),
    };
  }

  @override
  String toString() {
    return 'ApplicationAgreement[olderThan=$olderThan, privacyPolicy=$privacyPolicy, termsOfService=$termsOfService, ]';
  }
}
