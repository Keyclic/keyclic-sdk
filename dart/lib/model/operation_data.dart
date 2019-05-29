part of keyclic_sdk_api.api;

class OperationData {
  OperationData();

  OperationData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    description = json['description'];
    name = json['name'];
    identificationNumber = json['identificationNumber'];
    report = json['report'];
    scheduledAt = json['scheduledAt'];
  }

  String description;

  String name;

  String identificationNumber;

  String report;

  String scheduledAt;

  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'name': name,
      'identificationNumber': identificationNumber,
      'report': report,
      'scheduledAt': scheduledAt,
    };
  }

  @override
  String toString() {
    return 'OperationData[description=$description, name=$name, identificationNumber=$identificationNumber, report=$report, scheduledAt=$scheduledAt, ]';
  }

  static List<OperationData> listFromJson(List<dynamic> json) {
    return json == null ? List<OperationData>() : json.map((value) => OperationData.fromJson(value)).toList();
  }

  static Map<String, OperationData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, OperationData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = OperationData.fromJson(value));
    }
    return map;
  }
}
