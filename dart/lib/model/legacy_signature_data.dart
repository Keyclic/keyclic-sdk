// @dart=2.10
part of keyclic_sdk_api.api;

class LegacySignatureData {
  LegacySignatureData({
    this.signer,
    this.image,
  });

  factory LegacySignatureData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return LegacySignatureData(
      signer: LegacySignatureDataSigner.fromJson(json['signer']),
      image: json['image'],
    );
  }

  LegacySignatureDataSigner signer;

  String image;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is LegacySignatureData &&
        runtimeType == other.runtimeType &&
        signer == other.signer &&
        image == other.image;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= signer?.hashCode ?? 0;
    hashCode ^= image?.hashCode ?? 0;

    return hashCode;
  }

  static List<LegacySignatureData> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => LegacySignatureData.fromJson(value))
            ?.toList() ??
        <LegacySignatureData>[];
  }

  static Map<String, LegacySignatureData> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, LegacySignatureData>((String key, dynamic value) {
          return MapEntry(key, LegacySignatureData.fromJson(value));
        }) ??
        <String, LegacySignatureData>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (signer != null) 'signer': signer.toJson(),
      if (image != null) 'image': image,
    };
  }

  @override
  String toString() {
    return 'LegacySignatureData[signer=$signer, image=$image, ]';
  }
}
