part of keyclic_sdk_api.api;

class OperationSignature {
  OperationSignature({
    this.signer,
    this.signedAt,
  });

  OperationSignature.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    signer = OperationSignatureSigner.fromJson(json['signer']);
    signedAt =
        json['signedAt'] == null ? null : DateTime.parse(json['signedAt']);
    if (signedAt is DateTime && signedAt.isUtc == false) {
      signedAt = DateTime.parse('${signedAt.toIso8601String()}Z');
    }
  }

  OperationSignatureSigner signer;

  DateTime signedAt;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is OperationSignature &&
        runtimeType == other.runtimeType &&
        signer == other.signer &&
        signedAt == other.signedAt;
  }

  @override
  int get hashCode => 0 ^ signer.hashCode ^ signedAt.hashCode;

  Map<String, dynamic> toJson() {
    return {
      'signer': signer,
      'signedAt': signedAt == null ? '' : signedAt.toUtc().toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'OperationSignature[signer=$signer, signedAt=$signedAt, ]';
  }

  static List<OperationSignature> listFromJson(List<dynamic> json) {
    return json == null
        ? List<OperationSignature>()
        : json.map((value) => OperationSignature.fromJson(value)).toList();
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
}
