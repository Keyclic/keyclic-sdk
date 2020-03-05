part of keyclic_sdk_api.api;

class ReportEmbeddedTargetGroups {
  ReportEmbeddedTargetGroups({
    this.id,
    this.name,
    this.description,
  });

  factory ReportEmbeddedTargetGroups.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReportEmbeddedTargetGroups(
      id: json['id'],
      name: json['name'],
      description: json['description'],
    );
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

    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= description?.hashCode ?? 0;

    return hashCode;
  }

  static List<ReportEmbeddedTargetGroups> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ReportEmbeddedTargetGroups.fromJson(value))
            ?.toList() ??
        <ReportEmbeddedTargetGroups>[];
  }

  static Map<String, ReportEmbeddedTargetGroups> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, ReportEmbeddedTargetGroups.fromJson(value));
        }) ??
        <String, ReportEmbeddedTargetGroups>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
    };
  }

  @override
  String toString() {
    return 'ReportEmbeddedTargetGroups[id=$id, name=$name, description=$description, ]';
  }
}
