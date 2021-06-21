// @dart=2.10
part of keyclic_sdk_api.api;

class PlanPatch {
  PlanPatch({
    this.name,
  });

  factory PlanPatch.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlanPatch(
      name: json['name'],
    );
  }

  String name;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlanPatch &&
        runtimeType == other.runtimeType &&
        name == other.name;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= name?.hashCode ?? 0;

    return hashCode;
  }

  static List<PlanPatch> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => PlanPatch.fromJson(value))?.toList() ??
        <PlanPatch>[];
  }

  static Map<String, PlanPatch> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, PlanPatch>((String key, dynamic value) {
          return MapEntry(key, PlanPatch.fromJson(value));
        }) ??
        <String, PlanPatch>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (name != null) 'name': name,
    };
  }

  @override
  String toString() {
    return 'PlanPatch[name=$name, ]';
  }
}
