part of keyclic_sdk_api.api;

class OperationLinksImageIriTemplate {
  OperationLinksImageIriTemplate({
    this.mapping,
  });

  factory OperationLinksImageIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationLinksImageIriTemplate(
      mapping: OperationLinksImageIriTemplateMapping.fromJson(json['mapping']),
    );
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
  int get hashCode {
    int hashCode = 0;

    hashCode ^= mapping?.hashCode ?? 0;

    return hashCode;
  }

  static List<OperationLinksImageIriTemplate> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                OperationLinksImageIriTemplate.fromJson(value))
            ?.toList() ??
        <OperationLinksImageIriTemplate>[];
  }

  static Map<String, OperationLinksImageIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, OperationLinksImageIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(key, OperationLinksImageIriTemplate.fromJson(value));
        }) ??
        <String, OperationLinksImageIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'OperationLinksImageIriTemplate[mapping=$mapping, ]';
  }
}
