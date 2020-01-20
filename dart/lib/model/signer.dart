part of keyclic_sdk_api.api;

class Signer {
  Signer({
    this.familyName,
    this.givenName,
  });

  factory Signer.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Signer(
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

    return other is Signer &&
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

  static List<Signer> listFromJson(List<dynamic> json) {
    return json == null
        ? <Signer>[]
        : json.map((dynamic value) => Signer.fromJson(value)).toList();
  }

  static Map<String, Signer> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Signer>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Signer.fromJson(value));
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
    return 'Signer[familyName=$familyName, givenName=$givenName, ]';
  }
}
