part of keyclic_sdk_api.api;

class OperationLinksImageIriTemplate {
  OperationLinksImageIriTemplate({
    this.mapping,
  });

  OperationLinksImageIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = OperationLinksImageIriTemplateMapping.fromJson(json['mapping']);
  }

  OperationLinksImageIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksImageIriTemplate &&
        runtimeType == other.runtimeType &&
        mapping == other.mapping;
  }

  /// By default hashCode return reference
  @override
  int get hashCode => 0 ^ mapping.hashCode;

  static List<OperationLinksImageIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? <OperationLinksImageIriTemplate>[]
        : json
            .map((value) => OperationLinksImageIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, OperationLinksImageIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OperationLinksImageIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OperationLinksImageIriTemplate.fromJson(value));
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
    return 'OperationLinksImageIriTemplate[mapping=$mapping, ]';
  }
}
