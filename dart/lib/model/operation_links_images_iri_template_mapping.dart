part of keyclic_sdk_api.api;

class OperationLinksImagesIriTemplateMapping {
  OperationLinksImagesIriTemplateMapping({
    this.operation,
    this.image,
  });

  factory OperationLinksImagesIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationLinksImagesIriTemplateMapping(
      operation: json['operation'],
      image: json['image'],
    );
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
    return json
            ?.map((dynamic value) =>
                OperationLinksImagesIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <OperationLinksImagesIriTemplateMapping>[];
  }

  static Map<String, OperationLinksImagesIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, OperationLinksImagesIriTemplateMapping>(
            (String key, dynamic value) {
          return MapEntry(
              key, OperationLinksImagesIriTemplateMapping.fromJson(value));
        }) ??
        <String, OperationLinksImagesIriTemplateMapping>{};
  }

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
}
