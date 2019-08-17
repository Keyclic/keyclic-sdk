part of keyclic_sdk_api.api;

class Operation {
  Operation({
    this.embedded,
    this.links,
    this.createdAt,
    this.description,
    this.id,
    this.identificationNumber,
    this.name,
    this.scheduledAt,
    this.signature,
    this.state,
    this.type,
    this.updatedAt,
  });

  Operation.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    embedded = FeedbackEmbedded.fromJson(json['_embedded']);
    links = OperationLinks.fromJson(json['_links']);
    createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }
    description = json['description'];
    id = json['id'];
    identificationNumber = json['identificationNumber'];
    name = json['name'];
    scheduledAt = json['scheduledAt'] == null
        ? null
        : DateTime.parse(json['scheduledAt']);
    if (scheduledAt is DateTime && scheduledAt.isUtc == false) {
      scheduledAt = DateTime.parse('${scheduledAt.toIso8601String()}Z');
    }
    signature = OperationSignature.fromJson(json['signature']);
    state = (json['state'] as List)?.map((item) => item as String)?.toList();
    type = json['type'];
    updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${updatedAt.toIso8601String()}Z');
    }
  }

  FeedbackEmbedded embedded;

  OperationLinks links;

  DateTime createdAt;

  String description;

  String id;

  String identificationNumber;

  String name;

  DateTime scheduledAt;

  OperationSignature signature;

  List<String> state;

  String type;

  DateTime updatedAt;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is Operation &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(state, other.state);
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'createdAt': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'description': description,
      'id': id,
      'identificationNumber': identificationNumber,
      'name': name,
      'scheduledAt':
          scheduledAt == null ? '' : scheduledAt.toUtc().toIso8601String(),
      'signature': signature,
      'state': state,
      'type': type,
      'updatedAt': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'Operation[embedded=$embedded, links=$links, createdAt=$createdAt, description=$description, id=$id, identificationNumber=$identificationNumber, name=$name, scheduledAt=$scheduledAt, signature=$signature, state=$state, type=$type, updatedAt=$updatedAt, ]';
  }

  static List<Operation> listFromJson(List<dynamic> json) {
    return json == null
        ? List<Operation>()
        : json.map((value) => Operation.fromJson(value)).toList();
  }

  static Map<String, Operation> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Operation>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Operation.fromJson(value));
    }
    return map;
  }
}
