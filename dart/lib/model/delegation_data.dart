part of keyclic_sdk_api.api;

class DelegationData {
  DelegationData({
    this.description,
    this.report,
    this.service,
  });

  factory DelegationData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DelegationData(
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

    return other is DelegationData &&
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

  static List<DelegationData> listFromJson(List<dynamic> json) {
    return json == null
        ? <DelegationData>[]
        : json.map((dynamic value) => DelegationData.fromJson(value)).toList();
  }

  static Map<String, DelegationData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DelegationData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DelegationData.fromJson(value));
    }

    return map;
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
    return 'DelegationData[description=$description, report=$report, service=$service, ]';
  }
}
