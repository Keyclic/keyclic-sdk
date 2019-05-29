part of keyclic_sdk_api.api;

class SignatureDataSigner {
  SignatureDataSigner();

  SignatureDataSigner.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    familyName = json['familyName'];
    givenName = json['givenName'];
  }

  String familyName;

  String givenName;

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
    return json == null ? List<SignatureDataSigner>() : json.map((value) => SignatureDataSigner.fromJson(value)).toList();
  }

  static Map<String, SignatureDataSigner> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SignatureDataSigner>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SignatureDataSigner.fromJson(value));
    }
    return map;
  }
}
