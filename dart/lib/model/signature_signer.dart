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
    return json == null
        ? <SignatureSigner>[]
        : json.map((dynamic value) => SignatureSigner.fromJson(value)).toList();
  }

  static Map<String, SignatureSigner> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SignatureSigner>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = SignatureSigner.fromJson(value));
    }

    return map;
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
