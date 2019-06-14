part of keyclic_sdk_api.api;

class DelegateData {
  DelegateData({
    this.report,
    this.organization,
  });

  DelegateData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    report = json['report'];
    organization = json['organization'];
  }

  String report;

  String organization;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is DelegateData &&
        runtimeType == other.runtimeType &&
        report == other.report &&
        organization == other.organization;
  }

  @override
  int get hashCode => 0 ^ report.hashCode ^ organization.hashCode;

  Map<String, dynamic> toJson() {
    return {
      'report': report,
      'organization': organization,
    };
  }

  @override
  String toString() {
    return 'DelegateData[report=$report, organization=$organization, ]';
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
