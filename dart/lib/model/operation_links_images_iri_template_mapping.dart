part of keyclic_sdk_api.api;

class OperationLinksImagesIriTemplateMapping {
  OperationLinksImagesIriTemplateMapping({
    this.operation,
    this.image,
  });

  OperationLinksImagesIriTemplateMapping.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    operation = json['operation'];
    image = json['image'];
  }

  String operation;

  String image;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksImagesIriTemplateMapping &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'operation': operation,
      'image': image,
    };
  }

  @override
  String toString() {
    return 'OperationLinksImagesIriTemplateMapping[operation=$operation, image=$image, ]';
  }

  static List<OperationLinksImagesIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<OperationLinksImagesIriTemplateMapping>()
        : json
            .map((value) =>
                OperationLinksImagesIriTemplateMapping.fromJson(value))
            .toList();
  }

  static Map<String, OperationLinksImagesIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OperationLinksImagesIriTemplateMapping>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OperationLinksImagesIriTemplateMapping.fromJson(value));
    }
    return map;
  }
}
