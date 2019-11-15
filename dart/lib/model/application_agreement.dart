part of keyclic_sdk_api.api;

class ApplicationAgreement {
  ApplicationAgreement({
    this.olderThan,
    this.privacyPolicy,
    this.termsOfService,
  });

  ApplicationAgreement.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    olderThan = ApplicationAgreementOlderThan.fromJson(json['olderThan']);
    privacyPolicy =
        ApplicationAgreementOlderThan.fromJson(json['privacyPolicy']);
    termsOfService =
        ApplicationAgreementOlderThan.fromJson(json['termsOfService']);
  }

  ApplicationAgreementOlderThan olderThan;

  ApplicationAgreementOlderThan privacyPolicy;

  ApplicationAgreementOlderThan termsOfService;

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
    return json == null
        ? <ApplicationAgreement>[]
        : json
            .map((dynamic value) => ApplicationAgreement.fromJson(value))
            .toList();
  }

  static Map<String, ApplicationAgreement> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ApplicationAgreement>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ApplicationAgreement.fromJson(value));
    }

    return map;
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
    return 'ApplicationAgreement[olderThan=$olderThan, privacyPolicy=$privacyPolicy, termsOfService=$termsOfService, ]';
  }
}
