part of keyclic_sdk_api.api;

class OperationData {
  OperationData({
    this.description,
    this.name,
    this.identificationNumber,
    this.report,
    this.organization,
    this.scheduledAt,
  });

  OperationData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    description = json['description'];
    name = json['name'];
    identificationNumber = json['identificationNumber'];
    report = json['report'];
    organization = json['organization'];
    scheduledAt = json['scheduledAt'];
  }

  String description;

  String name;

  String identificationNumber;

  String report;

  String organization;

  String scheduledAt;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is OperationData &&
        runtimeType == other.runtimeType &&
        report == other.report;
  }

  @override
  int get hashCode => 0 ^ report.hashCode;

  static List<OperationData> listFromJson(List<dynamic> json) {
    return json == null
        ? List<OperationData>()
        : json.map((value) => OperationData.fromJson(value)).toList();
  }

  static Map<String, OperationData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, OperationData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OperationData.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'name': name,
      'identificationNumber': identificationNumber,
      'report': report,
      'organization': organization,
      'scheduledAt': scheduledAt,
    };
  }

  @override
  String toString() {
    return 'OperationData[description=$description, name=$name, identificationNumber=$identificationNumber, report=$report, organization=$organization, scheduledAt=$scheduledAt, ]';
  }
}
