part of keyclic_sdk_api.api;

class SignerData {
  SignerData({
    this.document,
    this.person,
  });

  factory SignerData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return SignerData(
      document: json['document'],
      person: json['person'],
    );
  }

  String document;

  String person;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SignerData &&
        runtimeType == other.runtimeType &&
        document == other.document &&
        person == other.person;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= document?.hashCode ?? 0;
    hashCode ^= person?.hashCode ?? 0;

    return hashCode;
  }

  static List<SignerData> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => SignerData.fromJson(value))?.toList() ??
        <SignerData>[];
  }

  static Map<String, SignerData> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, SignerData>((String key, dynamic value) {
          return MapEntry(key, SignerData.fromJson(value));
        }) ??
        <String, SignerData>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (document != null) 'document': document,
      if (person != null) 'person': person,
    };
  }

  @override
  String toString() {
    return 'SignerData[document=$document, person=$person, ]';
  }
}
