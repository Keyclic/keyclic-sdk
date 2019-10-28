part of keyclic_sdk_api.api;

class Report {
  Report({
    this.embedded,
    this.links,
    this.createdAt,
    this.description,
    this.dueAt,
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
    dueAt = json['dueAt'] == null ? null : DateTime.parse(json['dueAt']);
    if (dueAt is DateTime && dueAt.isUtc == false) {
      dueAt = DateTime.parse('${dueAt.toIso8601String()}Z');
    }
    id = json['id'];
    identificationNumber = json['identificationNumber'];
    priority = json['priority'];
    reference = json['reference'];
    if (json['state'] is List) {
      state = List<String>.from(json['state']);
    }
    if (json['tags'] is List) {
      tags = List<String>.from(json['tags']);
    }
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

  DateTime dueAt;

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
        dueAt == other.dueAt &&
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
  int get hashCode {
    int hashCode = 0;

    if (state is List && state.isNotEmpty) {
      hashCode ^= state
          .map((String element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }
    if (tags is List && tags.isNotEmpty) {
      hashCode ^= tags
          .map((String element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= embedded?.hashCode ?? 0;
    hashCode ^= links?.hashCode ?? 0;
    hashCode ^= createdAt?.hashCode ?? 0;
    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= dueAt?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= identificationNumber?.hashCode ?? 0;
    hashCode ^= priority?.hashCode ?? 0;
    hashCode ^= reference?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;
    hashCode ^= updatedAt?.hashCode ?? 0;

    return hashCode;
  }

  static List<Report> listFromJson(List<dynamic> json) {
    return json == null
        ? <Report>[]
        : json.map((dynamic value) => Report.fromJson(value)).toList();
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
      if (embedded != null) '_embedded': embedded,
      if (links != null) '_links': links,
      if (createdAt != null) 'createdAt': createdAt.toUtc().toIso8601String(),
      if (description != null) 'description': description,
      if (dueAt != null) 'dueAt': dueAt.toUtc().toIso8601String(),
      if (id != null) 'id': id,
      if (identificationNumber != null)
        'identificationNumber': identificationNumber,
      if (priority != null) 'priority': priority,
      if (reference != null) 'reference': reference,
      if (state != null) 'state': state,
      if (tags != null) 'tags': tags,
      if (type != null) 'type': type,
      if (updatedAt != null) 'updatedAt': updatedAt.toUtc().toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'Report[embedded=$embedded, links=$links, createdAt=$createdAt, description=$description, dueAt=$dueAt, id=$id, identificationNumber=$identificationNumber, priority=$priority, reference=$reference, state=$state, tags=$tags, type=$type, updatedAt=$updatedAt, ]';
  }
}
