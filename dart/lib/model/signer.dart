part of keyclic_sdk_api.api;

class Signer {
  Signer({
    this.embedded,
    this.links,
    this.id,
    this.signature,
    this.type,
  });

  factory Signer.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Signer(
      embedded: SignerEmbedded.fromJson(json['_embedded']),
      links: SignerLinks.fromJson(json['_links']),
      id: json['id'],
      signature: SignerSignature.fromJson(json['signature']),
      type: json['type'],
    );
  }

  SignerEmbedded embedded;

  SignerLinks links;

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
        embedded == other.embedded &&
        links == other.links &&
        id == other.id &&
        signature == other.signature &&
        type == other.type;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= embedded?.hashCode ?? 0;
    hashCode ^= links?.hashCode ?? 0;
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
      '_embedded': embedded?.toJson(),
      '_links': links?.toJson(),
      'id': id,
      'signature': signature?.toJson(),
      'type': type,
    };
  }

  @override
  String toString() {
    return 'Signer[embedded=$embedded, links=$links, id=$id, signature=$signature, type=$type, ]';
  }
}
