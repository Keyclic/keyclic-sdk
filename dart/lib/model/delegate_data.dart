part of keyclic_sdk_api.api;

class DelegateData {
  DelegateData({
    this.description,
    this.organization,
    this.report,
    this.service,
  });

  DelegateData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    description = json['description'];
    organization = json['organization'];
    report = json['report'];
    service = json['service'];
  }

  String description;

  String organization;

  String report;

  String service;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is DelegateData &&
        runtimeType == other.runtimeType &&
        report == other.report;
  }

  @override
  int get hashCode => 0 ^ report.hashCode;

  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'organization': organization,
      'report': report,
      'service': service,
    };
  }

  @override
  String toString() {
    return 'DelegateData[description=$description, organization=$organization, report=$report, service=$service, ]';
  }

  static List<DelegateData> listFromJson(List<dynamic> json) {
    return json == null
        ? List<DelegateData>()
        : json.map((value) => DelegateData.fromJson(value)).toList();
  }

  static Map<String, DelegateData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DelegateData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DelegateData.fromJson(value));
    }
    return map;
  }
}
