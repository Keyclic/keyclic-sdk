part of keyclic_sdk_api.api;

class ConfigurationOperationType {
  ConfigurationOperationType({
    this.id,
    this.type,
    this.workflow,
  });

  factory ConfigurationOperationType.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ConfigurationOperationType(
      id: json['id'],
      type: json['type'],
      workflow: OperationTypeWorkflow.fromJson(json['workflow']),
    );
  }

  String id;

  String type;

  OperationTypeWorkflow workflow;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ConfigurationOperationType &&
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

  static List<ConfigurationOperationType> listFromJson(List<dynamic> json) {
    return json == null
        ? <ConfigurationOperationType>[]
        : json
            .map((dynamic value) => ConfigurationOperationType.fromJson(value))
            .toList();
  }

  static Map<String, ConfigurationOperationType> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ConfigurationOperationType>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ConfigurationOperationType.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (type != null) 'type': type,
      if (workflow != null) 'workflow': workflow,
    };
  }

  @override
  String toString() {
    return 'ConfigurationOperationType[id=$id, type=$type, workflow=$workflow, ]';
  }
}
