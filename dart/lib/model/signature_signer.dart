part of keyclic_sdk_api.api;

class SignatureSigner {
  SignatureSigner({
    this.familyName,
    this.givenName,
  });

  factory SignatureSigner.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return SignatureSigner(
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

    return other is SignatureSigner &&
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

  static List<SignatureSigner> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => SignatureSigner.fromJson(value))
            ?.toList() ??
        <SignatureSigner>[];
  }

  static Map<String, SignatureSigner> mapFromJson(Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, SignatureSigner.fromJson(value));
        }) ??
        <String, SignatureSigner>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (familyName != null) 'familyName': familyName,
      if (givenName != null) 'givenName': givenName,
    };
  }

  @override
  String toString() {
    return 'SignatureSigner[familyName=$familyName, givenName=$givenName, ]';
  }
}
