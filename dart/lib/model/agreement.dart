part of keyclic_sdk_api.api;

class Agreement {
  Agreement({
    this.olderThan,
    this.privacyPolicy,
    this.termsOfService,
  });

  factory Agreement.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Agreement(
      olderThan: OlderThan.fromJson(json['olderThan']),
      privacyPolicy: PrivacyPolicy.fromJson(json['privacyPolicy']),
      termsOfService: TermsOfService.fromJson(json['termsOfService']),
    );
  }

  OlderThan olderThan;

  PrivacyPolicy privacyPolicy;

  TermsOfService termsOfService;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Agreement &&
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

  static List<Agreement> listFromJson(List<dynamic> json) {
    return json == null
        ? <Agreement>[]
        : json.map((dynamic value) => Agreement.fromJson(value)).toList();
  }

  static Map<String, Agreement> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Agreement>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Agreement.fromJson(value));
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
    return 'Agreement[olderThan=$olderThan, privacyPolicy=$privacyPolicy, termsOfService=$termsOfService, ]';
  }
}
