part of keyclic_sdk_api.api;

class ReportPatchCategory {
  ReportPatchCategory({
    this.type,
    this.id,
    this.color,
    this.icon,
    this.name,
    this.identificationNumber,
  });

  ReportPatchCategory.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    type = json['type'];
    id = json['id'];
    color = json['color'];
    icon = json['icon'];
    name = json['name'];
    identificationNumber = json['identificationNumber'];
  }

  String type;

  String id;

  String color;

  String icon;

  String name;

  String identificationNumber;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is ReportPatchCategory && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'id': id,
      'color': color,
      'icon': icon,
      'name': name,
      'identificationNumber': identificationNumber,
    };
  }

  @override
  String toString() {
    return 'ReportPatchCategory[type=$type, id=$id, color=$color, icon=$icon, name=$name, identificationNumber=$identificationNumber, ]';
  }

  static List<ReportPatchCategory> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ReportPatchCategory>()
        : json.map((value) => ReportPatchCategory.fromJson(value)).toList();
  }

  static Map<String, ReportPatchCategory> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ReportPatchCategory>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReportPatchCategory.fromJson(value));
    }
    return map;
  }
}
