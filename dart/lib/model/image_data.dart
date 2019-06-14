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
    if (identical(this, other)) {
      return true;
    }

    return other is ImageData &&
        runtimeType == other.runtimeType &&
        image == other.image;
  }

  @override
  int get hashCode => 0 ^ image.hashCode;

  Map<String, dynamic> toJson() {
    return {
      'image': image,
    };
  }

  @override
  String toString() {
    return 'ImageData[image=$image, ]';
  }

  static List<ImageData> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ImageData>()
        : json.map((value) => ImageData.fromJson(value)).toList();
  }

  static Map<String, ImageData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ImageData>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = ImageData.fromJson(value));
    }
    return map;
  }
}
