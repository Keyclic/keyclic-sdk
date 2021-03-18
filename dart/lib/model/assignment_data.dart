part of keyclic_sdk_api.api;

class AssignmentData {
  AssignmentData({
    this.description,
    this.report,
    this.service,
  });

  factory AssignmentData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return AssignmentData(
      description: json['description'],
      report: json['report'],
      service: json['service'],
    );
  }

  String description;

  String report;

  String service;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentData &&
        runtimeType == other.runtimeType &&
        description == other.description &&
        report == other.report &&
        service == other.service;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= report?.hashCode ?? 0;
    hashCode ^= service?.hashCode ?? 0;

    return hashCode;
  }

  static List<AssignmentData> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => AssignmentData.fromJson(value))
            ?.toList() ??
        <AssignmentData>[];
  }

  static Map<String, AssignmentData> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, AssignmentData>((String key, dynamic value) {
          return MapEntry(key, AssignmentData.fromJson(value));
        }) ??
        <String, AssignmentData>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (description != null) 'description': description,
      if (report != null) 'report': report,
      if (service != null) 'service': service,
    };
  }

  @override
  String toString() {
    return 'AssignmentData[description=$description, report=$report, service=$service, ]';
  }
}
