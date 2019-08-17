part of keyclic_sdk_api.api;

class ReportEmbeddedTargetGroups {
  ReportEmbeddedTargetGroups({
    this.id,
    this.name,
    this.description,
  });

  ReportEmbeddedTargetGroups.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    id = json['id'];
    name = json['name'];
    description = json['description'];
  }

  String id;

  String name;

  String description;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is ReportEmbeddedTargetGroups &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<ReportEmbeddedTargetGroups> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ReportEmbeddedTargetGroups>()
        : json
            .map((value) => ReportEmbeddedTargetGroups.fromJson(value))
            .toList();
  }

  static Map<String, ReportEmbeddedTargetGroups> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ReportEmbeddedTargetGroups>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReportEmbeddedTargetGroups.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
    };
  }

  @override
  String toString() {
    return 'ReportEmbeddedTargetGroups[id=$id, name=$name, description=$description, ]';
  }
}
