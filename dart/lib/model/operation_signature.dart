part of keyclic_sdk_api.api;

class OperationSignature {
  OperationSignature({
    this.signedAt,
    this.signer,
  });

  OperationSignature.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    signedAt =
        json['signedAt'] == null ? null : DateTime.parse(json['signedAt']);
    if (signedAt is DateTime && signedAt.isUtc == false) {
      signedAt = DateTime.parse('${signedAt.toIso8601String()}Z');
    }
    signer = OperationSignatureSigner.fromJson(json['signer']);
  }

  DateTime signedAt;

  OperationSignatureSigner signer;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is OperationSignature && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'signedAt': signedAt == null ? '' : signedAt.toUtc().toIso8601String(),
      'signer': signer,
    };
  }

  @override
  String toString() {
    return 'OperationSignature[signedAt=$signedAt, signer=$signer, ]';
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
