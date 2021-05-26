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
    this.phase,
    this.priority,
    this.reference,
    this.tags,
    this.type,
    this.updatedAt,
  });

  factory Report.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    DateTime createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }

    DateTime dueAt =
        json['dueAt'] == null ? null : DateTime.parse(json['dueAt']);
    if (dueAt is DateTime && dueAt.isUtc == false) {
      dueAt = DateTime.parse('${dueAt.toIso8601String()}Z');
    }

    DateTime updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${updatedAt.toIso8601String()}Z');
    }

    return Report(
      embedded: ReportEmbedded.fromJson(json['_embedded']),
      links: ReportLinks.fromJson(json['_links']),
      createdAt: createdAt,
      description: json['description'],
      dueAt: dueAt,
      id: json['id'],
      identificationNumber: json['identificationNumber'],
      phase: WorkflowState.fromJson(json['phase']),
      priority: ReportPriority.fromJson(json['priority']),
      reference: json['reference'],
      tags: json['tags'] is List ? List<String>.from(json['tags']) : null,
      type: json['type'],
      updatedAt: updatedAt,
    );
  }

  ReportEmbedded embedded;

  ReportLinks links;

  DateTime createdAt;

  String description;

  DateTime dueAt;

  String id;

  String identificationNumber;

  WorkflowState phase;

  ReportPriority priority;

  String reference;

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
        phase == other.phase &&
        priority == other.priority &&
        reference == other.reference &&
        DeepCollectionEquality.unordered().equals(tags, other.tags) &&
        type == other.type &&
        updatedAt == other.updatedAt;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

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
    hashCode ^= phase?.hashCode ?? 0;
    hashCode ^= priority?.hashCode ?? 0;
    hashCode ^= reference?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;
    hashCode ^= updatedAt?.hashCode ?? 0;

    return hashCode;
  }

  static List<Report> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => Report.fromJson(value))?.toList() ??
        <Report>[];
  }

  static Map<String, Report> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, Report>((String key, dynamic value) {
          return MapEntry(key, Report.fromJson(value));
        }) ??
        <String, Report>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (embedded != null) '_embedded': embedded.toJson(),
      if (links != null) '_links': links.toJson(),
      if (createdAt != null) 'createdAt': createdAt.toUtc().toIso8601String(),
      if (description != null) 'description': description,
      if (dueAt != null) 'dueAt': dueAt.toUtc().toIso8601String(),
      if (id != null) 'id': id,
      if (identificationNumber != null)
        'identificationNumber': identificationNumber,
      if (phase != null) 'phase': phase.toJson(),
      if (priority != null) 'priority': priority.toJson(),
      if (reference != null) 'reference': reference,
      if (tags != null) 'tags': tags,
      if (type != null) 'type': type,
      if (updatedAt != null) 'updatedAt': updatedAt.toUtc().toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'Report[embedded=$embedded, links=$links, createdAt=$createdAt, description=$description, dueAt=$dueAt, id=$id, identificationNumber=$identificationNumber, phase=$phase, priority=$priority, reference=$reference, tags=$tags, type=$type, updatedAt=$updatedAt, ]';
  }
}
