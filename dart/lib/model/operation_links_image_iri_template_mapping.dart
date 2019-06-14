part of keyclic_sdk_api.api;

class OperationLinksImageIriTemplateMapping {
  OperationLinksImageIriTemplateMapping({
    this.image,
    this.operation,
  });

  OperationLinksImageIriTemplateMapping.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    image = json['image'];
    operation = json['operation'];
  }

  String image;

  String operation;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksImageIriTemplateMapping &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'image': image,
      'operation': operation,
    };
  }

  @override
  String toString() {
    return 'OperationLinksImageIriTemplateMapping[image=$image, operation=$operation, ]';
  }

  static List<OperationLinksImageIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<OperationLinksImageIriTemplateMapping>()
        : json
            .map((value) =>
                OperationLinksImageIriTemplateMapping.fromJson(value))
            .toList();
  }

  static Map<String, OperationLinksImageIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OperationLinksImageIriTemplateMapping>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OperationLinksImageIriTemplateMapping.fromJson(value));
    }
    return map;
  }
}