part of keyclic_sdk_api.api;

class SignatureData {
  SignatureData({
    this.signer,
    this.image,
  });

  factory SignatureData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return SignatureData(
      signer: SignatureDataSigner.fromJson(json['signer']),
      image: json['image'],
    );
  }

  SignatureDataSigner signer;

  String image;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SignatureData &&
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

  static List<SignatureData> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => SignatureData.fromJson(value))
            ?.toList() ??
        <SignatureData>[];
  }

  static Map<String, SignatureData> mapFromJson(Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, SignatureData.fromJson(value));
        }) ??
        <String, SignatureData>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (signer != null) 'signer': signer.toJson(),
      if (image != null) 'image': image,
    };
  }

  @override
  String toString() {
    return 'SignatureData[signer=$signer, image=$image, ]';
  }
}
