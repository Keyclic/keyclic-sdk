// @dart=2.10
part of keyclic_sdk_api.api;

class OperationLinksImageIriTemplateMapping {
  OperationLinksImageIriTemplateMapping({
    this.image,
    this.operation,
  });

  factory OperationLinksImageIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationLinksImageIriTemplateMapping(
      image: json['image'],
      operation: json['operation'],
    );
  }

  String image;

  String operation;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksImageIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        image == other.image &&
        operation == other.operation;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= image?.hashCode ?? 0;
    hashCode ^= operation?.hashCode ?? 0;

    return hashCode;
  }

  static List<OperationLinksImageIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                OperationLinksImageIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <OperationLinksImageIriTemplateMapping>[];
  }

  static Map<String, OperationLinksImageIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, OperationLinksImageIriTemplateMapping>(
            (String key, dynamic value) {
          return MapEntry(
              key, OperationLinksImageIriTemplateMapping.fromJson(value));
        }) ??
        <String, OperationLinksImageIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (image != null) 'image': image,
      if (operation != null) 'operation': operation,
    };
  }

  @override
  String toString() {
    return 'OperationLinksImageIriTemplateMapping[image=$image, operation=$operation, ]';
  }
}
