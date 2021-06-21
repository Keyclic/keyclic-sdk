// @dart=2.10
part of keyclic_sdk_api.api;

class SignatureData {
  SignatureData({
    this.image,
    this.text,
  });

  factory SignatureData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return SignatureData(
      image: json['image'],
      text: json['text'],
    );
  }

  String image;

  String text;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SignatureData &&
        runtimeType == other.runtimeType &&
        image == other.image &&
        text == other.text;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= image?.hashCode ?? 0;
    hashCode ^= text?.hashCode ?? 0;

    return hashCode;
  }

  static List<SignatureData> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => SignatureData.fromJson(value))
            ?.toList() ??
        <SignatureData>[];
  }

  static Map<String, SignatureData> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, SignatureData>((String key, dynamic value) {
          return MapEntry(key, SignatureData.fromJson(value));
        }) ??
        <String, SignatureData>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (image != null) 'image': image,
      if (text != null) 'text': text,
    };
  }

  @override
  String toString() {
    return 'SignatureData[image=$image, text=$text, ]';
  }
}
