part of keyclic_sdk_api.api;

class ConfigurationReportType {
  ConfigurationReportType({
    this.id,
    this.type,
    this.workflow,
  });

  factory ConfigurationReportType.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ConfigurationReportType(
      id: json['id'],
      type: json['type'],
      workflow: ReportTypeWorkflow.fromJson(json['workflow']),
    );
  }

  String id;

  String type;

  ReportTypeWorkflow workflow;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ConfigurationReportType &&
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

  static List<ConfigurationReportType> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ConfigurationReportType.fromJson(value))
            ?.toList() ??
        <ConfigurationReportType>[];
  }

  static Map<String, ConfigurationReportType> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, ConfigurationReportType>((String key, dynamic value) {
          return MapEntry(key, ConfigurationReportType.fromJson(value));
        }) ??
        <String, ConfigurationReportType>{};
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
    return 'ConfigurationReportType[id=$id, type=$type, workflow=$workflow, ]';
  }
}
