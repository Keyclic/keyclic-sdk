part of keyclic_sdk_api.api;

class OperationLinksSelfIriTemplate {
  OperationLinksSelfIriTemplate({
    this.mapping,
  });

  factory OperationLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationLinksSelfIriTemplate(
      mapping: OperationLinksSelfIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  OperationLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksSelfIriTemplate &&
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

  static List<OperationLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? <OperationLinksSelfIriTemplate>[]
        : json
            .map((dynamic value) =>
                OperationLinksSelfIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, OperationLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OperationLinksSelfIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OperationLinksSelfIriTemplate.fromJson(value));
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
    return 'OperationLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
