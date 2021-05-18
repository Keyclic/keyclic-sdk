part of keyclic_sdk_api.api;

class ImageData {
  ImageData({
    this.image,
  });

  factory ImageData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ImageData(
      image: json['image'],
    );
  }

  String image;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ImageData &&
        runtimeType == other.runtimeType &&
        image == other.image;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= image?.hashCode ?? 0;

    return hashCode;
  }

  static List<ImageData> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => ImageData.fromJson(value))?.toList() ??
        <ImageData>[];
  }

  static Map<String, ImageData> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, ImageData>((String key, dynamic value) {
          return MapEntry(key, ImageData.fromJson(value));
        }) ??
        <String, ImageData>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (image != null) 'image': image,
    };
  }

  @override
  String toString() {
    return 'ImageData[image=$image, ]';
  }
}
