part of keyclic_sdk_api.api;

class ConfigurationAssignmentType {
  ConfigurationAssignmentType({
    this.id,
    this.type,
    this.workflow,
  });

  factory ConfigurationAssignmentType.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ConfigurationAssignmentType(
      id: json['id'],
      type: json['type'],
      workflow: AssignmentTypeWorkflow.fromJson(json['workflow']),
    );
  }

  String id;

  String type;

  AssignmentTypeWorkflow workflow;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ConfigurationAssignmentType &&
        runtimeType == other.runtimeType &&
        id == other.id &&
        type == other.type &&
        workflow == other.workflow;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;
    hashCode ^= workflow?.hashCode ?? 0;

    return hashCode;
  }

  static List<ConfigurationAssignmentType> listFromJson(List<dynamic> json) {
    return json
            ?.map(
                (dynamic value) => ConfigurationAssignmentType.fromJson(value))
            ?.toList() ??
        <ConfigurationAssignmentType>[];
  }

  static Map<String, ConfigurationAssignmentType> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, ConfigurationAssignmentType>(
            (String key, dynamic value) {
          return MapEntry(key, ConfigurationAssignmentType.fromJson(value));
        }) ??
        <String, ConfigurationAssignmentType>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (type != null) 'type': type,
      if (workflow != null) 'workflow': workflow.toJson(),
    };
  }

  @override
  String toString() {
    return 'ConfigurationAssignmentType[id=$id, type=$type, workflow=$workflow, ]';
  }
}
