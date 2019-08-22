part of keyclic_sdk_api.api;

class Report {
  Report({
    this.embedded,
    this.links,
    this.createdAt,
    this.description,
    this.id,
    this.identificationNumber,
    this.priority,
    this.reference,
    this.state,
    this.tags,
    this.type,
    this.updatedAt,
  });

  Report.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    embedded = ReportEmbedded.fromJson(json['_embedded']);
    links = ReportLinks.fromJson(json['_links']);
    createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }
    description = json['description'];
    id = json['id'];
    identificationNumber = json['identificationNumber'];
    priority = json['priority'];
    reference = json['reference'];
    state = (json['state'] as List)?.map((item) => item as String)?.toList();
    tags = (json['tags'] as List)?.map((item) => item as String)?.toList();
    type = json['type'];
    updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${updatedAt.toIso8601String()}Z');
    }
  }

  ReportEmbedded embedded;

  ReportLinks links;

  DateTime createdAt;

  String description;

  String id;

  String identificationNumber;

  int priority;

  String reference;

  List<String> state;

  List<String> tags;

  String type;

  DateTime updatedAt;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Report &&
        runtimeType == other.runtimeType &&
        embedded == other.embedded &&
        links == other.links &&
        createdAt == other.createdAt &&
        description == other.description &&
        id == other.id &&
        identificationNumber == other.identificationNumber &&
        priority == other.priority &&
        reference == other.reference &&
        DeepCollectionEquality.unordered().equals(state, other.state) &&
        DeepCollectionEquality.unordered().equals(tags, other.tags) &&
        type == other.type &&
        updatedAt == other.updatedAt;
  }

  /// By default hashCode return reference
  @override
  int get hashCode =>
      0 ^
      embedded.hashCode ^
      links.hashCode ^
      createdAt.hashCode ^
      description.hashCode ^
      id.hashCode ^
      identificationNumber.hashCode ^
      priority.hashCode ^
      reference.hashCode ^
      state.map((dynamic element) => element.hashCode).fold(0,
          (dynamic value, dynamic cursor) => value.hashCode ^ cursor.hashCode) ^
      tags.map((dynamic element) => element.hashCode).fold(0,
          (dynamic value, dynamic cursor) => value.hashCode ^ cursor.hashCode) ^
      type.hashCode ^
      updatedAt.hashCode;

  static List<Report> listFromJson(List<dynamic> json) {
    return json == null
        ? <Report>[]
        : json.map((value) => Report.fromJson(value)).toList();
  }

  static Map<String, Report> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Report>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Report.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'createdAt': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'description': description,
      'id': id,
      'identificationNumber': identificationNumber,
      'priority': priority,
      'reference': reference,
      'state': state,
      'tags': tags,
      'type': type,
      'updatedAt': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'Report[embedded=$embedded, links=$links, createdAt=$createdAt, description=$description, id=$id, identificationNumber=$identificationNumber, priority=$priority, reference=$reference, state=$state, tags=$tags, type=$type, updatedAt=$updatedAt, ]';
  }
}
