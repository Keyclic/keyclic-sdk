part of keyclic_sdk_api.api;

class AssignmentLinksCreatedByIriTemplate {
  AssignmentLinksCreatedByIriTemplate({
    this.mapping,
  });

  factory AssignmentLinksCreatedByIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return AssignmentLinksCreatedByIriTemplate(
      mapping:
          AssignmentLinksCreatedByIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  AssignmentLinksCreatedByIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentLinksCreatedByIriTemplate &&
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

  static List<AssignmentLinksCreatedByIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                AssignmentLinksCreatedByIriTemplate.fromJson(value))
            ?.toList() ??
        <AssignmentLinksCreatedByIriTemplate>[];
  }

  static Map<String, AssignmentLinksCreatedByIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, AssignmentLinksCreatedByIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(
              key, AssignmentLinksCreatedByIriTemplate.fromJson(value));
        }) ??
        <String, AssignmentLinksCreatedByIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'AssignmentLinksCreatedByIriTemplate[mapping=$mapping, ]';
  }
}
