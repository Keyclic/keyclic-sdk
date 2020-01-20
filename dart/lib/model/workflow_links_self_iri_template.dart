part of keyclic_sdk_api.api;

class WorkflowLinksSelfIriTemplate {
  WorkflowLinksSelfIriTemplate({
    this.mapping,
  });

  factory WorkflowLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return WorkflowLinksSelfIriTemplate(
      mapping: WorkflowLinksSelfIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  WorkflowLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is WorkflowLinksSelfIriTemplate &&
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

  static List<WorkflowLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? <WorkflowLinksSelfIriTemplate>[]
        : json
            .map(
                (dynamic value) => WorkflowLinksSelfIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, WorkflowLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, WorkflowLinksSelfIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = WorkflowLinksSelfIriTemplate.fromJson(value));
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
    return 'WorkflowLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
