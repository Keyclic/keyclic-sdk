part of keyclic_sdk_api.api;

class OperationLinksImagesIriTemplate {
  OperationLinksImagesIriTemplate({
    this.mapping,
  });

  factory OperationLinksImagesIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationLinksImagesIriTemplate(
      mapping: OperationLinksImagesIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  OperationLinksImagesIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksImagesIriTemplate &&
        runtimeType == other.runtimeType &&
        mapping == other.mapping;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= mapping?.hashCode ?? 0;

    return hashCode;
  }

  static List<OperationLinksImagesIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <OperationLinksImagesIriTemplate>[]
        : json
            .map((dynamic value) =>
                OperationLinksImagesIriTemplate.fromJson(value))
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
      if (mapping != null) 'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'OperationLinksImagesIriTemplate[mapping=$mapping, ]';
  }
}
