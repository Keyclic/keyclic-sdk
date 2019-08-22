part of keyclic_sdk_api.api;

class ReportPatch {
  ReportPatch({
    this.category,
    this.description,
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
    identificationNumber = json['identificationNumber'];
    priority = json['priority'];
    tags = (json['tags'] as List)?.map((item) => item as String)?.toList();
  }

  String category;

  String description;

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
        identificationNumber == other.identificationNumber &&
        priority == other.priority &&
        DeepCollectionEquality.unordered().equals(tags, other.tags);
  }

  /// By default hashCode return reference
  @override
  int get hashCode =>
      0 ^
      category.hashCode ^
      description.hashCode ^
      identificationNumber.hashCode ^
      priority.hashCode ^
      tags.map((dynamic element) => element.hashCode).fold(0,
          (dynamic value, dynamic cursor) => value.hashCode ^ cursor.hashCode);

  static List<ReportPatch> listFromJson(List<dynamic> json) {
    return json == null
        ? <ReportPatch>[]
        : json.map((value) => ReportPatch.fromJson(value)).toList();
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
}
