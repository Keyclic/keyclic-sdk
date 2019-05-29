part of keyclic_sdk_api.api;

class ReportPatch {
  ReportPatch();

  ReportPatch.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    category = json['category'];
    description = json['description'];
    identificationNumber = json['identificationNumber'];
    priority = json['priority'];
    tags = json['tags'];
  }

  String category;

  String description;

  String identificationNumber;

  int priority;

  String tags;

  Map<String, dynamic> toJson() {
    return {
      'category': category,
      'description': description,
      'identificationNumber': identificationNumber,
      'priority': priority,
      'tags': tags,
    };
  }

  @override
  String toString() {
    return 'ReportPatch[category=$category, description=$description, identificationNumber=$identificationNumber, priority=$priority, tags=$tags, ]';
  }

  static List<ReportPatch> listFromJson(List<dynamic> json) {
    return json == null ? List<ReportPatch>() : json.map((value) => ReportPatch.fromJson(value)).toList();
  }

  static Map<String, ReportPatch> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReportPatch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReportPatch.fromJson(value));
    }
    return map;
  }
}
