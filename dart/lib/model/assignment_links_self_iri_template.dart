part of keyclic_sdk_api.api;

class AssignmentLinksSelfIriTemplate {
  AssignmentLinksSelfIriTemplate({
    this.mapping,
  });

  factory AssignmentLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return AssignmentLinksSelfIriTemplate(
      mapping: AssignmentLinksSelfIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  AssignmentLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentLinksSelfIriTemplate &&
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

  static List<AssignmentLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                AssignmentLinksSelfIriTemplate.fromJson(value))
            ?.toList() ??
        <AssignmentLinksSelfIriTemplate>[];
  }

  static Map<String, AssignmentLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, AssignmentLinksSelfIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(key, AssignmentLinksSelfIriTemplate.fromJson(value));
        }) ??
        <String, AssignmentLinksSelfIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'AssignmentLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
