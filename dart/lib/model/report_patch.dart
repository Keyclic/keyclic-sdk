part of keyclic_sdk_api.api;

class ReportPatch {
  ReportPatch({
    this.category,
    this.description,
    this.dueAt,
    this.identificationNumber,
    this.priority,
    this.tags,
  });

  factory ReportPatch.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    DateTime dueAt =
        json['dueAt'] == null ? null : DateTime.parse(json['dueAt']);
    if (dueAt is DateTime && dueAt.isUtc == false) {
      dueAt = DateTime.parse('${dueAt.toIso8601String()}Z');
    }

    return ReportPatch(
      category: json['category'],
      description: json['description'],
      dueAt: dueAt,
      identificationNumber: json['identificationNumber'],
      priority: json['priority'],
      tags: json['tags'] is List ? List<String>.from(json['tags']) : null,
    );
  }

  String category;

  String description;

  DateTime dueAt;

  String identificationNumber;

  String priority;

  List<String> tags;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportPatch &&
        runtimeType == other.runtimeType &&
        category == other.category &&
        description == other.description &&
        dueAt == other.dueAt &&
        identificationNumber == other.identificationNumber &&
        priority == other.priority &&
        DeepCollectionEquality.unordered().equals(tags, other.tags);
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

    hashCode ^= category?.hashCode ?? 0;
    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= dueAt?.hashCode ?? 0;
    hashCode ^= identificationNumber?.hashCode ?? 0;
    hashCode ^= priority?.hashCode ?? 0;

    return hashCode;
  }

  static List<ReportPatch> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ReportPatch.fromJson(value))
            ?.toList() ??
        <ReportPatch>[];
  }

  static Map<String, ReportPatch> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, ReportPatch>((String key, dynamic value) {
          return MapEntry(key, ReportPatch.fromJson(value));
        }) ??
        <String, ReportPatch>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'category': category,
      'description': description,
      'dueAt': dueAt?.toUtc()?.toIso8601String(),
      'identificationNumber': identificationNumber,
      'priority': priority,
      'tags': tags,
    };
  }

  @override
  String toString() {
    return 'ReportPatch[category=$category, description=$description, dueAt=$dueAt, identificationNumber=$identificationNumber, priority=$priority, tags=$tags, ]';
  }
}
