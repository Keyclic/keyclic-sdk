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
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksImagesIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        operation == other.operation &&
        image == other.image;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= operation?.hashCode ?? 0;
    hashCode ^= image?.hashCode ?? 0;

    return hashCode;
  }

  static List<OperationLinksImagesIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <OperationLinksImagesIriTemplateMapping>[]
        : json
            .map((dynamic value) =>
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

  Map<String, dynamic> toJson() {
    return {
      if (operation != null) 'operation': operation,
      if (image != null) 'image': image,
    };
  }

  @override
  String toString() {
    return 'OperationLinksImagesIriTemplateMapping[operation=$operation, image=$image, ]';
  }
}
