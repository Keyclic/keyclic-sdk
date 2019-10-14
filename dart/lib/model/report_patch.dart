part of keyclic_sdk_api.api;

class ReportPatch {
  ReportPatch({
    this.category,
    this.description,
    this.dueDate,
    this.identificationNumber,
    this.priority,
    this.tags,
  });

  ReportPatch.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    category = json['category'];
    description = json['description'];
    dueDate = json['dueDate'] == null ? null : DateTime.parse(json['dueDate']);
    if (dueDate is DateTime && dueDate.isUtc == false) {
      dueDate = DateTime.parse('${dueDate.toIso8601String()}Z');
    }
    identificationNumber = json['identificationNumber'];
    priority = json['priority'];
    if (json['tags'] is List) {
      tags = List<String>.from(json['tags']);
    }
  }

  String category;

  String description;

  DateTime dueDate;

  String identificationNumber;

  int priority;

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
        dueDate == other.dueDate &&
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
    hashCode ^= dueDate?.hashCode ?? 0;
    hashCode ^= identificationNumber?.hashCode ?? 0;
    hashCode ^= priority?.hashCode ?? 0;

    return hashCode;
  }

  static List<ReportPatch> listFromJson(List<dynamic> json) {
    return json == null
        ? <ReportPatch>[]
        : json.map((dynamic value) => ReportPatch.fromJson(value)).toList();
  }

  static Map<String, ReportPatch> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReportPatch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReportPatch.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (category != null) 'category': category,
      if (description != null) 'description': description,
      if (dueDate != null) 'dueDate': dueDate.toUtc().toIso8601String(),
      if (identificationNumber != null)
        'identificationNumber': identificationNumber,
      if (priority != null) 'priority': priority,
      if (tags != null) 'tags': tags,
    };
  }

  @override
  String toString() {
    return 'ReportPatch[category=$category, description=$description, dueDate=$dueDate, identificationNumber=$identificationNumber, priority=$priority, tags=$tags, ]';
  }
}
