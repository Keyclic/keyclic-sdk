part of keyclic_sdk_api.api;

class OperationLinksImagesIriTemplate {
  OperationLinksImagesIriTemplate({
    this.mapping,
  });

  OperationLinksImagesIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = OperationLinksImagesIriTemplateMapping.fromJson(json['mapping']);
  }

  OperationLinksImagesIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksImagesIriTemplate &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<OperationLinksImagesIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<OperationLinksImagesIriTemplate>()
        : json
            .map((value) => OperationLinksImagesIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, OperationLinksImagesIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OperationLinksImagesIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OperationLinksImagesIriTemplate.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'OperationLinksImagesIriTemplate[mapping=$mapping, ]';
  }
}
