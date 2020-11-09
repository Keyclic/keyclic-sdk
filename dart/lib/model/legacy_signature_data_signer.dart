part of keyclic_sdk_api.api;

class LegacySignatureDataSigner {
  LegacySignatureDataSigner({
    this.familyName,
    this.givenName,
  });

  factory LegacySignatureDataSigner.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return LegacySignatureDataSigner(
      familyName: json['familyName'],
      givenName: json['givenName'],
    );
  }

  String familyName;

  String givenName;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is LegacySignatureDataSigner &&
        runtimeType == other.runtimeType &&
        familyName == other.familyName &&
        givenName == other.givenName;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= familyName?.hashCode ?? 0;
    hashCode ^= givenName?.hashCode ?? 0;

    return hashCode;
  }

  static List<LegacySignatureDataSigner> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => LegacySignatureDataSigner.fromJson(value))
            ?.toList() ??
        <LegacySignatureDataSigner>[];
  }

  static Map<String, LegacySignatureDataSigner> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, LegacySignatureDataSigner>(
            (String key, dynamic value) {
          return MapEntry(key, LegacySignatureDataSigner.fromJson(value));
        }) ??
        <String, LegacySignatureDataSigner>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (familyName != null) 'familyName': familyName,
      if (givenName != null) 'givenName': givenName,
    };
  }

  @override
  String toString() {
    return 'LegacySignatureDataSigner[familyName=$familyName, givenName=$givenName, ]';
  }
}
