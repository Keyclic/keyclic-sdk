part of keyclic_sdk_api.api;

class PlanData {
  PlanData({
    this.content,
    this.name,
    this.place,
  });

  factory PlanData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlanData(
      content: json['content'],
      name: json['name'],
      place: json['place'],
    );
  }

  String content;

  String name;

  String place;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlanData &&
        runtimeType == other.runtimeType &&
        content == other.content &&
        name == other.name &&
        place == other.place;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= content?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= place?.hashCode ?? 0;

    return hashCode;
  }

  static List<PlanData> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => PlanData.fromJson(value))?.toList() ??
        <PlanData>[];
  }

  static Map<String, PlanData> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, PlanData>((String key, dynamic value) {
          return MapEntry(key, PlanData.fromJson(value));
        }) ??
        <String, PlanData>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (content != null) 'content': content,
      if (name != null) 'name': name,
      if (place != null) 'place': place,
    };
  }

  @override
  String toString() {
    return 'PlanData[content=$content, name=$name, place=$place, ]';
  }
}
