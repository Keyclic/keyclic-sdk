part of keyclic_sdk_api.api;

class Signature {
  Signature({
    this.signedAt,
    this.signer,
  });

  factory Signature.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Signature(
      signedAt: json['signedAt'],
      signer: Signer.fromJson(json['signer']),
    );
  }

  String signedAt;

  Signer signer;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Signature &&
        runtimeType == other.runtimeType &&
        signedAt == other.signedAt &&
        signer == other.signer;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= signedAt?.hashCode ?? 0;
    hashCode ^= signer?.hashCode ?? 0;

    return hashCode;
  }

  static List<Signature> listFromJson(List<dynamic> json) {
    return json == null
        ? <Signature>[]
        : json.map((dynamic value) => Signature.fromJson(value)).toList();
  }

  static Map<String, Signature> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Signature>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Signature.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (signedAt != null) 'signedAt': signedAt,
      if (signer != null) 'signer': signer,
    };
  }

  @override
  String toString() {
    return 'Signature[signedAt=$signedAt, signer=$signer, ]';
  }
}
