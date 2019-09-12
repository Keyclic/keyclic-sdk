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
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportEmbeddedTargetGroups &&
        runtimeType == other.runtimeType &&
        id == other.id &&
        name == other.name &&
        description == other.description;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= (id?.hashCode ?? 0);
    hashCode ^= (name?.hashCode ?? 0);
    hashCode ^= (description?.hashCode ?? 0);

    return hashCode;
  }

  static List<ReportEmbeddedTargetGroups> listFromJson(List<dynamic> json) {
    return json == null
        ? <ReportEmbeddedTargetGroups>[]
        : json
            .map((dynamic value) => ReportEmbeddedTargetGroups.fromJson(value))
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
