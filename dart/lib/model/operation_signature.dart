part of keyclic_sdk_api.api;

class OperationSignature {
  OperationSignature({
    this.signedAt,
    this.signer,
  });

  factory OperationSignature.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    DateTime signedAt =
        json['signedAt'] == null ? null : DateTime.parse(json['signedAt']);
    if (signedAt is DateTime && signedAt.isUtc == false) {
      signedAt = DateTime.parse('${signedAt.toIso8601String()}Z');
    }

    return OperationSignature(
      signedAt: signedAt,
      signer: OperationSignatureSigner.fromJson(json['signer']),
    );
  }

  DateTime signedAt;

  OperationSignatureSigner signer;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationSignature &&
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

  static List<OperationSignature> listFromJson(List<dynamic> json) {
    return json == null
        ? <OperationSignature>[]
        : json
            .map((dynamic value) => OperationSignature.fromJson(value))
            .toList();
  }

  static Map<String, OperationSignature> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OperationSignature>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OperationSignature.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (signedAt != null) 'signedAt': signedAt.toUtc().toIso8601String(),
      if (signer != null) 'signer': signer,
    };
  }

  @override
  String toString() {
    return 'OperationSignature[signedAt=$signedAt, signer=$signer, ]';
  }
}
