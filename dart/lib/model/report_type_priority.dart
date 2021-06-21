// @dart=2.10
part of keyclic_sdk_api.api;

class ReportTypePriority {
  ReportTypePriority({
    this.color,
    this.id,
    this.name,
    this.position,
    this.type,
  });

  factory ReportTypePriority.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReportTypePriority(
      color: json['color'],
      id: json['id'],
      name: json['name'],
      position: json['position'],
      type: json['type'],
    );
  }

  String color;

  String id;

  String name;

  int position;

  String type;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportTypePriority &&
        runtimeType == other.runtimeType &&
        color == other.color &&
        id == other.id &&
        name == other.name &&
        position == other.position &&
        type == other.type;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= color?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= position?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;

    return hashCode;
  }

  static List<ReportTypePriority> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ReportTypePriority.fromJson(value))
            ?.toList() ??
        <ReportTypePriority>[];
  }

  static Map<String, ReportTypePriority> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, ReportTypePriority>((String key, dynamic value) {
          return MapEntry(key, ReportTypePriority.fromJson(value));
        }) ??
        <String, ReportTypePriority>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (color != null) 'color': color,
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (position != null) 'position': position,
      if (type != null) 'type': type,
    };
  }

  @override
  String toString() {
    return 'ReportTypePriority[color=$color, id=$id, name=$name, position=$position, type=$type, ]';
  }
}
