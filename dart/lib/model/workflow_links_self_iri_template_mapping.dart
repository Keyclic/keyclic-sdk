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
    return json
            ?.map((dynamic value) =>
                WorkflowLinksSelfIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <WorkflowLinksSelfIriTemplateMapping>[];
  }

  static Map<String, WorkflowLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(
              key, WorkflowLinksSelfIriTemplateMapping.fromJson(value));
        }) ??
        <String, WorkflowLinksSelfIriTemplateMapping>{};
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
