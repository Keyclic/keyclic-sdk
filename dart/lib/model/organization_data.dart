part of keyclic_sdk_api.api;

class OrganizationData {
  OrganizationData({
    this.name,
    this.businessActivity,
    this.logo,
  });

  OrganizationData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    name = json['name'];
    businessActivity = json['businessActivity'];
    logo = json['logo'];
  }

  String name;

  String businessActivity;

  String logo;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationData &&
        runtimeType == other.runtimeType &&
        name == other.name &&
        businessActivity == other.businessActivity;
  }

  @override
  int get hashCode => 0 ^ name.hashCode ^ businessActivity.hashCode;

  static List<OrganizationData> listFromJson(List<dynamic> json) {
    return json == null
        ? List<OrganizationData>()
        : json.map((value) => OrganizationData.fromJson(value)).toList();
  }

  static Map<String, OrganizationData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, OrganizationData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OrganizationData.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'businessActivity': businessActivity,
      'logo': logo,
    };
  }

  @override
  String toString() {
    return 'OrganizationData[name=$name, businessActivity=$businessActivity, logo=$logo, ]';
  }
}
