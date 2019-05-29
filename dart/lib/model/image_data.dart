part of keyclic_sdk_api.api;

class ImageData {
  ImageData();

  ImageData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    image = json['image'];
  }

  String image;

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
    return json == null ? List<ImageData>() : json.map((value) => ImageData.fromJson(value)).toList();
  }

  static Map<String, ImageData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ImageData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ImageData.fromJson(value));
    }
    return map;
  }
}
