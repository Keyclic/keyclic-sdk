// @dart=2.10
part of keyclic_sdk_api.api;

class SignerSignature {
  SignerSignature({
    this.signedAt,
    this.text,
  });

  factory SignerSignature.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    DateTime signedAt =
        json['signedAt'] == null ? null : DateTime.parse(json['signedAt']);
    if (signedAt is DateTime && signedAt.isUtc == false) {
      signedAt = DateTime.parse('${signedAt.toIso8601String()}Z');
    }

    return SignerSignature(
      signedAt: signedAt,
      text: json['text'],
    );
  }

  DateTime signedAt;

  String text;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SignerSignature &&
        runtimeType == other.runtimeType &&
        signedAt == other.signedAt &&
        text == other.text;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= signedAt?.hashCode ?? 0;
    hashCode ^= text?.hashCode ?? 0;

    return hashCode;
  }

  static List<SignerSignature> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => SignerSignature.fromJson(value))
            ?.toList() ??
        <SignerSignature>[];
  }

  static Map<String, SignerSignature> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, SignerSignature>((String key, dynamic value) {
          return MapEntry(key, SignerSignature.fromJson(value));
        }) ??
        <String, SignerSignature>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (signedAt != null) 'signedAt': signedAt.toUtc().toIso8601String(),
      if (text != null) 'text': text,
    };
  }

  @override
  String toString() {
    return 'SignerSignature[signedAt=$signedAt, text=$text, ]';
  }
}
