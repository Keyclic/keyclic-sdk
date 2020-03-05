part of keyclic_sdk_api.api;

class CheckpointLinksOrganizationIriTemplate {
  CheckpointLinksOrganizationIriTemplate({
    this.mapping,
  });

  factory CheckpointLinksOrganizationIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return CheckpointLinksOrganizationIriTemplate(
      mapping:
          CategoryLinksOrganizationIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  CategoryLinksOrganizationIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CheckpointLinksOrganizationIriTemplate &&
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

  static List<CheckpointLinksOrganizationIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                CheckpointLinksOrganizationIriTemplate.fromJson(value))
            ?.toList() ??
        <CheckpointLinksOrganizationIriTemplate>[];
  }

  static Map<String, CheckpointLinksOrganizationIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(
              key, CheckpointLinksOrganizationIriTemplate.fromJson(value));
        }) ??
        <String, CheckpointLinksOrganizationIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'CheckpointLinksOrganizationIriTemplate[mapping=$mapping, ]';
  }
}
