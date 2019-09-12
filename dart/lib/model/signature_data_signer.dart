part of keyclic_sdk_api.api;

class SignatureDataSigner {
  SignatureDataSigner({
    this.familyName,
    this.givenName,
  });

  SignatureDataSigner.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    familyName = json['familyName'];
    givenName = json['givenName'];
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

    hashCode ^= (familyName?.hashCode ?? 0);
    hashCode ^= (givenName?.hashCode ?? 0);

    return hashCode;
  }

  static List<SignatureDataSigner> listFromJson(List<dynamic> json) {
    return json == null
        ? <SignatureDataSigner>[]
        : json
            .map((dynamic value) => SignatureDataSigner.fromJson(value))
            .toList();
  }

  static Map<String, SignatureDataSigner> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, SignatureDataSigner>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = SignatureDataSigner.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'familyName': familyName,
      'givenName': givenName,
    };
  }

  @override
  String toString() {
    return 'SignatureDataSigner[familyName=$familyName, givenName=$givenName, ]';
  }
}
