part of keyclic_sdk_api.api;

class SignatureData {
  SignatureData({
    this.signer,
    this.image,
  });

  SignatureData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    signer = SignatureDataSigner.fromJson(json['signer']);
    image = json['image'];
  }

  SignatureDataSigner signer;

  String image;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is SignatureData &&
        runtimeType == other.runtimeType &&
        image == other.image;
  }

  @override
  int get hashCode => 0 ^ image.hashCode;

  static List<SignatureData> listFromJson(List<dynamic> json) {
    return json == null
        ? List<SignatureData>()
        : json.map((value) => SignatureData.fromJson(value)).toList();
  }

  static Map<String, SignatureData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SignatureData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = SignatureData.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'signer': signer,
      'image': image,
    };
  }

  @override
  String toString() {
    return 'SignatureData[signer=$signer, image=$image, ]';
  }
}
