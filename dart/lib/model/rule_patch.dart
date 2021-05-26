part of keyclic_sdk_api.api;

class RulePatch {
  RulePatch({
    this.category,
    this.service,
  });

  factory RulePatch.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return RulePatch(
      category: json['category'],
      service: json['service'],
    );
  }

  String category;

  String service;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RulePatch &&
        runtimeType == other.runtimeType &&
        category == other.category &&
        service == other.service;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= category?.hashCode ?? 0;
    hashCode ^= service?.hashCode ?? 0;

    return hashCode;
  }

  static List<RulePatch> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => RulePatch.fromJson(value))?.toList() ??
        <RulePatch>[];
  }

  static Map<String, RulePatch> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, RulePatch>((String key, dynamic value) {
          return MapEntry(key, RulePatch.fromJson(value));
        }) ??
        <String, RulePatch>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (category != null) 'category': category,
      if (service != null) 'service': service,
    };
  }

  @override
  String toString() {
    return 'RulePatch[category=$category, service=$service, ]';
  }
}
