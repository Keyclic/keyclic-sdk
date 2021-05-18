part of keyclic_sdk_api.api;

class AssignmentLinksServiceIriTemplate {
  AssignmentLinksServiceIriTemplate({
    this.mapping,
  });

  factory AssignmentLinksServiceIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return AssignmentLinksServiceIriTemplate(
      mapping:
          AssignmentLinksServiceIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  AssignmentLinksServiceIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentLinksServiceIriTemplate &&
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

  static List<AssignmentLinksServiceIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                AssignmentLinksServiceIriTemplate.fromJson(value))
            ?.toList() ??
        <AssignmentLinksServiceIriTemplate>[];
  }

  static Map<String, AssignmentLinksServiceIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, AssignmentLinksServiceIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(
              key, AssignmentLinksServiceIriTemplate.fromJson(value));
        }) ??
        <String, AssignmentLinksServiceIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping?.toJson(),
    };
  }

  @override
  String toString() {
    return 'AssignmentLinksServiceIriTemplate[mapping=$mapping, ]';
  }
}
