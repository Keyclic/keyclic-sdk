part of keyclic_sdk_api.api;

class CheckpointLinksOrganizationIriTemplate {
  CheckpointLinksOrganizationIriTemplate({
    this.mapping,
  });

  CheckpointLinksOrganizationIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping =
        CategoryLinksOrganizationIriTemplateMapping.fromJson(json['mapping']);
  }

  CategoryLinksOrganizationIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is CheckpointLinksOrganizationIriTemplate &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<CheckpointLinksOrganizationIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<CheckpointLinksOrganizationIriTemplate>()
        : json
            .map((value) =>
                CheckpointLinksOrganizationIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, CheckpointLinksOrganizationIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, CheckpointLinksOrganizationIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = CheckpointLinksOrganizationIriTemplate.fromJson(value));
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
    return 'CheckpointLinksOrganizationIriTemplate[mapping=$mapping, ]';
  }
}
