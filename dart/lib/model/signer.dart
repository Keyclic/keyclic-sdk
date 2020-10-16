part of keyclic_sdk_api.api;

class Signer {
  Signer({
    this.contactPoint,
    this.id,
    this.signature,
    this.type,
  });

  factory Signer.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Signer(
      contactPoint: SignerContactPoint.fromJson(json['contactPoint']),
      id: json['id'],
      signature: SignerSignature.fromJson(json['signature']),
      type: json['type'],
    );
  }

  SignerContactPoint contactPoint;

  String id;

  SignerSignature signature;

  String type;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Signer &&
        runtimeType == other.runtimeType &&
        contactPoint == other.contactPoint &&
        id == other.id &&
        signature == other.signature &&
        type == other.type;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= contactPoint?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= signature?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;

    return hashCode;
  }

  static List<Signer> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => Signer.fromJson(value))?.toList() ??
        <Signer>[];
  }

  static Map<String, Signer> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, Signer>((String key, dynamic value) {
          return MapEntry(key, Signer.fromJson(value));
        }) ??
        <String, Signer>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (contactPoint != null) 'contactPoint': contactPoint.toJson(),
      if (id != null) 'id': id,
      if (signature != null) 'signature': signature.toJson(),
      if (type != null) 'type': type,
    };
  }

  @override
  String toString() {
    return 'Signer[contactPoint=$contactPoint, id=$id, signature=$signature, type=$type, ]';
  }
}
