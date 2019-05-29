part of keyclic_sdk_api.api;

class Report {
  Report();

  Report.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    description = json['description'];
    priority = json['priority'];
    reference = json['reference'];
    tags = (json['tags'] as List)?.map((item) => item as String)?.toList();
    id = json['id'];
    identificationNumber = json['identificationNumber'];
    state = (json['state'] as List)?.map((item) => item as String)?.toList();
    createdAt = json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }
    updatedAt = json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${updatedAt.toIso8601String()}Z');
    }
    type = json['type'];
    links = ReportLinks.fromJson(json['_links']);
    embedded = ReportEmbedded.fromJson(json['_embedded']);
  }

  String description;

  int priority;

  String reference;

  List<String> tags;

  String id;

  String identificationNumber;

  List<String> state;

  DateTime createdAt;

  DateTime updatedAt;

  String type;

  ReportLinks links;

  ReportEmbedded embedded;

  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'priority': priority,
      'reference': reference,
      'tags': tags,
      'id': id,
      'identificationNumber': identificationNumber,
      'state': state,
      'createdAt': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updatedAt': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'type': type,
      '_links': links,
      '_embedded': embedded,
    };
  }

  @override
  String toString() {
    return 'Report[description=$description, priority=$priority, reference=$reference, tags=$tags, id=$id, identificationNumber=$identificationNumber, state=$state, createdAt=$createdAt, updatedAt=$updatedAt, type=$type, links=$links, embedded=$embedded, ]';
  }

  static List<Report> listFromJson(List<dynamic> json) {
    return json == null ? List<Report>() : json.map((value) => Report.fromJson(value)).toList();
  }

  static Map<String, Report> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Report>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Report.fromJson(value));
    }
    return map;
  }
}
