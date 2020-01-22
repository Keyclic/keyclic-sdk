part of keyclic_sdk_api.api;

class ReportCategory {
  ReportCategory({
    this.name,
    this.type,
    this.links,
  });

  factory ReportCategory.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReportCategory(
      name: json['name'],
      type: json['type'],
      links: CategoryLinks.fromJson(json['_links']),
    );
  }

  String name;

  String type;

  CategoryLinks links;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportCategory &&
        runtimeType == other.runtimeType &&
        name == other.name &&
        type == other.type &&
        links == other.links;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;
    hashCode ^= links?.hashCode ?? 0;

    return hashCode;
  }

  static List<ReportCategory> listFromJson(List<dynamic> json) {
    return json == null
        ? <ReportCategory>[]
        : json.map((dynamic value) => ReportCategory.fromJson(value)).toList();
  }

  static Map<String, ReportCategory> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReportCategory>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReportCategory.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (name != null) 'name': name,
      if (type != null) 'type': type,
      if (links != null) '_links': links,
    };
  }

  @override
  String toString() {
    return 'ReportCategory[name=$name, type=$type, links=$links, ]';
  }
}
