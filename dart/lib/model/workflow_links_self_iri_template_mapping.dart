part of keyclic_sdk_api.api;

class WorkflowLinksSelfIriTemplateMapping {
  WorkflowLinksSelfIriTemplateMapping({
    this.workflow,
  });

  factory WorkflowLinksSelfIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return WorkflowLinksSelfIriTemplateMapping(
      workflow: json['workflow'],
    );
  }

  String workflow;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is WorkflowLinksSelfIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        workflow == other.workflow;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= workflow?.hashCode ?? 0;

    return hashCode;
  }

  static List<WorkflowLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <WorkflowLinksSelfIriTemplateMapping>[]
        : json
            .map((dynamic value) =>
                WorkflowLinksSelfIriTemplateMapping.fromJson(value))
            .toList();
  }

  static Map<String, WorkflowLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, WorkflowLinksSelfIriTemplateMapping>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = WorkflowLinksSelfIriTemplateMapping.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (workflow != null) 'workflow': workflow,
    };
  }

  @override
  String toString() {
    return 'WorkflowLinksSelfIriTemplateMapping[workflow=$workflow, ]';
  }
}
