part of keyclic_sdk_api.api;

class SignatureDataSigner {
  SignatureDataSigner({
    this.familyName,
    this.givenName,
  });

  factory SignatureDataSigner.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return SignatureDataSigner(
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

    return other is SignatureDataSigner &&
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

  static List<SignatureDataSigner> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => SignatureDataSigner.fromJson(value))
            ?.toList() ??
        <SignatureDataSigner>[];
  }

  static Map<String, SignatureDataSigner> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, SignatureDataSigner>((String key, dynamic value) {
          return MapEntry(key, SignatureDataSigner.fromJson(value));
        }) ??
        <String, SignatureDataSigner>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (familyName != null) 'familyName': familyName,
      if (givenName != null) 'givenName': givenName,
    };
  }

  @override
  String toString() {
    return 'SignatureDataSigner[familyName=$familyName, givenName=$givenName, ]';
  }
}
