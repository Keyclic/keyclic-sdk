part of keyclic_sdk_api.api;

class DelegateData {
  DelegateData();

  DelegateData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    report = json['report'];
    organization = json['organization'];
  }

  String report;

  String organization;

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
