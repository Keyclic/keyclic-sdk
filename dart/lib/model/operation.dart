part of keyclic_sdk_api.api;

class Operation {
  Operation();

  Operation.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    description = json['description'];
    name = json['name'];
    scheduledAt = json['scheduledAt'] == null ? null : DateTime.parse(json['scheduledAt']);
    if (scheduledAt is DateTime && scheduledAt.isUtc == false) {
      scheduledAt = DateTime.parse('${scheduledAt.toIso8601String()}Z');
    }
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
    links = OperationLinks.fromJson(json['_links']);
    embedded = FeedbackEmbedded.fromJson(json['_embedded']);
  }

  String description;

  String name;

  DateTime scheduledAt;

  String id;

  String identificationNumber;

  List<String> state;

  DateTime createdAt;

  DateTime updatedAt;

  String type;

  OperationLinks links;

  FeedbackEmbedded embedded;

  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'name': name,
      'scheduledAt': scheduledAt == null ? '' : scheduledAt.toUtc().toIso8601String(),
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
    return 'Operation[description=$description, name=$name, scheduledAt=$scheduledAt, id=$id, identificationNumber=$identificationNumber, state=$state, createdAt=$createdAt, updatedAt=$updatedAt, type=$type, links=$links, embedded=$embedded, ]';
  }

  static List<Operation> listFromJson(List<dynamic> json) {
    return json == null ? List<Operation>() : json.map((value) => Operation.fromJson(value)).toList();
  }

  static Map<String, Operation> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Operation>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Operation.fromJson(value));
    }
    return map;
  }
}
