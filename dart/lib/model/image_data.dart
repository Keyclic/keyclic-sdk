part of keyclic_sdk_api.api;

class ImageData {
  ImageData({
    this.image,
  });

  ImageData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    image = json['image'];
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

    hashCode ^= (image?.hashCode ?? 0);

    return hashCode;
  }

  static List<ImageData> listFromJson(List<dynamic> json) {
    return json == null
        ? <ImageData>[]
        : json.map((dynamic value) => ImageData.fromJson(value)).toList();
  }

  static Map<String, ImageData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ImageData>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = ImageData.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'image': image,
    };
  }

  @override
  String toString() {
    return 'ImageData[image=$image, ]';
  }
}
