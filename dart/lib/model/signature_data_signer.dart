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
    if (identical(this, other)) {
      return true;
    }

    return other is SignatureDataSigner && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

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

  static List<SignatureDataSigner> listFromJson(List<dynamic> json) {
    return json == null
        ? List<SignatureDataSigner>()
        : json.map((value) => SignatureDataSigner.fromJson(value)).toList();
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
}
