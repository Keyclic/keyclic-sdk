part of keyclic_sdk_api.api;

class ExternalServiceData {
  ExternalServiceData({
    this.organization,
    this.name,
  });

  ExternalServiceData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    organization = json['organization'];
    name = json['name'];
  }

  String organization;

  String name;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is ExternalServiceData &&
        runtimeType == other.runtimeType &&
        organization == other.organization;
  }

  @override
  int get hashCode => 0 ^ organization.hashCode;

  Map<String, dynamic> toJson() {
    return {
      'organization': organization,
      'name': name,
    };
  }

  @override
  String toString() {
    return 'ExternalServiceData[organization=$organization, name=$name, ]';
  }

  static List<ExternalServiceData> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ExternalServiceData>()
        : json.map((value) => ExternalServiceData.fromJson(value)).toList();
  }

  static Map<String, ExternalServiceData> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ExternalServiceData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ExternalServiceData.fromJson(value));
    }
    return map;
  }
}
